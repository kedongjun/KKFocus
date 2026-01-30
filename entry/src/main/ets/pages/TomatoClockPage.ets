import { LogUtil } from '@pura/harmony-utils'
import promptAction from '@ohos.promptAction'
import { TomatoClockViewModel } from '../viewmodel/TomatoClockViewModel'
import { RestViewModel } from '../viewmodel/RestViewModel'
import { TomatoClock } from '../view/TomatoClock'
import { RestClock } from '../view/RestClock'
import { ClockData, FocusDataUtil, FocusPreferenceName } from '../utils/FocusDataUtil'

// 定义参数类型
export interface RouterParams {
  tomatoNum: number,
  tomatoDuration: number,
  tomatoModel: number,
  isAutoRested: boolean,
  isStrict: boolean,
  title: string,
  restDuration: number,
}

/**
 * 番茄钟页面 - 完整示例(使用SVGA扩散圆环动画)
 * 
 * @author kedongjun
 * @since 2025-01-27
 */
@Entry
@Component
struct TomatoClockPage {
  // ============ ViewModel ============
  private tomatoViewModel: TomatoClockViewModel = new TomatoClockViewModel()
  private restViewModel: RestViewModel = new RestViewModel()
  
  // ============ 番茄钟状态 ============
  @State tomatoNum: number = 4
  @State currentSegment: number = 0
  @State elapsedTime: number = 0
  @State tomatoDuration: number = 30
  @State isPaused: boolean = false
  @State isDone: boolean = false
  @State useTime: number = 0
  
  // ============ 休息状态 ============
  @State restDuration: number = 10
  @State currentRestSeconds: number = 0
  @State isResting: boolean = false
  
  // 🆕 延长阶段状态
  @State isExtension: boolean = false
  
  aboutToAppear() {
    // ========== 检查是否需要恢复状态 ==========
    const clockData = FocusDataUtil.getClockData(FocusPreferenceName.Tomato)
    const isResuming = clockData.startTimestamp !== 0
    
    // ========== 初始化番茄钟 ==========
    const params = this.getUIContext().getRouter().getParams() as RouterParams;
    
    if (isResuming) {
      // 🔧 恢复模式：从缓存读取配置
      LogUtil.debug('番茄钟,恢复模式,从缓存读取配置')
      this.tomatoViewModel.tomatoNum = clockData.tomatoNum
      this.tomatoViewModel.tomatoDuration = clockData.tomatoDuration
      this.tomatoViewModel.restDuration = clockData.restDuration
      this.tomatoViewModel.tomatoModel = clockData.tomatoModel
      this.tomatoViewModel.isAutoRested = clockData.isAutoRested
      this.tomatoViewModel.isStrict = clockData.isStrict
      this.tomatoViewModel.title = clockData.title
      
      // 设置页面配置
      this.restDuration = clockData.restDuration
      this.currentRestSeconds = clockData.currentRestSeconds
      this.tomatoDuration = clockData.tomatoDuration
      this.tomatoNum = clockData.tomatoNum
    } else if (params) {
      // 🔧 首次启动：从路由参数读取配置
      LogUtil.debug('番茄钟,首次启动,从参数读取配置,params====' + JSON.stringify(params))
      this.tomatoViewModel.tomatoNum = params.tomatoNum;
      this.tomatoViewModel.tomatoDuration = params.tomatoDuration;
      this.tomatoViewModel.tomatoModel = params.tomatoModel;
      this.tomatoViewModel.isAutoRested = params.isAutoRested;
      this.tomatoViewModel.isStrict = params.isStrict;
      this.tomatoViewModel.title = params.title;
      this.tomatoViewModel.restDuration = params.restDuration;
      
      // 🔧 修复：设置页面的休息时长
      this.restDuration = params.restDuration;
      this.tomatoDuration = params.tomatoDuration;
      this.tomatoNum = params.tomatoNum;
      
      // 初始化缓存数据
      this.tomatoViewModel.initClockData()
    }
    
    // 设置状态变化回调
    this.tomatoViewModel.onStateChange(() => {
      this.syncTomatoState()
    })
    
    // 设置段完成回调 - 进入休息
    this.tomatoViewModel.onSegmentComplete((current, total) => {
      LogUtil.debug(`完成第 ${current}/${total} 个番茄`)
      
      if (current < total) {
        // 🆕 记录"开始第N个休息"事件
        // this.tomatoViewModel.addFocusEvent(5, `开始第${current}次休息`, 0)
        this.enterRestMode(current)
      }
    })
    
    // 设置全部完成回调
    this.tomatoViewModel.onAllComplete(() => {
      LogUtil.debug('所有番茄完成!')
      this.isExtension = true  // 🆕 显示延长组件
      promptAction.showToast({
        message: '🎉 恭喜完成所有番茄!',
        duration: 3000
      })
    })
    
    // ========== 初始化休息 ==========
    this.restViewModel.restTime = this.restDuration
    
    this.restViewModel.onStateChange(() => {
      this.syncRestState()
    })
    
    // 设置休息完成回调 - 继续下一个番茄
    this.restViewModel.onRestComplete(() => {
      LogUtil.debug('休息完成')
      this.exitRestMode()
    })
    
    // 🆕 如果是恢复状态,需要计算离线时间并恢复
    if (isResuming) {
      this.restoreFromCache(clockData)
    } else {
      // 自动开始第一个番茄
      this.tomatoViewModel.start()
    }
  }
  
