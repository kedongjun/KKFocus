/**
 * 番茄钟UI组件 - 纯视图层，只负责渲染
 * 
 * 职责：
 * - 使用Canvas绘制圆环倒计时动画
 * - 显示当前番茄数和剩余时间
 * - 不包含任何业务逻辑
 * 
 * @author kedongjun
 * @since 2025-01-27
 */
@Component
export struct TomatoClock {
  // ============ 组件尺寸 ============
  @State widthX: number = 250
  @State heightX: number = 250
  
  // ============ 显示数据（从外部传入）============
  @Prop @Watch('onDataChange') tomatoNum: number          // 总番茄数
  @Prop @Watch('onDataChange') currentSegment: number     // 当前进行到第几个番茄（0-based）
  @Prop @Watch('onDataChange') elapsedTime: number        // 当前番茄已用时间（秒）
  @Prop @Watch('onDataChange') segmentTime: number        // 每个番茄的时长（秒）
  
  // ============ 样式配置 ============
  private gapAngle: number = 13    // 间隔角度
  private lineWidth: number = 8    // 圆环宽度
  
  // ============ Canvas相关 ============
  private settings: RenderingContextSettings = new RenderingContextSettings(true)
  private canvasContext: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.settings)

  /**
   * 数据变化时的回调 - 重新绘制Canvas
   */
  onDataChange() {
    // 当任何被监听的@Prop变化时，重新绘制
    if (this.canvasContext) {
      this.drawClock()
    }
  }

  /**
   * 获取当前显示的番茄序号（1-based，用于UI显示）
   */
  private getDisplayCount(): number {
    return Math.min(this.currentSegment + 1, this.tomatoNum)
  }

  /**
   * 获取当前番茄的剩余秒数
   */
  private getRemainingSeconds(): number {
    return Math.max(0, this.segmentTime - this.elapsedTime)
  }

  /**
   * 主绘制函数
   */
  private drawClock() {
    const ctx = this.canvasContext
    const centerX = this.widthX / 2
    const centerY = this.heightX / 2
    const radius = this.widthX / 2 - 10

    const totalGapAngle = this.gapAngle * (this.tomatoNum - 1)
    const perSegmentAngle = (360 - totalGapAngle) / this.tomatoNum
    const totalTime = this.tomatoNum * this.segmentTime

    // 清空画布
    ctx.clearRect(0, 0, this.widthX, this.heightX)
    
    // 1. 绘制灰色底环（整个圆环）
    ctx.beginPath()
    ctx.lineWidth = this.lineWidth
    ctx.strokeStyle = '#3DFFFFFF'  // 灰色底
    ctx.arc(centerX, centerY, radius, 0, 2 * Math.PI)
    ctx.stroke()

    // 2. 绘制白色未完成部分
    this.drawWhiteParts(ctx, centerX, centerY, radius, perSegmentAngle)

    // 3. 绘制绿色已完成部分
    this.drawGreenProgress(ctx, centerX, centerY, radius, perSegmentAngle, totalGapAngle, totalTime)
    
    // 4. 绘制灰色间隔线（在最上层）
    this.drawGrayGaps(ctx, centerX, centerY, radius, perSegmentAngle)
  }

  /**
   * 绘制白色未完成部分
   */
  private drawWhiteParts(
    ctx: CanvasRenderingContext2D,
    centerX: number,
    centerY: number,
    radius: number,
    perSegmentAngle: number
  ) {
    // 计算已完成的总角度
    const completedSegments = Math.min(this.currentSegment, this.tomatoNum)
    const curElapsed = Math.min(this.elapsedTime, this.segmentTime - 0.01)
    const totalElapsed = completedSegments * this.segmentTime + curElapsed
    const totalTime = this.tomatoNum * this.segmentTime
    const totalGapAngle = this.gapAngle * (this.tomatoNum - 1)
    const availableArc = 360 - totalGapAngle
    const filledArc = (totalElapsed / totalTime) * availableArc
    
    // 绘制白色部分（未完成的部分）
    ctx.lineWidth = this.lineWidth
    ctx.strokeStyle = '#FFFFFFFF'  // 白色
    ctx.lineCap = 'round'
    
    let accumulatedArc = 0
    for (let i = 0; i < this.tomatoNum; i++) {
      const segStartDeg = -90 + i * (perSegmentAngle + this.gapAngle)
      const segEndDeg = segStartDeg + perSegmentAngle
      
      if (accumulatedArc >= filledArc) {
        // 这个段完全未完成，绘制整段白色
        ctx.beginPath()
        ctx.arc(centerX, centerY, radius, segStartDeg * Math.PI / 180, segEndDeg * Math.PI / 180)
        ctx.stroke()
      } else if (accumulatedArc + perSegmentAngle > filledArc) {
        // 这个段部分完成，绘制剩余的白色部分
        const completedInThisSegment = filledArc - accumulatedArc
        const whiteStartDeg = segStartDeg + completedInThisSegment
        ctx.beginPath()
        ctx.arc(centerX, centerY, radius, whiteStartDeg * Math.PI / 180, segEndDeg * Math.PI / 180)
        ctx.stroke()
      }
      // else: 这个段已完全完成，不绘制白色
      
      accumulatedArc += perSegmentAngle
    }
  }

  /**
   * 绘制灰色间隔线
   */
  private drawGrayGaps(
    ctx: CanvasRenderingContext2D,
    centerX: number,
    centerY: number,
    radius: number,
    perSegmentAngle: number
  ) {
    ctx.lineWidth = this.lineWidth
    ctx.strokeStyle = '#3DFFFFFF'  // 灰色间隔
    ctx.lineCap = 'butt'
    
    for (let i = 1; i < this.tomatoNum; i++) {
      const gapStartDeg = -90 + i * (perSegmentAngle + this.gapAngle) - this.gapAngle
      const gapEndDeg = gapStartDeg + this.gapAngle
      
      ctx.beginPath()
      ctx.arc(centerX, centerY, radius, gapStartDeg * Math.PI / 180, gapEndDeg * Math.PI / 180)
      ctx.stroke()
    }
  }

  /**
   * 绘制绿色进度圆环
   */
  private drawGreenProgress(
    ctx: CanvasRenderingContext2D,
    centerX: number,
    centerY: number,
    radius: number,
    perSegmentAngle: number,
    totalGapAngle: number,
    totalTime: number
  ) {
    // 计算当前总进度
    const completedSegments = Math.min(this.currentSegment, this.tomatoNum)
    const curElapsed = Math.min(this.elapsedTime, this.segmentTime - 0.01) // 避免超画
    const totalElapsed = Math.min(completedSegments * this.segmentTime + curElapsed, totalTime)
    
    const availableArc = 360 - totalGapAngle
    const filledArc = (totalElapsed / totalTime) * availableArc
    let remainingArc = filledArc

    // 绘制绿色进度
    ctx.lineWidth = this.lineWidth
    ctx.strokeStyle = '#FF7AB961'
    ctx.lineCap = 'round'

    for (let i = 0; i < this.tomatoNum; i++) {
      if (remainingArc <= 0) break
      
      const segStartDeg = -90 + i * (perSegmentAngle + this.gapAngle)
      const segEndDeg = segStartDeg + perSegmentAngle

      if (remainingArc >= perSegmentAngle) {
        // 该段完整填充
        ctx.beginPath()
        ctx.arc(centerX, centerY, radius, segStartDeg * Math.PI / 180, segEndDeg * Math.PI / 180)
        ctx.stroke()
        remainingArc -= perSegmentAngle
      } else {
        // 该段部分填充
        ctx.beginPath()
        ctx.arc(centerX, centerY, radius, segStartDeg * Math.PI / 180, (segStartDeg + remainingArc) * Math.PI / 180)
        ctx.stroke()
        break
      }
    }
  }

  /**
   * 格式化时间显示（MM:SS）
   */
  private formatTime(seconds: number): string {
    const m = Math.floor(seconds / 60)
    const s = Math.floor(seconds % 60)
    return `${m.toString().padStart(2, '0')}:${s.toString().padStart(2, '0')}`
  }

  /**
   * 当任何 @Prop 发生变化时，重新绘制
   */
  aboutToAppear() {
    // 初始化绘制
    this.drawClock()
  }

  build() {
    Column() {
      // Canvas画布
      Canvas(this.canvasContext)
        .width(this.widthX)
        .height(this.heightX)
        .onReady(() => {
          this.drawClock()
        })

      // 中心显示区域
      Column() {
        // 当前番茄序号
        Row() {
          Image($r('app.media.focus_start_tomato')).width(24).height(24)
          Image($r('app.media.common_icon_cancer_white')).width(24).height(24)
          Text(this.getDisplayCount().toString())
            .fontColor(Color.White)
            .fontSize(24)
            .textAlign(TextAlign.Center)
        }
        .justifyContent(FlexAlign.Center)
        .margin({ top: -16 })

        // 剩余时间
        Text(this.formatTime(this.getRemainingSeconds()))
          .fontSize(30)
          .fontColor(Color.White)
          .fontWeight(FontWeight.Regular)
          .margin({ top: 6 })
      }
      .alignItems(HorizontalAlign.Center)
      .position({ x: this.widthX / 2 - 35, y: this.heightX / 2 - 30 })
    }
  }
}
