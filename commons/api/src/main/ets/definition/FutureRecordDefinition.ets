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

export namespace FutureRecordDefinition {
  export interface AchievementReachVo {
    appletId?: number;
    businessId?: number;
    subTitle?: string;
    title?: string;
  }

  export interface AddHabitInput {
    color?: string;
    finishPeriod?: string;
    finishRemarkOpen?: boolean;
    habitStartDate?: string;
    icon?: string;
    iconType?: string;
    name?: string;
    remark?: string;
    remindTimeList?: Array<string>;
    rule?: HabitFinishRuleInfo;
    viewShow?: boolean;
  }

  export interface AddNormalAndGoalFinishInput {
    day?: string;
    dayFinishGoalActual?: number;
    finishState?: boolean;
    habitId?: string;
    imgUrl?: string;
    remark?: string;
  }

  export interface AddNormalFinishInput {
    day?: Date;
    finishState?: boolean;
    habitId?: number;
    imgUrl?: string;
    remark?: string;
  }

  export interface AllHabitDayFinishStateOutput {
    day?: string;
    dayFinishState?: string;
    dayHabitList?: Array<DayHabitItem>;
  }

  export interface AppletHistoryResponse {
    created?: Date;
    id?: number;
    params?: object;
    subTitle?: string;
    title?: string;
  }

  export interface BatchAddHabitByGuideTemplateIdInput {
    ids?: Array<number>;
  }

  export interface BatchAddHabitByTemplateIdInput {
    ids?: Array<number>;
  }

  export interface BodyRecordInput {
    bust?: number;
    height?: number;
    hips?: number;
    waist?: number;
    weight?: number;
  }

  export interface BodyRecordOutput {
    bust?: string;
    height?: string;
    hips?: string;
    waist?: string;
    weight?: string;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DayHabitFinishPeriodOutput {
    finishPeriod?: string;
    habitList?: Array<DayHabitItem>;
  }

  export interface DayHabitInput {
    day?: string;
  }

  export interface DayHabitOutput {
    allHabitFinish?: boolean;
    anyHabitFinish?: boolean;
    exampleData?: boolean;
    finishPeriodList?: Array<DayHabitFinishPeriodOutput>;
    habitCount?: number;
  }

  export interface DeleteHabitInput {
    id?: string;
  }

  export interface FinishRemarkInfoInput {
    day?: string;
    habitId?: string;
  }

  export interface FinishRemarkOutput {
    currentConsecutiveDayCount?: number;
    currentGoalRuleActualSumCount?: number;
    dayFinishInfo?: DayFinishInfo;
    dayRule?: DayRuleDto;
    finishRemarkList?: Array<DayFinishInfo>;
    finishRemarkOpen?: boolean;
    habit?: HabitOutputWithRule;
    habitMonthDayList?: Array<OneHabitDayFinishStateOutput>;
    id?: number;
    monthProgress?: MonthFinishProgress;
    remark?: string;
    totalProgress?: HabitTotalProgress;
  }

  export interface GetHealthRecordInput {
    healthRecordDay?: Date;
  }

  export interface HabitAchievementReachInput {
    displayedHabitId?: Array<number>;
  }

  export interface HabitColorOutput {
    colorName?: string;
    colorUrl?: string;
    id?: number;
    type?: string;
  }

  export interface HabitCountOutput {
    habit_page1?: HabitPageOne;
    habit_page2?: HabitPageTwo;
  }

  export interface HabitDetailInput {
    firstDayOfMonth?: string;
    id?: string;
  }

  export interface HabitDetailOutput {
    currentConsecutiveDayCount?: number;
    currentGoalRuleActualSumCount?: number;
    finishRemarkList?: Array<DayFinishInfo>;
    habit?: HabitOutputWithRule;
    habitMonthDayList?: Array<OneHabitDayFinishStateOutput>;
    id?: number;
    monthProgress?: MonthFinishProgress;
    totalProgress?: HabitTotalProgress;
  }

  export interface HabitFinishOutput4Sync {
    dayFinishGoalActual?: number;
    finishDate?: Date;
    finishState?: boolean;
    id?: number;
  }

