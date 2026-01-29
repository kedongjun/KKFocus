import {
  Acquisition,
  ApiResponse,
  ChecklistViewResponse,
  Page,
  PaginableResponse,
  RowData,
  RowResponse,
  SummaryPage,
  SyncRowResponse,
  UserDeviceInfo,
  PushDevice
} from './BaseDefinition'

export namespace BaseClockDefinition {
  export interface AddConfigAddScheduleInput {
    // aheadTime?: LocalTime;
    // aheadTimeEnd?: LocalTime;
    aheadTime?: string;
    aheadTimeEnd?: string;
    scheduleSwitch?: boolean;
    timeType?: string;
    title?: string;
  }

  export interface AddFinishedInput {
    id?:string
    finishDay?: string;
    finishState?: boolean;
  }

  export interface AddOrUpdateBothClockInput {
    clockSleep?: ClockSleepInput;
    clockWakeup?: ClockWakeupInput;
  }

  export interface AddOrUpdateBothClockInputV2 {
    clockSleep?: ClockSleepInputV2;
    clockWakeup?: ClockWakeupInputV2;
  }

  export interface AddOrUpdateBothClockOutput {
    clockSleepOutput?: AddOrUpdateClockSleepOutput;
    clockWakeupOutput?: AddOrUpdateClockWakeupOutput;
  }

  export interface AddOrUpdateClockNormalOutput {
    clockNormal?: ClockNormalOutput;
    id?: number;
  }

  export interface AddOrUpdateClockSleepOutput {
    clockSleep?: ClockSleepOutput;
    clockSleepFinishedList?: Array<ClockSleepFinishedOutput>;
  }

  export interface AddOrUpdateClockWakeupOutput {
    clockWakeup?: ClockWakeupOutput;
    clockWakeupFinishedList?: Array<ClockWakeupFinishedOutput>;
  }

  export interface AddScheduleConfigInput {
    addScheduleList?: Array<AddConfigAddScheduleInput>;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    title?: string;
  }

  export interface AutoSkipHolidayStatusOutput {
    autoSkipHoliday?: boolean;
  }

  export interface ClockEchoOutput {
    clockNormalList?: Array<ClockNormalOutput>;
    clockSleep?: ClockSleepOutput;
    clockWakeup?: ClockWakeupOutput;
    sleepEvaluate?: SleepEvaluateOutput;
  }

  export interface ClockImportExportData {
    echo?: ClockEchoOutput;
    sleepRecordList?: Array<ClockSleepRecordOutput>;
  }

  export interface ClockNormalInputV2 {
    autoSkipHoliday?: boolean;
    clockSwitch?: boolean;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    gameType?: string;
    id?: number;
    laterRemindDuration?: number;
    soundPath?: string;
    soundType?: string;
    tag?: string;
    time?: LocalTime;
  }

  export interface ClockNormalOutput {
    autoSkipHoliday?: boolean;
    clockSwitch?: boolean;
    created?: Date;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    gameType?: string;
    hour?: number;
    id?: number;
    ip?: string;
    laterRemindDuration?: number;
    minute?: number;
    soundPath?: string;
    soundType?: string;
    tag?: string;
    time?: LocalTime;
    userId?: number;
    viewDay?: number;
  }

  export interface ClockSleepFinishedOutput {
    clockSleepId?: number;
    finishDay?: Date;
    finishState?: boolean;
    id?: number;
    userId?: number;
  }

  export interface ClockSleepInput {
    clockSwitch?: boolean;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    sleepTime?: LocalTime;
    soundPath?: string;
    soundType?: string;
  }

  export interface ClockSleepInputV2 {
    autoSkipHoliday?: boolean;
    clockSwitch?: boolean;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    finishedDayList?: Array<Date>;
    laterRemindDuration?: number;
    hour?: number;
    minute?: number;
    id?: number;
    ip?: string;
    sleepTime?: string;
    soundPath?: string;
    soundType?: string;
    userId?: number;
    viewDay?: number;
    time?:string;
    type?:string
    gameType?:string
  }

  export interface ClockSleepOutput {
    autoSkipHoliday?: boolean;
    clockSwitch?: boolean;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    finishedDayList?: Array<Date>;
    hour?: number;
    id?: string;
    ip?: string;
    laterRemindDuration?: number;
    minute?: number;
    sleepTime?: LocalTime;
    soundPath?: string;
    soundType?: string;
    userId?: number;
    viewDay?: number;
  }