  aboutToDisappear() {
    this.tomatoViewModel.destroy()
    this.restViewModel.destroy()
  }
  
  /**
   * 🆕 从缓存恢复状态(处理杀进程恢复)
   */
  private restoreFromCache(clockData: ClockData) {
    LogUtil.debug('======= 从缓存恢复状态 =======')
    LogUtil.debug('缓存数据: ' + JSON.stringify(clockData))
    
    // 🔧 先恢复所有配置参数（从缓存中读取）
    this.tomatoNum = clockData.tomatoNum
    this.tomatoDuration = clockData.tomatoDuration
    this.restDuration = clockData.restDuration
    this.currentRestSeconds = clockData.currentRestSeconds

    // 恢复ViewModel状态
    this.tomatoViewModel.tomatoNum = clockData.tomatoNum
    this.tomatoViewModel.tomatoDuration = clockData.tomatoDuration
    this.tomatoViewModel.restDuration = clockData.restDuration
    this.tomatoViewModel.currentTomato = clockData.currentTomato
    this.tomatoViewModel.useTime = clockData.useTime
    this.tomatoViewModel.isPaused = clockData.isPaused
    this.tomatoViewModel.isDone = clockData.isDone
    this.tomatoViewModel.isExtension = clockData.isExtension
    this.tomatoViewModel.isResting = clockData.isResting  // 🔧 恢复休息状态
    
    // 恢复rest数据
    this.restViewModel.restTime = clockData.restDuration
    this.restViewModel.elapsedTime = clockData.currentRestSeconds

    // 计算离线时间
    const now = Date.now()
    const offlineSeconds = (now - clockData.eventTimestamp) / 1000
    LogUtil.debug(`离线时间: ${offlineSeconds}秒`)
    LogUtil.debug(`休息时长配置: ${clockData.restDuration}秒`)
    LogUtil.debug(`当前状态: isResting=${clockData.isResting}, currentRestSeconds=${clockData.currentRestSeconds}`)
    
    // 🆕 根据状态恢复到正确位置
    if (clockData.isExtension) {
      // 在延长阶段
      LogUtil.debug('恢复到延长阶段')
      this.isExtension = true
      this.syncTomatoState()
    } else if (clockData.isResting) {
      // 在休息中
      LogUtil.debug('恢复到休息阶段')
      const expectedRestElapsed = clockData.currentRestSeconds + offlineSeconds
      
      LogUtil.debug(`预期已休息时间: ${expectedRestElapsed}秒 (缓存${clockData.currentRestSeconds}秒 + 离线${offlineSeconds}秒)`)
      LogUtil.debug(`休息总时长: ${clockData.restDuration}秒`)
      
      if (expectedRestElapsed >= clockData.restDuration) {
        // 休息已经应该结束,进入下一个番茄
        LogUtil.debug('休息已结束,进入下一个番茄')
        this.isResting = false
        this.tomatoViewModel.isResting = false
        this.tomatoViewModel.addFocusEvent(4, `开始第${clockData.currentTomato + 1}个番茄`, 0)
        this.tomatoViewModel.start()
        this.syncTomatoState()
      } else {
        // 🔧 修复：继续休息，使用 restoreAndContinue 方法
        LogUtil.debug(`继续休息，已休息${expectedRestElapsed}秒`)
        this.isResting = true  // 设置页面状态为休息中
        this.restViewModel.restoreAndContinue(expectedRestElapsed)
        this.syncRestState()  // 🔧 只同步休息状态，不调用 syncTomatoState
        // 🔧 手动同步番茄状态（不包括 isResting）
        this.currentSegment = this.tomatoViewModel.currentTomato
        this.elapsedTime = this.tomatoViewModel.currentTomatoSeconds
        this.isPaused = this.tomatoViewModel.isPaused
        this.isDone = this.tomatoViewModel.isDone
        this.useTime = this.tomatoViewModel.useTime
        this.isExtension = this.tomatoViewModel.isExtension
      }
    } else {
      // 在番茄钟中
      LogUtil.debug('恢复到番茄钟阶段')
      const expectedTomatoElapsed = clockData.currentTomatoSeconds + offlineSeconds
      
      if (expectedTomatoElapsed >= clockData.tomatoDuration) {
        // 番茄应该已经完成
        const completedTomatoes = Math.floor(expectedTomatoElapsed / clockData.tomatoDuration)
        LogUtil.debug(`应该完成了${completedTomatoes}个番茄`)
        
        // 🔧 修复：先设置正确的时间，再触发递归同步
        this.tomatoViewModel.restoreAndContinue(expectedTomatoElapsed)
        setTimeout(() => {
          this.recursiveSync()
        }, 100)
      } else {
        // 🔧 修复：继续当前番茄，使用 restoreAndContinue 方法
        LogUtil.debug(`继续第${clockData.currentTomato + 1}个番茄，已用时${expectedTomatoElapsed}秒`)
        this.tomatoViewModel.restoreAndContinue(expectedTomatoElapsed)
      }
      
      this.syncTomatoState()  // 番茄钟状态才调用 syncTomatoState
    }
  }
  
