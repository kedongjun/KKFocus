
export namespace BaseFocusDefinition {
  export interface AddFocusRepeatInput {
    focusType?: number;
    repeatConfig?: FocusRepeatConfig;
    title?: string;
  }

  export interface BatchLinkUseTimeInput {
    list?: Array<LinkUseTimeInput>;
  }

  export interface BatchUpdateLinkInput {
    id?: string;
    linkType?: string;
    linkUniqueKey?: string;
  }

  export interface BatchUpdateLinkListInput {
    list?: Array<BatchUpdateLinkInput>;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DayUseTimeCountOutput {
    day?: string;
    dayUseTime?: number;
  }



  export interface DayUseTimeDetailOutput {
    beginDate?: string;
    day?: string;
    dayUseCount?: number;
    dayUseTime?: number;
    endDate?: string;
  }

  export interface DelFocusRecordInput {
    id?: string;
  }

  export interface DeleteFocusRepeatInput {
    deleteRecord?: boolean;
    id?: string;
  }

  export interface FindByLinkTypeAndDayInput {
    endDay?: Date;
    linkType?: Array<string>;
    startDay?: Date;
  }

  export interface FindPureFocusByDayInput {
    endDay?: Date;
    startDay?: Date;
  }

  export interface FocusBarDayStatisticsOutputV3 {
    averageUseTime?: number;
    detailList?: Array<FocusRecordOutputV2>;
    giveupCount?: number;
    hourUseTimeList?: Array<HourUseTimeCountOutput>;
    totalCount?: number;
    totalUseTime?: number;
  }

  export interface FocusBarStatisticsOutputV3 {
    averageUseTime?: number;
    barChartItemList?: Array<DayUseTimeCountOutput>;
    giveupCount?: number;
    lastTotalUseTime?: number;
    recordList?: Array<DayUseTimeDetailOutput>;
    totalCount?: number;
    totalUseTime?: number;
  }

  export interface FocusCompleteMusicListOutput {
    list?: Array<FocusCompleteMusicOutput>;
  }

  export interface FocusCompleteMusicOutput {
    code?: string;
    seconds?: string;
    title?: string;
    url?: string;
    grayImg?: string;
    blackImg?: string | Resource;
    blueImg?: string | Resource;

    isDownloaded?: boolean; // 是否已下载
    isSelected?: boolean;   // 是否已选中
    isRaw?: boolean;   // 是否rawFile
  }

  export interface FocusEarlyFinishCountOutput {
    allTimes?: number;
    recordTimes?: number;
  }

  export interface FocusImportExportData {
    recordList?: Array<FocusDetail>;
  }

  export interface FocusPieStatisticsOutputV3 {
    averageUseTime?: number;
    giveupCount?: number;
    lastTotalUseTime?: number;
    pieChartItemList?: Array<PieChartDetailOutput>;
    totalCount?: number;
    totalUseTime?: number;
  }

  export interface FocusRecordDetailInput {
    id?: string;
  }

  export interface FocusRecordEventInputV2 {
    content?: string;
    eventTime: string;
    eventType: number;
    focusMinute: number;
    // eventTimestamp: number;//本地记录使用
  }

  export interface FocusRecordEventOutputV2 {
    content?: string;
    eventTime: string;
    eventType?: number;
    focusMinute: number;
    recordId?: number;
  }

  export interface FocusRecordGiveupInput {
    endTime: Date;
    eventList?: Array<FocusRecordEventInputV2>;
    focusNum?: number;
    focusType: number;
    fullTime: number;
    linkId?: number;
    linkType?: string;
    linkUniqueKey?: string;
    musicName?: string;
    remark?: string;
    repeatId?: number;
    startTime: Date;
    title: string;
    useTime: number;
  }

  export interface FocusRecordInput {
    endTime?: Date;
    finishState?: string;
    fullTime?: number;
    linkId?: number;
    linkType?: string;
    musicName?: string;
    remark?: string;
    startTime?: Date;
    suspendList?: Array<FocusRecordSuspendInput>;
    title?: string;
    useTime?: number;
  }

