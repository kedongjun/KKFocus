import { SvgaPlayer } from "@tb-open/svga"


/**
 * 休息倒计时组件 - 使用SVGA扩散圆环动画
 * 
 * 职责：
 * - 显示休息倒计时界面
 * - 播放SVGA扩散圆环动画
 * - 提供结束和完成休息的选项
 * 
 * @author kedongjun
 * @since 2025-01-27
 */
@Component
export struct RestClock {
  // ============ 显示数据 ============
  @Prop restTime: number           // 休息总时长（秒）
  @Prop elapsedTime: number        // 已休息时间（秒）

  
  // ============ 回调 ============
  onSkip?: () => void              // 跳过休息的回调（结束按钮）
  onFinish?: () => void            // 完成休息的回调（休息完成按钮）
  
  // ============ SVGA控制器 ============

  /**
   * 获取剩余休息时间（秒）
   */
  private getRemainingSeconds(): number {
    return Math.max(0, this.restTime - this.elapsedTime)
  }
  
  /**
   * 格式化时间显示（MM:SS）
   */
  private formatTime(seconds: number): string {
    const m = Math.floor(seconds / 60)
    const s = Math.floor(seconds % 60)
    return `${m.toString().padStart(2, '0')}:${s.toString().padStart(2, '0')}`
  }
  
  aboutToAppear() {
    // SVGA动画会自动循环播放
  }
  
  aboutToDisappear() {
    // 清理SVGA资源
    // this.svgaController.stop()
  }
  
  build() {
    Stack() {
      // 背景渐变
      Column()
        .width('100%')
        .height('100%')
        .linearGradient({
          angle: 180,
          colors: [[0x1a4d6d, 0.0], [0x0d2639, 1.0]]
        })
      
      // 主内容区域
      Column() {
        // SVGA扩散圆环动画 + 中心文本
        Stack({ alignContent: Alignment.Center }) {
          // SVGA扩散动画
          SvgaPlayer({ url: $rawfile('fx_focus_rest_wave.svga')})
            .width(300)
            .height(300)
          
          // 中心文本（叠加在SVGA上方）
          Column() {
            Text('休息时间')
              .fontSize(16)
              .fontColor('#CCFFFFFF')
              .margin({ bottom: 10 })
            
            Text(this.formatTime(this.getRemainingSeconds()))
              .fontSize(33)
              .fontColor(Color.White)
              .fontWeight(FontWeight.Medium)
          }
        }
        .width(250)
        .height(250)
        .margin({ top: 180 })
        
        // 底部按钮区域
        Row() {
          // 结束按钮
          Button('结束')
            .fontSize(16)
            .fontColor(Color.White)
            .backgroundColor('rgba(255, 255, 255, 0.1)')
            .border({ width: 1, color: Color.White, radius: 25 })
            .width(100)
            .height(50)
            .onClick(() => {
              this.onSkip?.()
            })
            .margin({ right: 15 })
          
          // 休息完成按钮
          Button('休息完成')
            .fontSize(16)
            .fontColor('#1a4d6d')
            .backgroundColor(Color.White)
            .width(100)
            .height(50)
            .borderRadius(25)
            .onClick(() => {
              this.onFinish?.()
            })
        }
        .justifyContent(FlexAlign.Center)
        .margin({ top: 200 })
      }
      .width('100%')
      .height('100%')
    }
    .width('100%')
    .height('100%')
  }
}