  export interface ClockSleepRecordOutput {
    endTime?: string;
    id?: number;
    ip?: string;
    remark?: string;
    startTime?: string;
    useTime?: number;
    userId?: number;
  }

  export interface ClockSyncDataOutput {
    aheadTime?: string;
    created?: Date;
    deleted?: boolean;
    extend?: object;
    id?: number;
    ruleList?: Array<Rule>;
    shortTitle?: string;
  }

  export interface ClockTodoViewInput {
    clockViewDay?: number;
    endDate?: Date;
    startDate?: Date;
  }

  export interface ClockTodoViewListOutput {
    list?: Array<ClockTodoViewOutput>;
  }

  export interface ClockTodoViewOutput {
    created?: Date;
    finishState?: number;
    id?: number;
    importance?: number;
    intervalType?: number;
    shortTitle?: string;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
    todoType?: number;
    updated?: Date;
    version?: number;
    widgetSubTitle?: string;
  }

  export interface ClockTransferCondition {
    begin?: Date;
    end?: Date;
    futureUserId?: number;
    livelihoodUserId?: number;
    transferId?: number;
    userPhone?: string;
  }

  export interface ClockWakeupFinishedOutput {
    clockWakeupId?: number;
    finishDay?: Date;
    finishState?: boolean;
    id?: number;
    userId?: number;
  }

  export interface ClockWakeupInput {
    clockSwitch?: boolean;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    gameType?: string;
    soundPath?: string;
    soundType?: string;
    wakeupTime?: LocalTime;
  }

  export interface ClockWakeupInputV2 {
    autoSkipHoliday?: boolean;
    clockSwitch?: boolean;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    gameType?: string;
    laterRemindDuration?: number;
    soundPath?: string;
    soundType?: string;
    wakeupTime?: LocalTime;
  }

  export interface ClockWakeupOutput {
    autoSkipHoliday?: boolean;
    clockSwitch?: boolean;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    finishedDayList?: Array<Date>;
    gameType?: string;
    hour?: number;
    id?: number;
    ip?: string;
    laterRemindDuration?: number;
    minute?: number;
    soundPath?: string;
    soundType?: string;
    userId?: number;
    viewDay?: number;
    wakeupTime?: LocalTime;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DeleteScheduleConfigInput {
    id?: number;
  }

  export interface GetAppletDataOutput {
    haveData?: boolean;
    scheduleList?: Array<WorkRestScheduleOutput>;
  }

  export interface IdRequest {
    id: number;
  }

  export interface IdsRequest {
    ids: Array<string>;
  }

  export interface JobPullInput {
    currentMaxId?: number;
    expires?: Date;
    size?: number;
  }

  export interface JobPullOutput {
    extendParams?: Map<string, string>;
    id?: number;
    importance?: number;
    offset?: number;
    pushCode?: string;
    pushTime?: Date;
    pushType?: string;
    ruleId?: number;
    section?: number;
    startDeliverTime?: number;
    targets?: Array<string>;
    taskId?: number;
    templateParams?: Map<string, string>;
    templeteCode?: string;
    todoTime?: Date;
    triggerTime?: Date;
    userId?: number;
    userIds?: Array<number>;
  }

  export interface LaterRemindInput {
    laterRemindTime?: Date;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface NormalLaterRemindInput {
    id?: number;
    laterRemindTime?: Date;
  }

  export interface Rule {
    expression?: string;
    repeatValue?: number;
    type?: string;
  }

  export interface SaveSleepRecordInput {
    endTime?: string;
    remark?: string;
    startTime?: string;
    useTime?: number;
  }

  export interface ScheduleAddFinishedInput {
    finishDay?: Date;
    finishState?: boolean;
    id?: number;
  }

  export interface ScheduleConfigTemplateListOutput {
    templateList?: Array<ScheduleConfigTemplateOutput>;
  }

  export interface ScheduleConfigTemplateOutput {
    id?: number;
    scheduleList?: Array<WorkRestScheduleDefaultV2Output>;
    templateType?: string;
    title?: string;
  }

  export interface ScheduleResetInput {
    scheduleConfigId?: number;
  }

  export interface ScheduleSortInput {
    ids?: Array<number>;
  }

  export interface ScheduleSwitchInput {
    id?: number;
    scheduleSwitch?: boolean;
  }