  /**
   * 页面显示 - 处理亮屏后的时间校准
   */
  onPageShow() {
    LogUtil.debug('======= 页面显示 - 开始时间校准 =======')
    this.recursiveSync()
  }
  
  /**
   * 递归校准 - 处理所有应该完成的番茄和休息
   */
  private recursiveSync() {
    if (this.isDone && !this.isExtension) {
      LogUtil.debug('已全部完成且不在延长阶段,停止校准')
      return
    }
    
    if (this.isResting) {
      const shouldContinue = this.restViewModel.checkAndSync()
      
      if (shouldContinue) {
        setTimeout(() => {
          this.recursiveSync()
        }, 50)
      }
    } else if (!this.isExtension) {
      const shouldContinue = this.tomatoViewModel.checkAndSync()
      
      if (shouldContinue) {
        setTimeout(() => {
          this.recursiveSync()
        }, 50)
      }
    }
  }
  
  onPageHide() {
    LogUtil.debug('页面隐藏 - 息屏或后台')
  }
  
  private syncTomatoState() {
    this.tomatoNum = this.tomatoViewModel.tomatoNum
    this.currentSegment = this.tomatoViewModel.currentTomato
    this.elapsedTime = this.tomatoViewModel.currentTomatoSeconds
    this.tomatoDuration = this.tomatoViewModel.tomatoDuration
    this.isPaused = this.tomatoViewModel.isPaused
    this.isDone = this.tomatoViewModel.isDone
    this.useTime = this.tomatoViewModel.useTime
    this.isExtension = this.tomatoViewModel.isExtension
  }
  