  export interface HabitGuideTemplateOutput {
    color?: string;
    icon?: string;
    iconType?: string;
    id?: number;
    name?: string;
    ruleDesc?: string;
    selected?: boolean;
  }

  export interface HabitIconOutput {
    iconName?: string;
    iconUrl?: string;
    id?: number;
    type?: string;
  }

  export interface HabitListOutput {
    completeList?: Array<HabitOutputWithRule>;
    habitCount?: number;
    hasHabit?: boolean;
    runningList?: Array<HabitOutputWithRule>;
    suspendList?: Array<HabitOutputWithRule>;
  }

  export interface HabitOutputWithRule {
    allHabitRuleList?: Array<DayRuleDto>;
    color?: string;
    created?: Date;
    currentHabitRule?: DayRuleDto;
    deleted?: boolean;
    finishDayCount?: number;
    finishPeriod?: string;
    finishRemarkOpen?: boolean;
    finishType?: string;
    habitStartDate?: string;
    icon?: string;
    iconType?: string;
    id?: number;
    name?: string;
    remark?: string;
    remindTimeList?: Array<HabitRemindTimeOutput>;
    sort?: number;
    status?: string;
    suspendList?: Array<HabitSuspendOutput>;
    suspendState?: boolean;
    userId?: number;
    viewShow?: boolean;
  }

  export interface HabitRemindTimeOutput {
    habitId?: number;
    id?: number;
    remindTime?: string;
  }

  export interface HabitSimpleDetailInput {
    id?: string;
  }

  export interface HabitSortInput {
    ids?: Array<string>;
  }

  export interface HabitStatisticInput {
    firstDayOfMonth?: string;
  }

  export interface HabitStatisticsOutput {
    consecutiveDayCount?: number;
    earliestHabit?: MostFinishedHabit;
    monthFinishDayList?: Array<AllHabitDayFinishStateOutput>;
    mostFinishedHabit?: Array<HabitOutputWithRule>;
  }

  export interface HabitStorehouseInput {
    keyword?: string;
  }

  export interface HabitStorehouseListOutput {
    classifyList?: Array<HabitStorehouseItem>;
  }

  export interface HabitSuperTemplateOutput {
    coverImg?: string;
    id?: number;
    name?: string;
    subList?: Array<SubTemplateItem>;
  }

  export interface HabitSuspendOutput {
    endDate?: Date;
    habitId?: number;
    id?: number;
    startDate?: Date;
  }

  export interface HabitTodoViewInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface HabitTodoViewListOutput {
    list?: Array<HabitTodoViewOutput>;
  }

  export interface HabitTodoViewOutput {
    appletInnerSort?: number;
    created?: Date;
    duration?: number;
    finishPeriod?: string;
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
    widgetSubTitle?: string;
  }

  export interface HabitUpdateStatusInput {
    id?: string;
    status?: string;
  }

  export interface HealthRecordInput {
    distance?: number;
    floorCount?: number;
    healthRecordDay?: Date;
    stepCount?: number;
  }

  export interface HealthRecordOutput {
    distance?: number;
    floorCount?: number;
    healthRecordDay?: Date;
    id?: number;
    stepCount?: number;
  }

  export interface HealthRecordStatisticsInput {
    endDate: string;
    startDate: string;
  }

  export interface HealthRecordStatisticsOutput {
    distanceDesc?: string;
    floorCountDesc?: string;
    rows?: Array<HealthRecordOutput>;
    stepCountDesc?: string;
  }

  export interface HideFinishedStateOutput {
    hideFinished?: boolean;
  }

  export interface IdsRequest {
    ids: Array<string>;
  }

  export interface ImportantDayAnniversaryDisplayModelInput {
    anniversaryDisplayModel: string;
  }

  export interface ImportantDayBirthdayDisplayModelInput {
    birthdayDisplayModel: string;
  }

  export interface ImportantDayConfigAndSortOutput {
    importantDayConfigOutput?: ImportantDayConfigOutput;
    sortList?: Array<ImportantDaySortDto>;
    topList?: Array<ImportantDayTopDto>;
  }