  export interface SleepDayUseTimeOutput {
    day?: string;
    dayRecordList?: Array<ClockSleepRecordOutput>;
    dayUseTime?: number;
    sleepingEvaluate?: string;
  }

  export interface SleepEvaluateOutput {
    hour?: number;
    minute?: number;
    msg?: string;
    type?: string;
  }

  export interface SleepRecordCountOutput {
    alarmclock_page1?: AlarmClockPageOne;
    alarmclock_page2?: AlarmClockPageTwo;
  }

  export interface SleepRecordDisplayDto {
    sleepRecordDisplay?: number;
  }

  export interface SleepRecordStatisticsInput {
    beginDate?: string;
    endDate?: string;
  }

  export interface SleepStatisticsOutput {
    avgUseHourTime?: number;
    dayList?: Array<SleepDayUseTimeOutput>;
    totalSleepingEvaluate?: string;
    totalUseTime?: number;
  }

  export interface SleepSumRecordOutput {
    countDay?: number;
  }

  export interface SyncDataAppletFinishResponse {
    finishDate?: Date;
    finishState?: boolean;
    id?: number;
  }

  export interface SyncDataRequest {
    fromId?: number;
    fromVersion: number;
    pageSize?: number;
    toVersion: number;
  }

  export interface TodayViewSwitchOutput {
    todayViewSwitch?: boolean;
  }

  export interface UpdateConfigUpdateScheduleInput {
    // aheadTime?: LocalTime;
    // aheadTimeEnd?: LocalTime;
    aheadTime?: string;
    aheadTimeEnd?: string;
    id?: number;
    scheduleSwitch?: boolean;
    timeType?: string;
    title?: string;
  }

  export interface UpdateScheduleConfigInput {
    addScheduleList?: Array<AddConfigAddScheduleInput>;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    deleteScheduleIdList?: Array<number>;
    id?: number;
    title?: string;
    updateScheduleList?: Array<UpdateConfigUpdateScheduleInput>;
  }

  export interface UpdateSleepRecordInput {
    endTime?: string;
    id?: string;
    remark?: string;
    startTime?: String;
    useTime?: number;
  }

  export interface UpdateTodayViewSwitchInput {
    todayViewSwitch?: boolean;
  }

  export interface WakeupQuestionInput {
    clockNormalId?: number;
    gameType?: string;
  }

  export interface WorkRestScheduleConfigInput {
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    id?: number;
    title?: string;
    type?: number;
  }

  export interface WorkRestScheduleConfigListDetailOutput {
    autoSkipHoliday?: boolean;
    todayViewSwitch?: boolean;
    weekend?: WorkRestScheduleConfigOutput;
    workingDay?: WorkRestScheduleConfigOutput;
  }

  export interface WorkRestScheduleConfigListOutput {
    rows:Array<WorkRestScheduleConfigOutput>
  }
  export interface WorkRestScheduleConfigOutput {
    aheadCount?: number;
    autoSkipHoliday?: boolean;
    configStr?: string;
    created?: Date;
    day0?: boolean;
    day1?: boolean;
    day2?: boolean;
    day3?: boolean;
    day4?: boolean;
    day5?: boolean;
    day6?: boolean;
    deleted?: boolean;
    id?: number;
    ip?: string;
    oldUserCode?: number;
    sort?: number;
    title?: string;
    todayViewSwitch?: boolean;
    type?: number;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface WorkRestScheduleConfigUpdateAutoSkipHolidayInput {
    autoSkipHoliday?: boolean;
  }

  export interface WorkRestScheduleConfigUpdateInput {
    autoSkipHoliday?: boolean;
    todayViewSwitch?: boolean;
    weekend?: WorkRestScheduleConfigInput;
    workingDay?: WorkRestScheduleConfigInput;
  }

  export interface WorkRestScheduleConfigUpdateTitleInput {
    id?: number;
    title?: string;
  }

  export interface WorkRestScheduleDefaultV2Output {
    // aheadTime?: LocalTime;
    // aheadTimeEnd?: LocalTime;
    aheadTime?: string;
    aheadTimeEnd?: string;
    defaultConfigId?: number;
    logo?: string;
    timeType?: string;
    title?: string;
  }

  export interface WorkRestScheduleDeleteInput {
    id?: number;
  }

