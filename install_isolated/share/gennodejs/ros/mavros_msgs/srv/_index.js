
"use strict";

let ParamPull = require('./ParamPull.js')
let FileOpen = require('./FileOpen.js')
let CommandHome = require('./CommandHome.js')
let FileRead = require('./FileRead.js')
let WaypointClear = require('./WaypointClear.js')
let MessageInterval = require('./MessageInterval.js')
let CommandInt = require('./CommandInt.js')
let CommandTriggerInterval = require('./CommandTriggerInterval.js')
let CommandTriggerControl = require('./CommandTriggerControl.js')
let SetMavFrame = require('./SetMavFrame.js')
let SetMode = require('./SetMode.js')
let FileChecksum = require('./FileChecksum.js')
let FileWrite = require('./FileWrite.js')
let CommandBool = require('./CommandBool.js')
let VehicleInfoGet = require('./VehicleInfoGet.js')
let CommandTOL = require('./CommandTOL.js')
let WaypointSetCurrent = require('./WaypointSetCurrent.js')
let ParamSet = require('./ParamSet.js')
let FileRemove = require('./FileRemove.js')
let StreamRate = require('./StreamRate.js')
let FileList = require('./FileList.js')
let FileMakeDir = require('./FileMakeDir.js')
let WaypointPull = require('./WaypointPull.js')
let FileClose = require('./FileClose.js')
let WaypointPush = require('./WaypointPush.js')
let FileTruncate = require('./FileTruncate.js')
let ParamPush = require('./ParamPush.js')
let LogRequestList = require('./LogRequestList.js')
let LogRequestData = require('./LogRequestData.js')
let CommandLong = require('./CommandLong.js')
let LogRequestEnd = require('./LogRequestEnd.js')
let ParamGet = require('./ParamGet.js')
let FileRename = require('./FileRename.js')
let FileRemoveDir = require('./FileRemoveDir.js')

module.exports = {
  ParamPull: ParamPull,
  FileOpen: FileOpen,
  CommandHome: CommandHome,
  FileRead: FileRead,
  WaypointClear: WaypointClear,
  MessageInterval: MessageInterval,
  CommandInt: CommandInt,
  CommandTriggerInterval: CommandTriggerInterval,
  CommandTriggerControl: CommandTriggerControl,
  SetMavFrame: SetMavFrame,
  SetMode: SetMode,
  FileChecksum: FileChecksum,
  FileWrite: FileWrite,
  CommandBool: CommandBool,
  VehicleInfoGet: VehicleInfoGet,
  CommandTOL: CommandTOL,
  WaypointSetCurrent: WaypointSetCurrent,
  ParamSet: ParamSet,
  FileRemove: FileRemove,
  StreamRate: StreamRate,
  FileList: FileList,
  FileMakeDir: FileMakeDir,
  WaypointPull: WaypointPull,
  FileClose: FileClose,
  WaypointPush: WaypointPush,
  FileTruncate: FileTruncate,
  ParamPush: ParamPush,
  LogRequestList: LogRequestList,
  LogRequestData: LogRequestData,
  CommandLong: CommandLong,
  LogRequestEnd: LogRequestEnd,
  ParamGet: ParamGet,
  FileRename: FileRename,
  FileRemoveDir: FileRemoveDir,
};
