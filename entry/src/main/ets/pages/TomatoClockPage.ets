import { LogUtil } from '@pura/harmony-utils'
import promptAction from '@ohos.promptAction'
import { TomatoClockViewModel } from '../viewmodel/TomatoClockViewModel'
import { RestViewModel } from '../viewmodel/RestViewModel'
import { TomatoClock } from '../view/TomatoClock'
import { RestClock } from '../view/RestClock'



// 定义参数类型
export interface RouterParams {
  tomatoNum: number, // 番茄总数：第一次是从外部页面传进来
  tomatoDuration: number, // 每个番茄时长（秒）：第一次是从外部页面传进来
  tomatoModel: number, // 番茄类型：第一次是从外部页面传进来
  isAutoRested: boolean, // 用户是否勾选了自动休息：第一次是从外部页面传进来
  isStrict: boolean, // 用户是否勾选了严格专注：第一次是从外部页面传进来
  title: string, // 用户是否勾选了严格专注：第一次是从外部页面传进来
  restDuration: number, // 单次休息时长：第一次是初始化里面赋值
}

/**
 * 番茄钟页面 - 完整示例（使用SVGA扩散圆环动画）
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
  @State restTime: number = 10
  @State restElapsedTime: number = 0
  @State isResting: boolean = false
  
  aboutToAppear() {
    // ========== 初始化番茄钟 ==========
    //传过来的参数
    const params = this.getUIContext().getRouter().getParams() as RouterParams; // 类型断言
    if (params) {
      LogUtil.debug('番茄钟，传过来的参数，params====' + JSON.stringify(params))
      this.tomatoViewModel.tomatoNum = params.tomatoNum;
      this.tomatoViewModel.tomatoDuration = params.tomatoDuration;
      this.tomatoViewModel.tomatoModel = params.tomatoModel;
      this.tomatoViewModel.isAutoRested = params.isAutoRested;
      this.tomatoViewModel.isStrict = params.isStrict;
      this.tomatoViewModel.title = params.title;
      this.tomatoViewModel.restDuration = params.restDuration;
      this.tomatoViewModel.initClockData()
    }

    
    // 设置状态变化回调 - 用于同步状态到UI
    this.tomatoViewModel.onStateChange(() => {
      this.syncTomatoState()
    })
    
    // 设置段完成回调 - 进入休息
    // 注意：使用绝对时间戳方案，即使息屏也能准确触发
    this.tomatoViewModel.onSegmentComplete((current, total) => {
      LogUtil.debug(`完成第 ${current}/${total} 个番茄`)
      
      if (current < total) {
        // 还有剩余番茄，进入休息
        this.enterRestMode()
      }
    })
    
    // 设置全部完成回调
    this.tomatoViewModel.onAllComplete(() => {
      LogUtil.debug('所有番茄完成！')
      promptAction.showToast({
        message: '🎉 恭喜完成所有番茄！',
        duration: 3000
      })
    })
    
    // ========== 初始化休息 ==========
    this.restViewModel.restTime = this.restTime
    
    // 设置休息状态变化回调
    this.restViewModel.onStateChange(() => {
      this.syncRestState()
    })
    
    // 设置休息完成回调 - 继续下一个番茄
    // 注意：使用绝对时间戳方案，即使息屏也能准确触发
    this.restViewModel.onRestComplete(() => {
      LogUtil.debug('休息完成')
      this.exitRestMode()
    })
    
    // 自动开始第一个番茄
    this.tomatoViewModel.start()
  }
  
  aboutToDisappear() {
    this.tomatoViewModel.destroy()
    this.restViewModel.destroy()
  }
  
  /**
   * 页面显示 - 处理亮屏后的时间校准
   */
  onPageShow() {
    LogUtil.debug('======= 页面显示 - 开始时间校准 =======')
    
    // 启动递归校准，直到所有应该完成的阶段都处理完
    this.recursiveSync()
  }
  
  /**
   * 递归校准 - 处理所有应该完成的番茄和休息
   */
  private recursiveSync() {
    if (this.isDone) {
      LogUtil.debug('已全部完成，停止校准')
      return
    }
    
    if (this.isResting) {
      // 当前在休息，检查是否应该完成
      const shouldContinue = this.restViewModel.checkAndSync()
      
      if (shouldContinue) {
        // 休息完成了，会触发exitRestMode，继续检查下一个番茄
        setTimeout(() => {
          this.recursiveSync()
        }, 50)
      }
    } else {
      // 当前在番茄钟，检查是否应该完成
      const shouldContinue = this.tomatoViewModel.checkAndSync()
      
      if (shouldContinue) {
        // 番茄完成了，会触发enterRestMode，继续检查休息
        setTimeout(() => {
          this.recursiveSync()
        }, 50)
      }
    }
  }
  
  /**
   * 页面隐藏 - 息屏或切到后台
   */
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
  }
  
  private syncRestState() {
    this.restElapsedTime = this.restViewModel.elapsedTime
  }
  
  private enterRestMode() {
    LogUtil.debug('进入休息模式')
    this.isResting = true
    
    // 立即启动休息倒计时 - 会设置restStartTime = Date.now()
    // 关键：即使熄屏，休息ViewModel也会独立计时
    this.restViewModel.start()
    
    promptAction.showToast({
      message: `完成第 ${this.currentSegment} 个番茄！休息 ${this.restTime} 秒`,
      duration: 2000
    })
  }
  
  private exitRestMode() {
    LogUtil.debug('退出休息模式，继续番茄钟')
    this.isResting = false
    this.restViewModel.reset()
    
    // 恢复番茄钟 - resume方法会自动设置新的segmentStartTime
    // segmentStartTime = Date.now() - elapsedTime * 1000
    this.tomatoViewModel.resume()
    
    promptAction.showToast({
      message: '开始新的番茄！',
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
        // ========== 休息界面（SVGA扩散动画）==========
        RestClock({
          restTime: this.restTime,
          elapsedTime: this.restElapsedTime,
          onSkip: () => {
            // 点击"结束"按钮 - 跳过休息
            this.restViewModel.skip()
          },
          onFinish: () => {
            // 点击"休息完成"按钮 - 立即结束休息
            this.restViewModel.skip()
          }
        })
      } else {
        // ========== 番茄钟界面 ==========
        Column() {
          Text('番茄钟专注')
            .fontSize(24)
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
            Text(`当前：第 ${this.currentSegment + 1}/${this.tomatoNum} 个番茄`)
              .fontSize(16)
              .margin({ bottom: 8 })
            
            Text(`总用时：${this.formatTotalTime(this.useTime)}`)
              .fontSize(14)
              .fontColor('#666666')
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