  export interface WorkRestScheduleDetailInput {
    id?: number;
  }

  export interface WorkRestScheduleInputV1 {
    aheadTime?: LocalTime;
    content?: string;
    id?: number;
    logo?: string;
    title?: string;
    type?: number;
  }

  export interface WorkRestScheduleInputV2 {
    aheadTime?: LocalTime;
    aheadTimeEnd?: LocalTime;
    id?: number;
    scheduleSwitch?: boolean;
    title?: string;
    type?: number;
  }

  export interface WorkRestScheduleInputV3 {
    aheadTime?: LocalTime;
    aheadTimeEnd?: LocalTime;
    id?: number;
    scheduleSwitch?: boolean;
    timeType?: string;
    title?: string;
    type?: number;
  }

  export interface WorkRestScheduleInputV4 {
    aheadTime?: LocalTime;
    aheadTimeEnd?: LocalTime;
    configId?: number;
    id?: number;
    scheduleSwitch?: boolean;
    timeType?: string;
    title?: string;
    type?: number;
  }

  export interface WorkRestScheduleListInput {
    type?: number;
  }

  export interface WorkRestScheduleListInputV2 {
    currentDateTime?: Date;
    type?: number;
  }

  export interface WorkRestScheduleListInputV4 {
    configId?: number;
    currentDateTime?: string;
  }

  export interface WorkRestScheduleListOutput {
    config?: WorkRestScheduleConfigOutput;
    scheduleList?: Array<WorkRestScheduleOutput>;
  }

  export interface WorkRestScheduleListOutputV4 {
    configList?: Array<WorkRestScheduleConfigOutput>;
    currentConfig?: WorkRestScheduleConfigOutput;
    scheduleList?: Array<WorkRestScheduleOutput>;
  }

  export interface WorkRestScheduleOutput {
    // aheadTime?: LocalTime;
    // aheadTimeEnd?: LocalTime;
    aheadTime?: string;
    aheadTimeEnd?: string;
    configId?: number;
    content?: string;
    created?: Date;
    deleted?: boolean;
    id?: number;
    img?: string;
    ip?: string;
    logo?: string;
    oldUserCode?: number;
    scheduleSwitch?: boolean;
    timeType?: string;
    title?: string;
    type?: number;
    updated?: Date;
    userId?: number;
    version?: number;
    //自定义参数
    isHighlight?: boolean;
  }

  export interface WorkRestScheduleSimpleListOutput {
    configList?: Array<WorkRestScheduleConfigOutput>;
    workRestScheduleList?: Array<WorkRestScheduleSimpleOutput>;
  }

  export interface WorkRestScheduleSimpleOutput {
    aheadTime?: string;
    aheadTimeEnd?: string;
    configId?: number;
    duration?: number;
    id?: number;
    logo?: string;
    scheduleSwitch?: boolean;
    timeType?: string;
    title?: string;
    type?: number;
  }

  export interface WorkRestScheduleTimeInput {
    aheadTime?: LocalTime;
  }

  export interface WorkRestScheduleTodoViewInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface WorkRestScheduleTodoViewListOutput {
    list?: Array<WorkRestScheduleTodoViewOutput>;
  }

  export interface WorkRestScheduleTodoViewOutput {
    created?: Date;
    duration?: number;
    finishState?: number;
    id?: number;
    importance?: number;
    intervalType?: number;
    shortTitle?: string;
    subTitle?: string;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
    todoType?: number;
    updated?: Date;
    version?: number;
    widgetSubTitle?: string;
  }

  export interface WorkRestScheduleTransferConditionV2 {
    begin?: Date;
    end?: Date;
    futureUserId?: number;
    livelihoodUserId?: number;
    transferId?: number;
    userPhone?: string;
  }

  export interface YesterdayGoodSleepInput {
    now?: Date;
  }

  export interface YesterdayGoodSleepOutput {
    has?: boolean;
  }

  export interface AlarmClockPageOne {
    avgUseHourTime?: number;
    goodSleepRate?: number;
    sleepDayCount?: number;
    sleepTimeInterval?: string;
    totalSleepingEvaluate?: string;
    wakeupTimeInterval?: string;
  }

  export interface AlarmClockPageTwo {
    latestSleepDay?: Date;
  }

  export interface WakeupQuestionUsingPOSTRsp {
    content?: string;
    id?: number;
    title?: string;
    type?: string;
  }
}
