/**
 * @file offb_node.cpp
 * @brief Offboard control example node, written with MAVROS version 0.19.x, PX4 Pro Flight
 * Stack and tested in Gazebo SITL
 */
#include <cmath>
#include <ros/ros.h>
#include <move_base_msgs/MoveBaseAction.h>
#include <geometry_msgs/TwistStamped.h> 
#include <geometry_msgs/Twist.h> 
#include <geometry_msgs/PoseStamped.h>
#include <mavros_msgs/CommandBool.h>
#include <mavros_msgs/SetMode.h>
#include <mavros_msgs/State.h>
#include <nav_msgs/Odometry.h>
#include <geometry_msgs/Pose.h>
#include <geometry_msgs/Quaternion.h>

mavros_msgs::State current_state;
geometry_msgs::Twist Vehicle_msg;
geometry_msgs::PoseStamped pose;
geometry_msgs::TwistStamped px4_vehicle;
geometry_msgs::Pose px4_position;
nav_msgs::Odometry position;

void state_cb(const mavros_msgs::State::ConstPtr& msg){
    current_state = *msg;
}

void vehicle_cp(const geometry_msgs::Twist::ConstPtr& msg)
{   Vehicle_msg = *msg;
    px4_vehicle.twist.linear.x = Vehicle_msg.linear.x;
    px4_vehicle.twist.linear.y = Vehicle_msg.linear.y;
    ROS_INFO("vehicle_x=%f,vehicle_y=%f\t\n",(px4_vehicle.twist.linear.x),(px4_vehicle.twist.linear.y));
}

void position_cb(const nav_msgs::Odometry::ConstPtr& msg){
     position = *msg;
     px4_position=position.pose.pose;
     //ROS_INFO("pos_x=%f,pos_y=%f,pos_z=%f \t\n",(px4_position.position.x),(px4_position.position.y),(px4_position.position.z));
}

int main(int argc, char **argv)
{
    ros::init(argc, argv, "offb_node");
    ros::NodeHandle nh;
 
    ros::Subscriber state_sub = nh.subscribe<mavros_msgs::State>
            ("mavros/state", 10, state_cb);
    ros::Publisher local_pos_pub = nh.advertise<geometry_msgs::PoseStamped>
            ("mavros/setpoint_position/local", 10);
    ros::ServiceClient arming_client = nh.serviceClient<mavros_msgs::CommandBool>
            ("mavros/cmd/arming");
    ros::ServiceClient set_mode_client = nh.serviceClient<mavros_msgs::SetMode>
            ("mavros/set_mode");
    ros::Publisher px4_vehicle_pub = nh.advertise<geometry_msgs::TwistStamped>
            ("mavros/setpoint_velocity/cmd_vel", 10);
    ros::Subscriber vehicle_sub = nh.subscribe<geometry_msgs::Twist>
            ("cmd_vel", 10, vehicle_cp);
    ros::Subscriber px4_position_sub = nh.subscribe<nav_msgs::Odometry>
            ("mavros/local_position/odom", 100,position_cb);

    //the setpoint publishing rate MUST be faster than 2Hz
    ros::Rate rate(20.0);
    px4_vehicle.twist.linear.x=0.05;
    px4_vehicle.twist.linear.y=0.05;
    px4_vehicle.twist.linear.z=0;

    // wait for FCU connection
    while(ros::ok() && !current_state.connected){
        ros::spinOnce();
        rate.sleep();
    }
 
    pose.pose.position.x = 0;
    pose.pose.position.y = 0;
    pose.pose.position.z = 2;
 
    //send a few setpoints before starting
    for(int i = 100; ros::ok() && i > 0; --i){
        local_pos_pub.publish(pose);
        //px4_vehicle_pub.publish(px4_vehicle);
        ros::spinOnce();
        rate.sleep();
    }
 
    mavros_msgs::SetMode offb_set_mode;
    offb_set_mode.request.custom_mode = "OFFBOARD";
 
    mavros_msgs::CommandBool arm_cmd;
    arm_cmd.request.value = true;
 
    ros::Time last_request = ros::Time::now();
 
    while(ros::ok()){
        if( current_state.mode != "OFFBOARD" &&
            (ros::Time::now() - last_request > ros::Duration(5.0))){
            if( set_mode_client.call(offb_set_mode) &&
                offb_set_mode.response.mode_sent){
                ROS_INFO("Offboard enabled");
            }
            last_request = ros::Time::now();
        } else {
            if( !current_state.armed &&
                (ros::Time::now() - last_request > ros::Duration(5.0))){
                if( arming_client.call(arm_cmd) &&
                    arm_cmd.response.success){
                    ROS_INFO("Vehicle armed");
                }
                last_request = ros::Time::now();
            }
        }
        if ((px4_position.position.z<=2.1) && (px4_position.position.z>=1.9))
        {
            px4_vehicle_pub.publish(px4_vehicle);
            if ((px4_vehicle.twist.linear.x == 0) && (px4_vehicle.twist.linear.y == 0))
               {
                   pose.pose.position.x = px4_position.position.x;
                   pose.pose.position.y = px4_position.position.y;
                   pose.pose.position.z = px4_position.position.z;
                   local_pos_pub.publish(pose);
               }
        }
        else 
          local_pos_pub.publish(pose);
        ros::spinOnce();
        rate.sleep();
    }
 
    return 0;
}
