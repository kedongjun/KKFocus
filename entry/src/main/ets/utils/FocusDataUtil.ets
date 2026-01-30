
import { BaseFocusDefinition } from 'api';
import { LogUtil } from "@pura/harmony-utils";
import { PrefsManager } from './PrefsManager';

export enum FocusPreferenceName{
  Tomato = 'focus_tomato',
  Countdown = 'focus_countdown',
  OnTime = 'focus_onTime',
}


export enum ClockEventKey{
  eventList = 'eventList',//事件列表
}
export enum ClockDataKey{
  startTimestamp = 'startTimestamp',//番茄任务开始时间

  tomatoNum = 'tomatoNum',//番茄个数
  tomatoDuration = 'tomatoDuration',//单个番茄钟的时长
  tomatoModel = 'tomatoModel',//专注模式
  isAutoRested = 'isAutoRested',//是否自动休息
  isStrict = 'isStrict',//是否严格专注
  title = 'title',//专注标题
  restDuration = 'restDuration',//单次休息时长

  useTime = 'useTime',//番茄任务总时长(最大值=番茄总数*单个番茄钟的时长)

  eventTimestamp = 'eventTimestamp',//事件发生时间
  currentTomato = 'currentTomato',//当前是第n个番茄
  currentTomatoSeconds = 'currentTomatoSeconds',//当前是第n个番茄的运行时长
  isPaused = 'isPaused',//暂停状态
  isTipRest = 'isTipRest',//是否提示休息
  isResting = 'isResting',//是否休息中
  currentRestSeconds = 'currentRestSeconds',//当前休息的已经运行的时长
  currentRest = 'currentRest',//当前是第n次休息
  isDone = 'isDone',//是否全部完成,全部番茄完成之后展示延迟组件,并且杀进程重新进来的时候也需要展示
  isExtension = 'isExtension',//是否正在延长阶段
}

export interface ClockData {
  startTimestamp: number//番茄任务开始时间

  tomatoNum: number//番茄总数
  tomatoDuration: number//单个番茄钟的时长
  tomatoModel: number//专注类型
  isAutoRested: boolean//用户是否勾选了自动休息
  isStrict: boolean//用户是否勾选了严格专注
  title: string//专注标题
  restDuration: number//单次休息时长

  useTime: number//番茄任务总时长(最大值=番茄总数*单个番茄钟的时长)

  eventTimestamp: number//事件发生时间
  currentTomato: number//当前是第n个番茄
  currentTomatoSeconds: number//当前的番茄运行时长
  isPaused: boolean//是否暂停
  isTipRest: boolean//是否提示休息(给用户选择操作:1进入休息 2放弃休息)
  isResting: boolean//是否休息中
  currentRestSeconds: number//当前休息的运行时长
  currentRest: number//当前是第n次休息
  isDone: boolean//延长页面,全部番茄完成之后展示延迟组件,并且杀进程重新进来的时候也需要展示
}

export interface EventData {
  eventList?: Array<BaseFocusDefinition.FocusRecordEventInputV2>;//事件记录,包含暂停/继续/完成番茄等等
}

/**
 * @description:
 * @author: kedongjun
 * @date: 2025/09/04
 */
export class FocusDataUtil {
  
  //清空数据
  static clearData(preferenceName: FocusPreferenceName){
    LogUtil.debug('缓存:清空操作 clearData(),数据库名字 preferenceName====' + preferenceName )
    PrefsManager.getInstanceSync(preferenceName).clearSync()
  }