  export interface FocusRecordInputV2 {
    endTime?: string;
    eventList?: Array<FocusRecordEventInputV2>;
    focusNum?: number;
    focusType?: number;
    fullTime?: number;
    linkId?: number;
    linkType?: string;
    linkUniqueKey?: string;
    musicName?: string;
    remark?: string;
    startTime?: string;
    title?: string;
    useTime?: number;
  }

  export interface FocusRecordOutputV2 {
    created?: string;
    deleted?: boolean;
    endTime?: string;
    eventList?: Array<FocusRecordEventOutputV2>;
    focusNum?: number;
    focusType?: number;
    fullTime?: number;
    id?: string;
    linkId?: number;
    linkType?: string;
    linkUniqueKey?: string;
    musicName?: string;
    remark?: string;
    startTime?: string;
    title?: string;
    updated?: string;
    useTime?: number;
    version?: number;
  }

  export interface FocusRecordSuspendInput {
    content?: string;
    duration?: number;
    timePoint?: number;
  }

  export interface FocusRecordSuspendOutput {
    content?: string;
    duration?: number;
    ip?: string;
    recordId?: number;
    timePoint?: number;
  }

  export interface FocusRecordUpdateInputV2 {
    endTime?: string;
    eventList?: Array<FocusRecordEventInputV2>;
    focusNum?: number;
    focusType?: number;
    fullTime?: number;
    id?: string;
    musicName?: string;
    remark?: string;
    startTime?: string;
    title?: string;
    useTime?: number;
  }

  export interface FocusRepeatDetailOutput {
    finished?: boolean;
    focusType?: number;
    id?: string;
    repeatConfig?: FocusRepeatConfig;
    title?: string;
  }

  export interface FocusRepeatOutput {
    finishList?: Array<FocusRepeatDetailOutput>;
    unFinishList?: Array<FocusRepeatDetailOutput>;
  }

  export interface FocusRestIntervalOutput {
    restInterval?: number;
  }

  export interface FocusSearchByDayOutput {
    allCount?: number;
    checkCount?: number;
    list?: Array<FocusDetail>;
    sumTime?: number;
  }

  export interface FocusSearchByWeekListOutput {
    allCount?: number;
    checkCount?: number;
    list?: Array<FocusSearchByWeekOutput>;
    sumTime?: number;
  }

  export interface FocusSearchByWeekOutput {
    day?: Date;
    list?: Array<FocusDetail>;
  }

  export interface FocusShortCutAppletInput {
    currentDateTime?: Date;
  }

  export interface FocusShortCutAppletOutput {
    allUseTime?: number;
    avgUseTime?: number;
    todayUseTime?: number;
    totalFocusCount?: number;
    totalUseTime?: number;
  }

  export interface FocusStartInput {
    focusType: number;
  }

  export interface FocusStatisticsInput {
    beginDate?: Date;
    endDate?: Date;
  }

  export interface FocusStatisticsOutput {
    averageUseTime?: number;
    dayUseTimeList?: Array<DayUseTimeCountOutput>;
    finishedCount?: number;
    recordList?: Array<FocusDetail>;
    totalUseTime?: number;
    unfinishedCount?: number;
  }

  export interface FocusStatisticsOutputV2 {
    averageUseTime?: number;
    dayUseTimeList?: Array<DayUseTimeCountOutput>;
    recordList?: Array<FocusRecordOutputV2>;
    totalCount?: number;
    totalUseTime?: number;
  }

  export interface FocusSumOutput {
    sumTime?: number;
  }

  export interface FocusTipsAddInput {
    content?: string;
  }

  export interface FocusTipsOutput {
    content?: string;
    id?: string;
  }

  export interface FocusTipsSwitchInput {
    tipsSwitch?: boolean;
  }

  export interface FocusTipsUpdateInput {
    content?: string;
    id?: string;
  }

  export interface FocusTipsWithSwitchOutput {
    tipsList?: Array<FocusTipsOutput>;
    tipsSwitch?: boolean;
  }