  private syncRestState() {
    this.currentRestSeconds = this.restViewModel.elapsedTime
    
    // 🔧 如果正在休息，保存休息进度到缓存
    if (this.isResting) {
      let clockData = FocusDataUtil.getClockData(FocusPreferenceName.Tomato)
      clockData.currentRestSeconds = this.restViewModel.elapsedTime
      clockData.eventTimestamp = Date.now()
      FocusDataUtil.saveClockData(FocusPreferenceName.Tomato, clockData)
    }
  }
  
  /**
   * 进入休息模式
   */
  private enterRestMode(restIndex: number) {
    LogUtil.debug(`进入休息模式，休息时长：${this.restDuration}秒`)
    this.isResting = true
    this.tomatoViewModel.isResting = true  // 🔧 设置ViewModel状态
    
    // 🔧 保存休息状态到缓存
    let clockData = FocusDataUtil.getClockData(FocusPreferenceName.Tomato)
    this.tomatoViewModel.isResting = true
    this.tomatoViewModel.currentRestSeconds = 0  // 刚开始休息
    this.tomatoViewModel.currentRest = restIndex
    // this.tomatoViewModel.eventTimestamp = Date.now()
    // FocusDataUtil.saveClockData(FocusPreferenceName.Tomato, clockData)
    this.tomatoViewModel.addFocusEvent(5, `开始第${restIndex}个休息`, Date.now())

    // 🔧 设置休息时长和序号
    this.restViewModel.restTime = this.restDuration
    this.restViewModel.setRestIndex(restIndex)
    this.restViewModel.start()
    
    LogUtil.debug(`RestViewModel.restTime 设置为：${this.restViewModel.restTime}秒`)
    
    promptAction.showToast({
      message: `完成第 ${this.currentSegment} 个番茄!休息 ${this.restDuration} 秒`,
      duration: 2000
    })
  }
  
  /**
   * 退出休息模式
   */
  private exitRestMode() {
    LogUtil.debug('退出休息模式,继续番茄钟')
    this.isResting = false
    this.tomatoViewModel.isResting = false  // 🔧 清除ViewModel状态
    this.restViewModel.reset()
    
    // 🔧 清除休息状态缓存
    this.tomatoViewModel.isResting = false
    this.tomatoViewModel.currentRestSeconds = 0

    
    // 🆕 记录"开始第N个番茄"事件
    // this.tomatoViewModel.addFocusEvent(4, `开始第${this.currentSegment + 1}个番茄`, 0)
    
    // 🔧 修复：重置番茄状态，开始新的番茄
    this.tomatoViewModel.currentTomatoSeconds = 0
    this.tomatoViewModel.isPaused = false
    this.tomatoViewModel.resume()
    
    promptAction.showToast({
      message: '开始新的番茄!',
      duration: 1500
    })
  }
  
  private formatTotalTime(seconds: number): string {
    const hours = Math.floor(seconds / 3600)
    const mins = Math.floor((seconds % 3600) / 60)
    const secs = Math.floor(seconds % 60)
    
    if (hours > 0) {
      return `${hours}时${mins}分${secs}秒`
    } else if (mins > 0) {
      return `${mins}分${secs}秒`
    } else {
      return `${secs}秒`
    }
  }
  