  export interface ImportantDayConfigOutput {
    anniversaryDisplayModel?: string;
    birthday?: string;
    birthdayDisplayModel?: string;
    countdownDay?: number;
    countdownFilterFinish?: boolean;
    displayType?: string;
    futureAge?: number;
    futureBirthday?: string;
    homeDisplayTypeSet?: Array<string>;
    id?: number;
    img?: string;
    isLunar?: boolean;
    sortType?: string;
  }

  export interface ImportantDayCountdownFilterFinishInput {
    countdownFilterFinish: boolean;
  }

  export interface ImportantDayDisplayTypeInput {
    displayType: string;
  }

  export interface ImportantDayHomeDisplayTypeInput {
    homeDisplayTypeSet?: Array<string>;
  }

  export interface ImportantDayPicIdInput {
    id?: number;
  }

  export interface ImportantDayPicInput {
    extend?: string;
    imgUrl?: string;
    name?: string;
    type?: string;
  }

  export interface ImportantDayPicOutput {
    canDelete?: boolean;
    extend?: string;
    id?: number;
    imgUrl?: string;
    name?: string;
    remark?: string;
    selected?: boolean;
    sysImg?: boolean;
    type?: string;
  }

  export interface ImportantDayPicQueryInput {
    type?: string;
  }

  export interface ImportantDaySortDto {
    dataId: number;
    importantDayType: string;
  }

  export interface ImportantDaySortTypeInput {
    sortType: string;
  }

  export interface ImportantDayTopDto {
    dataId: number;
    importantDayType: string;
  }

  export interface ImportantDayUserBirthdayInput {
    birthday: string;
    isLunar?: boolean;
  }

  export interface ImportantDayUserBirthdayOutput {
    birthday?: string;
    futureBirthday?: string;
    isLunar?: boolean;
  }

  export interface ImportantDayUserImgInput {
    img: string;
  }

  export interface InitImportantDayConfigInput {
    birthday: string;
    isLunar?: boolean;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface MonthFinishStateInput {
    firstDayOfMonth?: string;
  }

  export interface OneHabitDayFinishStateOutput {
    day?: Date;
    dayFinishInfo?: DayFinishInfo;
    dayFinishState?: string;
    dayRule?: DayRuleDto;
  }

  export interface Rule {
    expression?: string;
    repeatValue?: number;
    type?: string;
  }

  export interface SaveImportantDaySortInput {
    sortList?: Array<ImportantDaySortDto>;
  }

  export interface SortImportantDayInput {
    fromDataId: number;
    fromImportantDayType: string;
    pageType: string;
    toDataId?: number | undefined;
    toImportantDayType?: string;
  }

  export interface SuspendHabitInput {
    id?: number;
  }

  export interface SuspendOrNotHabitListOutput {
    habitList?: Array<HabitOutputWithRule>;
    hasHabit?: boolean;
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

  export interface UpdateFinishRemarkInput {
    day?: string;
    finishRemarkOpen?: boolean;
    habitId?: string;
    imgUrl?: string;
    remark?: string;
  }

  export interface UpdateFinishTimeInput {
    day?: string;
    finishTime?: string;
    habitId?: string;
  }

  export interface UpdateHabitInput {
    color?: string;
    finishPeriod?: string;
    finishRemarkOpen?: boolean;
    habitStartDate?: string;
    icon?: string;
    iconType?: string;
    id?: string;
    name?: string;
    remark?: string;
    remindTimeList?: Array<string>;
    rule?: HabitFinishRuleInfo;
    viewShow?: boolean;
  }

  export interface UpdateHabitViewShowInput {
    id?: number;
    viewShow?: boolean;
  }

  export interface UpdateHideFinishedInput {
    hideFinished?: boolean;
  }

  export interface UserProvincePercentOutput {
    percent?: number;
    provinceName?: string;
  }

  export interface WeatherCityNameInput {
    cityName: string;
  }

