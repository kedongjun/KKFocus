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

export namespace BaseWaterDefinition {
  export interface AddWaterClassifyInput {
    isAlcohol?: boolean;
    name?: string;
    waterAdditionPct?: number;
    waterClassifyId?: string;
    waterClassifyVersion?: string;
    waterPct?: number;
  }

  export interface AppletHistoryResponse {
    created?: Date;
    id?: number;
    params?: object;
    subTitle?: string;
    title?: string;
  }

  export interface BooleanResponse {
    flag?: boolean;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DayReportInput {
    day: string;
    version: string;
  }

  export interface DelWaterLogInput {
    drinkDateTime?: string;
    id?: string;
    waterClassifyVersion?: string;
  }

  export interface DrinkWaterPage1 {
    dailyTarget?: number;
    dayDrinkAverage?: number;
    dayDrinkLessThan500Count?: number;
    finishDayCount?: number;
    hasWaterDayCount?: number;
  }

  export interface DrinkWaterPage2 {
    beverageList?: Array<WaterReportBeverageView>;
  }

  export interface GetItemDetailInput {
    drinkDateTime?: Date;
    id?: string;
  }

  export interface GetLogByDayInput {
    day?: string;
  }

  export interface GetWaterClassifyOutput {
    displayWaterClassifys?: Array<WaterClassifyOutput>;
    hiddenWaterClassifys?: Array<WaterClassifyOutput>;
  }

  export interface GetWaterConfigInput {
    waterClassifyVersion?: string;
  }

  export interface GetWaterConfigOutput {
    capacityPer?: number;
    dailyTarget?: number;
    firstRemindTime?: string;
    lastRemindTime?: string;
    remindInterval?: number;
    reminded?: boolean;
    totalCapacity?: number;
    waterTips?: string;
  }

  export interface GetWaterLogOutput {
    dailyTarget?: number;
    dailyTargetWithAddition?: number;
    todoDate?: string;
    totalCapacity?: number;
    waterLogDetails?: Array<WaterLogDetailOutput>;
  }

  export interface GetWaterShortcutOutput {
    capacityPer?: number;
    dailyTarget?: number;
    firstRemindTime?: string;
    haveData?: boolean;
    lastRemindTime?: string;
    remindInterval?: number;
    reminded?: boolean;
    totalCapacity?: number;
    waterTips?: string;
  }

  export interface GetWaterShortcutOutputV2 {
    dailyTarget?: number;
    dailyTargetWithAddition?: number;
    displayWaterClassifys?: Array<WaterClassifyOutput>;
    haveData?: boolean;
    ossRootPath?: string;
    quickCapacityList?: Array<QuickCapacityOutput>;
    totalCapacity?: number;
  }

  export interface IdRequest {
    id: number;
  }

  export interface InitWaterConfigInput {
    dailyTarget: number;
  }

  export interface InitWaterConfigInputV2 {
    dailyTarget: number;
    firstRemindTime?: string;
    isRemind?: boolean;
    lastRemindTime?: string;
    remindInterval?: number;
    remindType?: string;
    timingRemindTimes?: Array<LocalTime>;
    waterClassifyVersion?: string;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface LogsByAreaDayInput {
    endDay?: string;
    startDay?: string;
  }

  export interface QuickCapacityInput {
    capacity?: number;
    id?: number;
  }

  export interface QuickCapacityOutput {
    capacity?: number;
    id?: number;
  }

  export interface RestNotRemindInput {
    isRemind?: boolean;
    restEndTime?: string;
    restStartTime?: string;
  }

  export interface Rule {
    expression?: string;
    repeatValue?: number;
    type?: string;
  }

  export interface SortWaterClassifyInput {
    fromDataId: string;
    fromIsSystem: boolean;
    toDataId?: string;
    toIsSystem?: boolean;
  }

  export interface SyncDataAppletResponse {
    aheadTime?: string;
    created?: Date;
    deleted?: boolean;
    extend?: object;
    id?: number;
    ruleList?: Array<Rule>;
    shortTitle?: string;
  }

  export interface SyncDataRequest {
    fromId: number;
    fromVersion: number;
    pageSize: number;
    toVersion: number;
  }

  export interface TimeAreaReportInput {
    day: string;
    reportType: string;
    version: string;
  }

  export interface UpdateDailyTargetInput {
    dailyTarget: number;
  }

  export interface UpdateIntelligenceRemindOutput {
    nextRemindTime?: string;
  }

  export interface UpdateMsgPushTypeInput {
    msgPushType?: string;
  }

  export interface UpdateRemindTimeInput {
    firstRemindTime?: string;
    lastRemindTime?: string;
    remindInterval?: number;
    remindType?: string;
    timingRemindTimes?: Array<string>;
  }

  export interface UpdateWaterClassifyInput {
    id?: string;
    isAlcohol?: boolean;
    name?: string;
    waterAdditionPct?: number;
    waterClassifyId?: string;
    waterClassifyVersion?: string;
    waterPct?: number;
  }

  export interface UpdateWaterConfigInput {
    capacityPer?: number;
    dailyTarget?: number;
    firstRemindTime?: string;
    lastRemindTime?: string;
    remindInterval?: number;
    reminded?: boolean;
  }

  export interface UpdateWaterLogInput {
    capacity: number;
    classifyId?: string;
    drinkDateTime?: string;
    id?: string;
    isSystemClassify?: boolean;
    oldDrinkDateTime?: string;
    uuid?: string;
    waterClassifyVersion?: string;
  }

  export interface UpdateWaterLogOutput {
    newWaterLog?: WaterLogOutput;
    oldWaterLog?: WaterLogOutput;
    waterLogDetail?: WaterLogDetailOutput;
  }

