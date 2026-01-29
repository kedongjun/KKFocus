const TAG: string = '[TimeUtil]';

export class TimeUtil {


  /**
   * 月份1-12
   */
  static readonly monthList: string[] = (() => {
    const slots: string[] = []
    for (let i = 1; i <= 12; i++) {
      slots.push((i < 10 ? '0' : '') + i)
    }
    return slots
  })()
  /**
   * 年份：1900 - 2070
   */
  static readonly yearList: string[] = (() => {
    const slots: string[] = []
    for (let i = 1900; i <= 2070; i++) {
      slots.push(i + '')
    }
    return slots
  })()

  //把120000这样的时间格式，转换成 HH:mm
  public static formatTimeGetHour(date: string): number {
    let format = "HH:mm"; //yyyy-MM-dd HH:mm:ss
    let formattedDate = format.replace("HH", date.slice(0, 2));
    return Number.parseInt(formattedDate)
  }

  //把120000这样的时间格式，转换成 HH:mm
  public static formatTimeGetMinute(date: string): number {
    let format = "mm"; //yyyy-MM-dd HH:mm:ss
    let formattedDate = format.replace("mm", date.slice(2, 4));
    return Number.parseInt(formattedDate)
  }

  //把120000这样的时间格式，转换成 HH:mm
  public static formatTime(date: string, format?: string): string {
    if (format === undefined || format.length <= 0) {
      format = "HH:mm"; //yyyy-MM-dd HH:mm:ss
    }

    let formattedDate = format.replace("HH", date.slice(0, 2));
    formattedDate = formattedDate.replace("mm", date.slice(2, 4));

    return formattedDate
  }

  //把20250101120000这样日期的格式，转换成自定义格式
  public static formatDate(date: string, format?: string): string {
    if (format === undefined || format.length <= 0) {
      format = "yyyy-MM-dd HH:mm:ss"; //yyyy-MM-dd HH:mm:ss
    }

    let formattedDate = format.replace("yyyy", date.slice(0, 4));
    formattedDate = formattedDate.replace("MM", date.slice(4, 6));
    formattedDate = formattedDate.replace("dd", date.slice(6, 8));
    formattedDate = formattedDate.replace("HH", date.slice(8, 10));
    formattedDate = formattedDate.replace("mm", date.slice(10, 12));
    formattedDate = formattedDate.replace("ss", date.slice(12, 14));
    // formattedDate = formattedDate.replace("fff", date.slice(0,4));

    return formattedDate
  }


  // 格式化日期为 DD
  public static formatDateForDay(date: Date): string {
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const day = String(date.getDate()).padStart(2, '0');
    return `${day}`;
  }


  // 格式化日期为 MM
  public static formatDateForMonth(date: Date): string {
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const day = String(date.getDate()).padStart(2, '0');
    return `${month}`;
  }

  // 格式化日期为 YYYYMMDDD
  public static formatDateForYear(date: Date): string {
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const day = String(date.getDate()).padStart(2, '0');
    return `${year}${month}${day}`;
  }

  // 格式化日期为 YYYY-MM
  public static formatDateForYearMonth(date: Date): string {
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const day = String(date.getDate()).padStart(2, '0');
    return `${year}/${month}`;
  }

  // 格式化日期为 YYYY-MM-DD
  public static formatDateForYearMonthDay(date: Date): string {
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const day = String(date.getDate()).padStart(2, '0');
    return `${year}/${month}/${day}`;
  }

  //获取本月的所有日期
  public static getCurrentMonthDates(today: Date): Array<Date> {
    const currentYear = today.getFullYear();
    const currentMonth = today.getMonth();
    const currentDate = today.getDate();
    // 获取本月第一天
    const firstDay = new Date(currentYear, currentMonth, 1);

    // 获取本月最后一天（下个月的第0天）
    const lastDay = new Date(currentYear, currentMonth + 1, 0);
    const totalDays = lastDay.getDate();

    // 准备结果数组
    let monthDates: Array<Date> = [];

    // 生成本月所有日期
    for (let day = 1; day <= totalDays; day++) {
      monthDates = [...monthDates, new Date(currentYear, currentMonth, day)];
    }
    return monthDates;
  }

  //获取本周的所有日期
  public static getWeekData(today: Date): Array<Date> {
    const dayOfWeek = today.getDay(); // 获取星期几 (0是周日，1是周一，...，6是周六)

    // 计算本周一的日期
    const monday = new Date(today);
    monday.setDate(today.getDate() - (dayOfWeek === 0 ? 6 : dayOfWeek - 1));
    // 生成一周的日期（周一到周日）
    let weekDates: Array<Date> = [];
    for (let i = 0; i < 7; i++) {
      const date = new Date(monday);
      date.setDate(monday.getDate() + i);
      weekDates = [...weekDates, date];
    }

    return weekDates
  }