  export interface WeatherMapOutput {
    adcode?: string;
    areaCode?: string;
    center?: string;
    cityCode?: string;
    cityName?: string;
    latitude?: string;
    level?: string;
    longitude?: string;
    mojiCityName?: string;
    mojiWeatherId?: string;
    name?: string;
    provinceCode?: string;
    provinceName?: string;
    self?: boolean;
    showName?: string;
    telAreaCode?: string;
  }

  export interface WeatherPositionInput {
    adcode?: string;
    address?: string;
    cityName?: string;
    country?: string;
    district?: string;
    latitude?: number;
    longitude?: number;
    province?: string;
  }

  export interface WeatherPositionOutput {
    adcode?: string;
    address?: string;
    city?: string;
    cityId?: string;
    country?: string;
    district?: string;
    latitude?: number;
    longitude?: number;
    province?: string;
  }

  export interface HabitDTO {
    classifyName?: string;
    classifyType?: string;
    color?: string;
    icon?: string;
    name?: string;
  }

  export interface HabitTotalProgress {
    createTime?: Date;
    currentConsecutiveDayCount?: number;
    finishDay?: number;
    longestConsecutiveDayCount?: number;
    sinceNow?: number;
  }

  export interface HabitFinishRuleInfo {
    dayFinishGoalPerTime?: number;
    dayFinishGoalSwitch?: boolean;
    dayFinishGoalTotal?: number;
    dayFinishGoalUnit?: string;
    finishType?: string;
    fixedRuleDayList?: Array<number>;
    timesCount?: number;
  }

  export interface DayRuleDto {
    currentRule?: boolean;
    dayFinishGoalPerTime?: number;
    dayFinishGoalSwitch?: boolean;
    dayFinishGoalTotal?: number;
    dayFinishGoalUnit?: string;
    endDate?: Date;
    finishType?: string;
    fixedRuleDayList?: Array<number>;
    habitId?: number;
    id?: number;
    ruleDesc?: string;
    startDate?: Date;
    timesCount?: number;
  }

  export interface DayHabitItem {
    color?: string;
    created?: Date;
    day?: Date;
    dayFinishInfo?: DayFinishInfo;
    dayRule?: DayRuleDto;
    deleted?: boolean;
    finishPeriod?: string;
    finishRemarkOpen?: boolean;
    finishState?: boolean;
    finishType?: string;
    habitStartDate?: Date;
    icon?: string;
    iconType?: string;
    id?: number;
    name?: string;
    remark?: string;
    sort?: number;
    status?: string;
    suspendState?: boolean;
    userId?: number;
    viewShow?: boolean;
  }

  export interface HabitPageOne {
    habitCount?: number;
    habitFinishCount?: number;
    habitSuspendCount?: number;
  }

  export interface HabitPageTwo {
    mostFinishDayCount?: number;
    mostFinishDayHabitName?: string;
  }

  export interface HabitStorehouseItem {
    classifyName?: string;
    classifyType?: string;
    habitList?: Array<HabitDTO>;
  }

  export interface MostFinishedHabit {
    color?: string;
    createDateTime?: Date;
    created?: Date;
    deleted?: boolean;
    finishPeriod?: string;
    finishRemarkOpen?: boolean;
    finishType?: string;
    habitStartDate?: Date;
    icon?: string;
    iconType?: string;
    id?: number;
    name?: string;
    remark?: string;
    sinceNow?: number;
    sort?: number;
    status?: string;
    suspendState?: boolean;
    userId?: number;
    viewShow?: boolean;
  }

  export interface SubTemplateItem {
    color?: string;
    icon?: string;
    iconType?: string;
    id?: number;
    name?: string;
    ruleDesc?: string;
    superTemplateId?: number;
  }

  export interface FutureRecordAppletUsingPOSTRsp {
    count?: number;
  }

  export interface DayFinishInfo {
    day?: string;
    dayFinishGoalActual?: number;
    finishState?: boolean;
    finishTime?: string;
    habitId?: number;
    imgUrl?: string;
    remark?: string;
  }

  export interface MonthFinishStateUsingPOSTRsp {
    dayList?: Array<AllHabitDayFinishStateOutput>;
  }

  export interface MonthFinishProgress {
    finishDay?: number;
    missDay?: number;
    shouldFinishDay?: number;
  }
}
