#include "ros/ros.h"  //ROS中最常用片段的头文件
#include "std_msgs/String.h"   //由String.msg自动产生的头文件
 
#include <sstream>   //stringstream头文件
 
/**
 * This tutorial demonstrates simple sending of messages over the ROS system.
 */
int main(int argc, char **argv)
{
 
  ros::init(argc, argv, "publisher");   //初始化ROS，在这里可以指定我们节点的名称，一个ROS系统中节点的名称必须是唯一的
 
  ros::NodeHandle n;   //创建一个节点的句柄，第一个创建的节点句柄会初始化节点，而最后一个则会清理节点所用的所有资源
 
 
  ros::Publisher chatter_pub = n.advertise<std_msgs::String>("chatter", 1000);   //告诉mster，n将要在topic chatter上面发布一个std_msgs::String类型的信息，然后master告诉所有节点注意监听主题chatter。第二个参数是发送队列的长度。
 
  ros::Rate loop_rate(10);   //指定一个循环频率
 
  int count = 0;
  while (ros::ok())
  {
  //ros::ok()在以下情况下会返回false：
    /**
     * This is a message object. You stuff it with data, and then publish it.
     */
    std_msgs::String msg;
 
    std::stringstream ss;
    ss << "hello world " << count;
    msg.data = ss.str();
 
    ROS_INFO("%s", msg.data.c_str());   //ROS_INFO系列是printf/cout的替代品
 
    /**
     * The publish() function is how you send messages. The parameter
     * is the message object. The type of this object must agree with the type
     * given as a template parameter to the advertise<>() call, as was done
     * in the constructor above.
     */
    chatter_pub.publish(msg);   //发布信息msg到每一个相连接的节点
 
    ros::spinOnce();
 
    loop_rate.sleep();   //休眠一段时间以达到循环频率10Hz
    ++count;
  }
  return 0;
}