  export interface FocusTransferCondition {
    begin?: Date;
    end?: Date;
    futureUserId?: number;
    livelihoodUserId?: number;
    transferId?: number;
    userPhone?: string;
  }

  export interface FocusUpdateTitleInput {
    id?: string;
    remark?: string;
    title?: string;
  }

  export interface FocusVersionInput {
    version?: string;
  }

  export interface HourUseTimeCountOutput {
    hour?: number;
    useTime?: number;
  }

  export interface IdRequest {
    id: string;
  }

  export interface IdsRequest {
    ids: Array<string>;
  }

  export interface IpImageInput {
    image: string;
  }

  export interface JoinRoomInput {
    id: string;
    password?: string;
  }

  export interface LinkUseTimeInput {
    linkType?: string;
    linkUniqueKey?: string;
  }

  export interface LinkUseTimeOutput {
    userTime?: number;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface MemberDto {
    continuousDays?: number;
    created?: Date;
    image?: string;
    ipImaged?: boolean;
    publiced?: boolean;
    reported?: boolean;
    seat?: number;
    sort?: number;
    status?: number;
    todayMinutes?: number;
    totalDays?: number;
    userInfo?: UserOutput;
  }

  export interface MyImageInput {
    image: string;
    ipImaged: boolean;
  }

  export interface PaginableRequest {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface PieChartDetailOutput {
    color?: string;
    count?: number;
    id?: string;
    percent?: number;
    repeated?: boolean;
    title?: string;
    useTime?: number;
  }

  export interface PublicMyFocusInput {
    publiced: boolean;
  }

  export interface RecordCountOutput {
    focus_page1?: FocusPageOne;
    focus_page2?: FocusPageTwo;
    focus_page3?: FocusPageThree;
  }

  export interface RepeatFocusRecordInput {
    endTime: string;
    eventList?: Array<FocusRecordEventInputV2>;
    focusNum?: number;
    focusType: number;
    fullTime: number;
    linkId?: number;
    linkType?: string;
    linkUniqueKey?: string;
    musicName?: string;
    remark?: string;
    repeatId: string;
    startTime: string;
    title: string;
    useTime: number;
  }

  export interface SelectSeatInput {
    seat: number;
  }

  export interface SelfStudyRoomPieStatisticsOutput {
    memberInfo?: MemberDto;
    pieChartItemList?: Array<PieChartDetailOutput>;
  }

  export interface SelfStudyRoomReportInput {
    linkId: string;
    reason: string;
    reportType: string;
  }

  export interface SelfStudyRoomReportProcessedInput {
    linkId: number;
    reportType: string;
  }

  export interface SelfStudyRoomStatisticsInput {
    roomId: string;
    userId: string;
  }

  export interface SyncDataRequest {
    fromId: number;
    fromVersion: number;
    pageSize: number;
    toVersion: number;
  }

  export interface UpdateFocusRepeatInput {
    id?: string;
    repeatConfig?: FocusRepeatConfig;
    title?: string;
  }

  export interface UpdateFocusRepeatStatusInput {
    finished?: boolean;
    id?: string;
  }

  export interface UpdateFocusRestIntervalInput {
    restInterval?: number;
  }

  export interface UpdateRemarkInput {
    id?: string;
    remark?: string;
  }

  export interface UserOutput {
    deleted?: boolean;
    roomOwner?: boolean;
    userId?: string;
    userImg?: string;
    userName?: string;
  }

  export interface FocusDetail {
    endTime?: Date;
    finishState?: string;
    fullTime?: number;
    id?: number;
    ip?: string;
    linkId?: number;
    linkType?: string;
    musicName?: string;
    remark?: string;
    startTime?: Date;
    suspendList?: Array<FocusRecordSuspendOutput>;
    title?: string;
    useTime?: number;
  }