  export interface WaterAppletHistoryInput {
    params?: Array<Map<string, object>>;
  }

  export interface WaterClassifyInput {
    waterClassifyVersion?: string;
  }

  export interface WaterClassifyMoveInput {
    id?: string;
    isSystem?: boolean;
  }

  export interface WaterClassifyOutput {
    flatIconUrl?: string;
    id?: string;
    isAlcohol?: boolean;
    isSystem?: boolean;
    name?: string;
    statisticsColor?: string;
    userId?: number;
    waterAdditionPct?: number;
    waterClassifyId?: string;
    waterPct?: number;
  }

  export interface WaterConfigOutput {
    capacityPer?: number;
    dailyTarget?: number;
    firstRemindTime?: string;
    lastRemindTime?: string;
    remindInterval?: number;
    reminded?: boolean;
  }

  export interface WaterConfigOutputV2 {
    dailyTarget?: number;
    dailyTargetWithAddition?: number;
    firstRemindTime?: string;
    id?: number;
    isFestivalNotRemind?: boolean;
    isFinishDailyTargetNotRemind?: boolean;
    isIntelligenceRemind?: boolean;
    isRemind?: boolean;
    isRestNotRemind?: boolean;
    lastRemindTime?: string;
    msgPushType?: string;
    nextRemindTime?: string;
    quickCapacityList?: Array<QuickCapacityOutput>;
    remindInterval?: number;
    remindTimes?: Array<LocalTime>;
    remindType?: string;
    restEndTime?: LocalTime;
    restStartTime?: LocalTime;
    timingRemindTimes?: Array<LocalTime>;
    totalCapacity?: number;
    waterBubbleMsg?: string;
    waterTips?: string;
  }

  export interface WaterLogBatchDetailInput {
    todoDate?: Date;
    waterLogs?: Array<WaterLogInputV2>;
  }

  export interface WaterLogBatchInput {
    waterLogs?: Array<WaterLogBatchDetailInput>;
  }

  export interface WaterLogDetailOutput {
    capacity?: number;
    classifyId?: string;
    drinkDateTime?: string;
    flatIconUrl?: string;
    id?: string;
    isAlcohol?: boolean;
    isSystemClassify?: boolean;
    name?: string;
    statisticsColor?: string;
    time?: string;
    type?: string;
    uuid?: string;
    waterCapacity?: number;
  }

  export interface WaterLogInput {
    capacity: number;
  }

  export interface WaterLogInputV2 {
    capacity: number;
    classifyId?: string;
    drinkDateTime?: string;
    isSystemClassify?: boolean;
    uuid?: string;
    waterClassifyVersion?: string;
  }

  export interface WaterLogInputV3 {
    capacity?: string;
    classifyName?: string;
    drinkDateTime?: string;
    waterClassifyVersion?: string;
  }

  export interface WaterLogOutput {
    dailyTargetWithAddition?: number;
    nextRemindTime?: string;
    todoDate?: Date;
    totalCapacity?: number;
    waterBubbleMsg?: string;
    waterLogDetail?: WaterLogDetailOutput;
  }

  export interface WaterLogReportViewOutput {
    avgDayCapacity?: number;
    beverageList?: Array<WaterReportBeverageView>;
    currentTarget?: number;
    finishDayCount?: number;
    lastTimeCapacity?: number;
    rows?: Array<WaterReportRowView>;
    totalCapacity?: number;
    totalCount?: number;
    queryDay?:string;
  }

  export interface WaterPageOutput {
    drinkWater_page1?: DrinkWaterPage1;
    drinkWater_page2?: DrinkWaterPage2;
  }

  export interface WaterPushConfigInput {
    configType: number;
    content: string;
    endTime: string;
    startTime: string;
  }

  export interface WaterPushConfigOutput {
    configType?: number;
    content?: string;
    endTime?: string;
    id?: number;
    startTime?: string;
  }

  export interface WaterPushConfigUpdateInput {
    content: string;
    endTime: string;
    id: number;
    startTime: string;
  }

  export interface WaterRemindSwitchInput {
    isRemind?: boolean;
  }

  export interface WaterReportBeverageView {
    currentTarget?: number;
    currentValue?: number;
    extParams?: object;
    name?: string;
    percent?: number;
    waterClassifyId?: number;
  }

  export interface WaterReportRowView {
    avgDayTotalCapacity?: number;
    currentTarget?: number;
    currentValue?: number;
    key?: object;
    totalCapacity?: number;
  }

  export interface WaterStatisticsDetailOutput {
    capacity?: number;
    time?: string;
  }

  export interface WaterStatisticsInput {
    endDate: string;
    startDate: string;
  }

  export interface WaterStatisticsOutput {
    dailyTarget?: number;
    details?: Array<WaterStatisticsDetailOutput>;
    todoDate?: string;
    totalCapacity?: number;
  }

  export interface WaterTodoViewInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface WaterTodoViewItemListOutput {
    list?: Array<WaterTodoViewItemOutput>;
  }

  export interface WaterTodoViewItemOutput {
    created?: Date;
    duration?: number;
    finishState?: number;
    id?: number;
    importance?: number;
    intervalType?: number;
    offset?: number;
    shortTitle?: string;
    subTitle?: string;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
    todoType?: number;
    updated?: Date;
    version?: number;
  }

  export interface WaterTodoViewListOutput {
    list?: Array<WaterTodoViewOutput>;
  }

  export interface WaterTodoViewOutput {
    created?: Date;
    duration?: number;
    finishState?: number;
    id?: number;
    importance?: number;
    intervalType?: number;
    offset?: number;
    shortTitle?: string;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
    todoType?: number;
    updated?: Date;
    version?: number;
  }

  export interface YearReportInput {
    version: string;
    year: number;
  }
}