  //获取本年的每月第一天日期
  public static getFirstDaysOfYear(today: Date): Array<Date> {
    let months: Array<Date> = [];

    for (let month = 0; month < 12; month++) {
      const firstDay = new Date(today.getFullYear(), month, 1);
      months = [...months, firstDay]
    }

    return months;
  }


  // 获取两个日期之间的所有日期
  public static getDatesBetween(startDate: string, endDate: string): Date[] {
    // 验证日期格式
    const dateRegex = /^\d{4}-\d{2}-\d{2}$/;
    if (!dateRegex.test(startDate) || !dateRegex.test(endDate)) {
      throw new Error('日期格式应为YYYY-MM-DD');
    }

    const start = new Date(startDate);
    const end = new Date(endDate);

    // 验证日期有效性
    if (isNaN(start.getTime()) || isNaN(end.getTime())) {
      throw new Error('无效的日期');
    }

    // 确保开始日期不大于结束日期
    if (start > end) {
      return [];
    }

    const dateArray: Date[] = [];
    const currentDate = new Date(start);

    // 使用UTC时间避免夏令时问题
    const utcStart = Date.UTC(
      start.getFullYear(),
      start.getMonth(),
      start.getDate()
    );

    const utcEnd = Date.UTC(
      end.getFullYear(),
      end.getMonth(),
      end.getDate()
    );

    // 按UTC天数计算，避免时区问题
    for (
      let utcDate = utcStart;
      utcDate <= utcEnd;
      utcDate += 24 * 60 * 60 * 1000
    ) {
      dateArray.push(new Date(utcDate));
    }

    return dateArray;
  }


  // 获取当前时间并格式化为 yyyyMMddHHmmss
  public static getCurrentTimeFormatted(): string {
    const now = new Date();
    return TimeUtil.formatDateToStr(now)
  }

  public static  formatDateToStr(date: Date): string {

    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, '0'); // 月份从0开始，所以要+1
    const day = String(date.getDate()).padStart(2, '0');
    const hours = String(date.getHours()).padStart(2, '0');
    const minutes = String(date.getMinutes()).padStart(2, '0');
    const seconds = String(date.getSeconds()).padStart(2, '0');

    return `${year}${month}${day}${hours}${minutes}${seconds}`;
  }


  // 入参格式： yyyyMMddHHmmss
  public static parseTimeString(timeStr: string): Date {
    // 例如：20251128173536
    const year = parseInt(timeStr.slice(0, 4))
    const month = parseInt(timeStr.slice(4, 6)) - 1  // JS Date 的月份从 0 开始
    const day = parseInt(timeStr.slice(6, 8))
    const hour = parseInt(timeStr.slice(8, 10))
    const minute = parseInt(timeStr.slice(10, 12))
    const second = parseInt(timeStr.slice(12, 14))

    return new Date(year, month, day, hour, minute, second)
  }

  // 计算两个时间相差 多少秒
  public static diffSeconds(t1: string, t2: string): number {
    const d1 = TimeUtil.parseTimeString(t1)
    const d2 = TimeUtil.parseTimeString(t2)
    // 毫秒差转秒
    return Math.floor((d1.getTime() - d2.getTime()) / 1000)
  }


  // 时间加一个秒数，得到一个新的时间
  public static addSeconds(timeStr: string, seconds: number): string {
    const date = TimeUtil.parseTimeString(timeStr)
    date.setSeconds(date.getSeconds() + seconds)
    return TimeUtil.formatDateToStr(date)
  }


  static formatVideoSecondsToMMSS(seconds: number) {
    const minutes = Math.floor(seconds / 60)
    const secs = seconds % 60
    const mm = String(minutes).padStart(2, '0')
    const ss = String(secs).padStart(2, '0')
    return `${mm}:${ss}`
  }

  /**
   * 获取前一天最后一秒的 Date 对象（格式：yyyy-MM-dd 23:59:59）
   * @param {Date} [date] 可选：基准日期（默认当前日期）
   * @returns {Date} 前一天最后一秒的 Date 对象
   */
  static getPrevDayLastSecond(date = new Date()) {
    // 1. 获取前一天的日期（00:00:00）
    const prevDay = new Date(date.getTime() - 86400000); // 86400000 = 1天毫秒数
    // 2. 设置时间为 23:59:59
    return new Date(
      prevDay.getFullYear(),
      prevDay.getMonth(),
      prevDay.getDate(),
      23, // 时
      59, // 分
      59  // 秒
    );
  }

  static  parseDateTimeToTimestamp(datetime: string): number {
    if (datetime.length !== 14) {
      console.error("时间格式错误，应为 yyyyMMddHHmmss");
      return 0;
    }

    let year = parseInt(datetime.substring(0, 4));
    let month = parseInt(datetime.substring(4, 6)) - 1;
    let day = parseInt(datetime.substring(6, 8));
    let hour = parseInt(datetime.substring(8, 10));
    let minute = parseInt(datetime.substring(10, 12));
    let second = parseInt(datetime.substring(12, 14));

    let date = new Date(year, month, day, hour, minute, second);
    return date.getTime();  // 返回毫秒时间戳
  }

}