  export interface FocusRepeatConfig {
    acrossed?: boolean;
    autoRested?: boolean;
    endTime?: string;
    focusModel?: string;
    focusNum?: number;
    lockType?: string;
    opened?: boolean;
    restTime?: number;
    startTime?: string;
    stricted?: boolean;
    time?: number;
    weekRule?: string;
  }

  export interface FocusPageOne {
    focusCount?: number;
    focusDayCount?: number;
    focusMinuteCount?: number;
  }

  export interface FocusPageTwo {
    focusTimeInterval?: string;
    focusTypeName?: string;
  }

  export interface FocusPageThree {
    favoriteFocusDay?: Date;
    favoriteFocusTitle?: string;
    mostFocusMinute?: number;
  }

  export interface RecordListUsingPOSTRequestBody {
    beginDate?: string;
    endDate?: string;
    pageNum: number;
    pageSize: number;
    repeatId?: string;
  }

  export interface StatisticRecordListInputV4 {
    beginDate?: string;
    endDate?: string;
    pageNum: number;
    pageSize: number;
    title: string;
  }

  export interface StatisticBarChartInputV3 {
    beginDate?: string;
    endDate?: string;
    repeatId?: number;
    type: string;
  }

  export interface ImageListUsingPOSTRsp {
    id?: number;
    image: string;
    viped: boolean;
  }

  export interface SelfStudyRoomInfo {
    durationUnit?: string;
    focusPubliced: boolean;
    id?: string;
    joinNum?: number;
    maxNum?: number;
    minDuration?: number;
    notCalcLockTime: boolean;
    numCustomed: boolean;
    originSubTitle?: string;
    originTitle?: string;
    password?: string;
    publiced: boolean;
    reported?: boolean;
    requireMinDuration: boolean;
    requirePassword: boolean;
    roomNumber?: string;
    roomOwner?: boolean;
    subTitle: string;
    title: string;
    top5List?: Array<UserOutput>;
  }

  export interface SelfStudyRoomDetail {
    durationUnit?: string;
    focusNum?: number;
    focusPubliced: boolean;
    id?: string;
    joinNum?: number;
    maxNum?: number;
    memberList?: Array<MemberDto>;
    minDuration?: number;
    mySelf?: MemberDto;
    notCalcLockTime: boolean;
    numCustomed: boolean;
    originSubTitle?: string;
    originTitle?: string;
    password?: string;
    publiced: boolean;
    reported?: boolean;
    requireMinDuration: boolean;
    requirePassword: boolean;
    roomNumber?: string;
    roomOwner?: boolean;
    subTitle: string;
    title: string;
    top5List?: Array<UserOutput>;
  }

  export interface LinkTotalTimeInput {
    linkType?: string;
    linkUniqueKey?: string;
  }

  export interface LinkTotalTimeInputOutput {
    useTimeDesc?: string;
    useTime?: number;
  }
  export interface FocusLinkListInput {
    linkType?: string;
    linkUniqueKey?: string;
  }

  export interface FocusLinkOutput{
    created?: string;
    endTime?: string;
    focusNum?: number;
    focusType?: number;
    fullTime?: number;
    id?: string;
    linkType?: string;
    linkUniqueKey?: string;
    startTime?: string;
    title?: string;
    updated?: string;
    useTime?: number;
  }
  export interface FocusLinkListOutput{
   rows?:Array<FocusLinkOutput>
   totalUseTime?:number
  }

  export interface FocusFocusAllListFilterLinked {
    linkType?: string;
    linkUniqueKey?: string;
  }

  export interface FocusAllListInput {
    keyword?:string;
    startTime?:string;
    endTime?:string;
    filterLinked?:FocusFocusAllListFilterLinked
  }
  export interface FocusAllOutput {
    created?: string;
    endTime?: string;
    focusNum?: number;
    focusType?: number;
    fullTime?: number;
    id?: string;
    linkType?: string;
    linkUniqueKey?: string;
    startTime?: string;
    title?: string;
    updated?: string;
    useTime?: number;
  }
  export interface FocusAllListOutput {
    rows?:Array<FocusLinkOutput>
  }

}