  build() {
    Stack() {
      if (this.isResting) {
        // ========== 休息界面(SVGA扩散动画)==========
        RestClock({
          restTime: this.restDuration,
          elapsedTime: this.currentRestSeconds,
          onSkip: () => {
            this.restViewModel.skip()
          },
          onFinish: () => {
            this.restViewModel.skip()
          }
        })
      } else if (this.isExtension) {
        // 🆕 ========== 延长组件 ==========
        Column() {
          Text('🎉 恭喜完成!')
            .fontSize(32)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 60, bottom: 40 })
          
          Column() {
            Text(`已完成 ${this.tomatoNum} 个番茄`)
              .fontSize(20)
              .fontColor(Color.White)
              .margin({ bottom: 16 })
            
            Text(`总用时: ${this.formatTotalTime(this.useTime)}`)
              .fontSize(18)
              .fontColor('#CCFFFFFF')
              .margin({ bottom: 40 })
            
            Text('继续保持专注?')
              .fontSize(16)
              .fontColor('#CCFFFFFF')
              .margin({ bottom: 24 })
            
            Row() {
              Button('延长 +1')
                .fontSize(16)
                .fontColor('#1a4d6d')
                .backgroundColor(Color.White)
                .width(120)
                .height(50)
                .borderRadius(25)
                .onClick(() => {
                  this.tomatoViewModel.extend(1)
                })
                .margin({ right: 15 })
              
              Button('完成任务')
                .fontSize(16)
                .fontColor(Color.White)
                .backgroundColor('rgba(255, 255, 255, 0.1)')
                .border({ width: 1, color: Color.White, radius: 25 })
                .width(120)
                .height(50)
                .onClick(() => {
                  // 🆕 完成任务,清空缓存,返回首页
                  this.tomatoViewModel.finishTask()
                  
                  promptAction.showToast({
                    message: '任务已完成!',
                    duration: 2000
                  })
                  
                  this.getUIContext().getRouter().back()
                })
            }
            .justifyContent(FlexAlign.Center)
          }
          .width('90%')
          .padding(30)
          .backgroundColor('rgba(255, 255, 255, 0.05)')
          .borderRadius(20)
        }
        .width('100%')
        .height('100%')
        .justifyContent(FlexAlign.Center)
        .linearGradient({
          angle: 180,
          colors: [[0x1a4d6d, 0.0], [0x0d2639, 1.0]]
        })
      } else {
        // ========== 番茄钟界面 ==========
        Column() {
          Text('番茄钟专注')
            .fontSize(24)
            .fontColor(Color.White)
            .fontWeight(FontWeight.Bold)
            .margin({ top: 40, bottom: 20 })
          
          TomatoClock({
            tomatoNum: this.tomatoNum,
            currentSegment: this.currentSegment,
            elapsedTime: this.elapsedTime,
            segmentTime: this.tomatoDuration
          })
            .margin({ top: 40, bottom: 40 })
          
          Column() {
            Text(`当前: 第 ${this.currentSegment + 1}/${this.tomatoNum} 个番茄`)
              .fontSize(16)
              .fontColor(Color.White)
              .margin({ bottom: 8 })
            
            Text(`总用时: ${this.formatTotalTime(this.useTime)}`)
              .fontSize(14)
              .fontColor('#CCFFFFFF')
              .margin({ bottom: 8 })
            
            Text(this.isDone ? '✅ 已完成' : (this.isPaused ? '⏸️ 已暂停' : '▶️ 进行中'))
              .fontSize(14)
              .fontColor(this.isDone ? '#4CAF50' : (this.isPaused ? '#FF9800' : '#2196F3'))
          }
          .margin({ bottom: 40 })
          
          Row() {
            Button(this.isPaused ? '继续' : '暂停')
              .onClick(() => {
                this.tomatoViewModel.togglePause()
              })
              .enabled(!this.isDone)
              .margin({ right: 10 })
            
            Button('重置')
              .onClick(() => {
                this.tomatoViewModel.reset()
                this.tomatoViewModel.start()
              })
              .margin({ right: 10 })
            
            Button('延长+1')
              .onClick(() => {
                this.tomatoViewModel.extend(1)
              })
          }
          .margin({ bottom: 20 })

        }
        .width('100%')
        .height('100%')
        .linearGradient({
          angle: 180,
          colors: [[0x1a4d6d, 0.0], [0x0d2639, 1.0]]
        })
      }
    }
    .width('100%')
    .height('100%')
  }
}