  // 保存组件数据
  static  saveClockData(preferenceName: FocusPreferenceName, data: ClockData){
    LogUtil.debug('缓存:保存操作 saveClockData(),数据库名字 preferenceName====' + preferenceName + ',时钟数据 data===='  + JSON.stringify(data))
    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.startTimestamp, data.startTimestamp)
    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.tomatoNum, data.tomatoNum)
    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.tomatoDuration, data.tomatoDuration)
    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.tomatoModel, data.tomatoModel)
    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.isAutoRested, data.isAutoRested)
    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.isStrict, data.isStrict)
    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.title, data.title)
    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.restDuration, data.restDuration)

    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.useTime, data.useTime)

    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.eventTimestamp, data.eventTimestamp)
    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.currentTomato, data.currentTomato)
    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.currentTomatoSeconds, data.currentTomatoSeconds)
    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.isPaused, data.isPaused)
    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.isTipRest, data.isTipRest)
    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.isResting, data.isResting)
    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.currentRestSeconds, data.currentRestSeconds)
    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.currentRest, data.currentRest)
    PrefsManager.getInstanceSync(preferenceName).putSync(ClockDataKey.isDone, data.isDone)
  }

  //获取组件数据
  static getClockData(preferenceName: FocusPreferenceName): ClockData{

    let startTimestamp = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.startTimestamp, 0)
    let tomatoNum = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.tomatoNum, 0)
    let tomatoDuration = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.tomatoDuration, 0)
    let tomatoModel = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.tomatoModel, 3)
    let isAutoRested = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.isAutoRested, false)
    let isStrict = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.isStrict, false)
    let title = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.title, '')
    let restDuration = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.restDuration, 0)

    let useTime = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.useTime, 0)

    let eventTimestamp = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.eventTimestamp, 0)
    let currentTomato = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.currentTomato, 0)
    let currentTomatoSeconds = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.currentTomatoSeconds, 0)
    let isPaused = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.isPaused, false)
    let isTipRest = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.isTipRest, false)
    let isResting = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.isResting, false)
    let currentRestSeconds = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.currentRestSeconds, 0)
    let currentRest = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.currentRest, 0)
    let isDone = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.isDone, false)
    let isExtension = PrefsManager.getInstanceSync(preferenceName).getSync(ClockDataKey.isExtension, false)

    let data: ClockData = {
      startTimestamp: startTimestamp,
      tomatoNum: tomatoNum,
      tomatoDuration: tomatoDuration,
      tomatoModel: tomatoModel,
      isAutoRested: isAutoRested,
      isStrict: isStrict,
      title: title,
      restDuration: restDuration,
      useTime: useTime,
      eventTimestamp: eventTimestamp,
      currentTomato: currentTomato,
      currentTomatoSeconds: currentTomatoSeconds,
      isPaused: isPaused,
      isTipRest: isTipRest,
      isResting: isResting,
      currentRestSeconds: currentRestSeconds,
      currentRest: currentRest,
      isDone: isDone,
    }

    LogUtil.debug('缓存:获取操作 getClockData() 时钟数据 data===='   + JSON.stringify(data)  )

    return data
  }



  //保存事件数据
  static saveEventData(preferenceName: FocusPreferenceName, data: EventData) {
    LogUtil.debug('缓存:保存操作 saveEventData(),数据库名字 preferenceName==' + preferenceName +'事件数据 EventData==' + ', data.eventList=' + JSON.stringify(data.eventList))
    if (data.eventList) {
      PrefsManager.getInstanceSync(preferenceName).putSync(ClockEventKey.eventList, JSON.stringify(data.eventList))
    }
  }

  //获取事件数据
  static getEventData(preferenceName: FocusPreferenceName): EventData{
    let eventListStr = PrefsManager.getInstanceSync(preferenceName).getSync(ClockEventKey.eventList, '[]')
    let eventList: Array<BaseFocusDefinition.FocusRecordEventInputV2> = []
    
    try {
      if (typeof eventListStr === 'string') {
        eventList = JSON.parse(eventListStr)
      }
    } catch (e) {
      LogUtil.error('解析事件列表失败: ' + e)
    }
    
    LogUtil.debug('缓存:获取操作 getEventData(),数据库名字 preferenceName==' + preferenceName +'事件数据 EventData==' + ', eventList=' + JSON.stringify(eventList))

    let data: EventData = {
      eventList: eventList,
    }
    LogUtil.debug('缓存:获取操作getEventData(), 数据库名字 preferenceName==' + preferenceName +'事件数据 EventData==' + ', data.eventList=' + JSON.stringify(data.eventList))

    return data
  }
}
