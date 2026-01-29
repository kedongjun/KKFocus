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

export namespace BaseMedalDefinition {
  export interface AchievementReachVo {
    appletId?: number;
    businessId?: number;
    subTitle?: string;
    title?: string;
  }

  export interface AppletDesc {
    appletIcon?: string;
    appletId?: number;
    appletName?: string;
  }

  export interface ArchiveStatusInput {
    endDay?: Date;
    startDay?: Date;
  }

  export interface ArchiveStatusOutput {
    archiveExistDay?: Array<Date>;
  }

  export interface AuntStatisticsDetailOutput {
    cycle?: string;
    days?: number;
    startDate?: Date;
  }

  export interface AuntStatisticsOutput {
    auntStatisticsDetails?: Array<AuntStatisticsDetailOutput>;
    average?: string;
    fromLastTime?: string;
    maxCycle?: string;
    maxPeriod?: string;
    minCycle?: string;
    minPeriod?: string;
    periodState?: string;
  }

  export interface CheckHistoryDataInputV2 {
    appletId: number;
    params: object;
    paramsId?: number;
  }

  export interface ClassifyFinishTimeOutput {
    classifyName?: string;
    percent?: number;
    sumCompleteTime?: number;
  }

  export interface CollectCountDto {
    englishCollectCount?: number;
    mottoCollectCount?: number;
    paintingCollectCount?: number;
    poetryCollectCount?: number;
  }

  export interface DailySummaryArchiveDto {
    archived?: boolean;
    data?: DailySummaryDto;
    feelUrl?: string;
    imgList?: Array<string>;
    summary?: string;
    theDay?: Date;
    weather?: string;
  }

  export interface DailySummaryArchiveSearchOutput {
    feelUrl?: string;
    summary?: string;
    theDay?: Date;
    weather?: string;
  }

  export interface DailySummaryArchiveUpdateDto {
    feelUrl?: string;
    imgList?: Array<string>;
    summary?: string;
    theDay?: number;
    weather?: string;
  }

  export interface DailySummaryByAppletInput {
    appletId: number;
    theDay?: Date;
  }

  export interface DailySummaryDto {
    dataList?: Array<GetDataByAppletIdUsingPOSTRsp>;
    detailList?: Array<Detail>;
    statisticsList?: Array<DailySummaryStatisticsItem>;
  }

  export interface DailySummaryInput {
    adcode?: string;
    theDay?: Date;
  }

  export interface DailySummaryStatisticsDto {
    detailList?: Array<Detail>;
    statisticsList?: Array<DailySummaryStatisticsItem>;
  }

  export interface DailySummaryTemplateDto {
    richTextContent?: string;
  }

  export interface DateRequest {
    theDay?: Date;
  }

  export interface Detail {
    appletId?: number;
    color?: string;
    id?: number;
    startTime?: Date;
    subTitle?: string;
    title?: string;
    todoTime?: Date;
    useTime?: number;
  }

  export interface DietRecordPage1 {
    dayAvgAddHot?: number;
    dayAvgReduceHot?: number;
    dietLogCount?: number;
    sportLogCount?: number;
  }

  export interface DietRecordPage2 {
    maxSportMinutesDay?: MaxSportMinutesDay;
    maxSportMinutesDaySummary?: SummaryOutput;
  }

  export interface DressCountOutput {
    dressCount?: number;
    favorList?: Array<string>;
    occasionList?: Array<string>;
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

  export interface EndPage1 {
    constellation?: string;
    gender?: string;
    labelList?: Array<string>;
    provincePercent?: UserProvincePercentOutput;
    userImg?: string;
    userName?: string;
  }

  export interface ForumPage1 {
    firstPostDate?: string;
    userGroupCount?: number;
    userGroupSumUserCount?: number;
  }

  export interface ForumPage2 {
    mostParticipateGroup?: string;
    mostParticipateTopic?: string;
    postCount?: number;
    topicCount?: number;
  }

  export interface ForumPage3 {
    mostInteractivePost?: MostInteractivePost;
  }

  export interface GoalPage1 {
    doneCount?: number;
    processingCount?: number;
    totalCount?: number;
  }

  export interface GoalPage2 {
    minDoneGoalLastFinishDay?: string;
    minDoneGoalLastFinishDayGoalName?: string;
    minStartDate?: string;
    minStartDateGoalName?: string;
  }

  export interface GoalPage3 {
    futureMinExpireDay?: string;
  }

  export interface GuessDoBaseRecordOutput {
    appletId?: number;
    count?: number;
    created?: Date;
    deleted?: boolean;
    id?: number;
    time?: Date;
    updated?: Date;
    version?: number;
  }

  export interface HidePageInput {
    dataVersion?: string;
    hide?: boolean;
    page?: string;
  }

  export interface IdRequest {
    id: number;
  }

  export interface ImportanceFinishCountOutput {
    count?: number;
    importance?: number;
    importanceDesc?: string;
    percent?: number;
  }

  export interface IpHouseActivityOutput {
    id?: number;
    jumpType?: string;
    jumpUrl?: string;
    title?: string;
  }

  export interface MatterPage1 {
    finishCount?: number;
    sumFinishTime?: number;
  }

  export interface MatterPage2 {
    firstRecordFinishTime?: string;
    maxFinishDay?: MaxFinishDayOutput;
    maxFinishMonth?: MaxFinishDayOutput;
  }

  export interface MatterPage3 {
    classifyFinishTimeList?: Array<ClassifyFinishTimeOutput>;
    dataCreatePeriodCount?: DateCreatePeriodCountInfo;
    importanceFinishCountList?: Array<ImportanceFinishCountOutput>;
  }

  export interface MaxFinishDayOutput {
    count?: number;
    day?: string;
    sumCompleteTime?: number;
  }

  export interface MedalHomepageOutput {
    categoryList?: Array<MetalCategoryItem>;
    inited?: boolean;
    medalSummaryInfo?: MetalSummaryInfo;
  }

  export interface MedalLevelOutput {
    finishInfo?: MetalLevelFinishInfo;
    finishedIcon?: string;
    id?: number;
    level?: number;
    levelDesc?: string;
    medalId?: number;
    notFinishedIcon?: string;
    subTitle?: string;
    title?: string;
  }

  export interface MedalOutput {
    categoryId?: number;
    currentLevel?: MedalLevelOutput;
    id?: number;
    levelList?: Array<MedalLevelOutput>;
    limited?: boolean;
    medalSignal?: string;
  }

  export interface MemorandumPage1 {
    audioCount?: number;
    count?: number;
    photoCount?: number;
    remindCount?: number;
    videoCount?: number;
  }

  export interface MemorialBookDetailInput {
    dataVersion?: string;
  }

  export interface MemorialBookDetailOutput {
    init?: boolean;
    pageInfo?: MemorialBookPageInfo;
    shareHidePages?: Array<string>;
    shareId?: string;
    startPage?: StartPageData;
  }

  export interface MemorialBookPageInfo {
    alarmclock_page1?: AlarmClockPageOne;
    alarmclock_page2?: AlarmClockPageTwo;
    applist_page1?: AppListPageOne;
    bookkeeping_page1?: BookKeepingPageOne;
    bookkeeping_page2?: BookKeepingPageTwo;
    bookkeeping_page3?: BookKeepingPageThree;
    classSchedule_page1?: ReadPageOne;
    countdownDay_page1?: CountdownDayPageOne;
    countdownDay_page2?: CountdownDayPageTwo;
    countdownDay_page3?: CountdownDayPageThree;
    dailyProphet_page1?: DressCountOutput;
    dailyProphet_page2?: CollectCountDto;
    diary_page1?: DiaryPageOne;
    diary_page2?: DiaryPageTwo;
    diary_page3?: DiaryPageThree;
    dietRecord_page1?: DietRecordPage1;
    dietRecord_page2?: DietRecordPage2;
    drinkWater_page1?: DrinkWaterPage1;
    drinkWater_page2?: DrinkWaterPage2;
    end_page1?: EndPage1;
    focus_page1?: FocusPageOne;
    focus_page2?: FocusPageTwo;
    focus_page3?: FocusPageThree;
    forum_page1?: ForumPage1;
    forum_page2?: ForumPage2;
    forum_page3?: ForumPage3;
    goal_page1?: GoalPage1;
    goal_page2?: GoalPage2;
    goal_page3?: GoalPage3;
    habit_page1?: HabitPageOne;
    habit_page2?: HabitPageTwo;
    matter_page1?: MatterPage1;
    matter_page2?: MatterPage2;
    matter_page3?: MatterPage3;
    memorandum_page1?: MemorandumPage1;
    physiologicalPeriod_page1?: PhysiologicalPeriodPage1;
    physiologicalPeriod_page2?: PhysiologicalPeriodPage2;
    read_page1?: ReadBookPageOne;
    read_page2?: ReadPageTwo;
    read_page3?: ReadPageThree;
    workTable_page1?: WorkTablePageOne;
  }

  export interface MemorialHallYearOutput {
    img?: string;
    url?: string;
    year?: number;
  }

  export interface NutrientSummary {
    actual?: number;
    appraisal?: string;
    budgetMax?: number;
    budgetMin?: number;
  }

  export interface PaginableRequest {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface PhysiologicalPeriodPage1 {
    count?: number;
  }

  export interface PhysiologicalPeriodPage2 {
    stable?: boolean;
    statistics?: AuntStatisticsOutput;
    year?: number;
  }

  export interface PositionInput {
    cityName?: string;
    district?: string;
  }

  export interface ShareDetailInput {
    shareId?: string;
  }

  export interface SportsLogDetailOutput {
    sportsLogOutputs?: Array<SportsLogOutput>;
    totalHot?: number;
  }

  export interface SportsLogOutput {
    actualHot?: number;
    actualQuantity?: number;
    color?: string;
    dietGlobalAddType?: string;
    id?: number;
    recordDay?: Date;
    sportsType?: string;
    sportsTypeHot?: number;
    sportsTypeId?: number;
    sportsTypeLogo?: string;
    sportsTypeLogoUrl?: string;
    sportsTypeName?: string;
    sportsTypeQuantity?: number;
    sportsTypeUnit?: string;
  }

  export interface SummaryOutput {
    addMeal?: Meal;
    appraisal?: string;
    appraisalV2?: string;
    breakfastMeal?: Meal;
    carbohydrateNutrient?: NutrientSummary;
    dinnerMeal?: Meal;
    fatNutrient?: NutrientSummary;
    hasData?: boolean;
    lunchMeal?: Meal;
    proteinNutrient?: NutrientSummary;
    sportsInfo?: SportsLogDetailOutput;
    totalMeal?: TotalMealSummary;
  }

  export interface SyncDataRequest {
    fromId: number;
    fromVersion: number;
    pageSize: number;
    toVersion: number;
  }

  export interface TotalMealSummary {
    actualHot?: number;
    appraisal?: string;
    appraisalV2?: string;
    budgetHot?: number;
  }

  export interface UserCustomInput {
    color: string;
    endTime: Date;
    startTime: Date;
    title: string;
  }

  export interface UserCustomUpdateInput {
    color: string;
    endTime: Date;
    id: number;
    startTime: Date;
    title: string;
  }

  export interface UserProvincePercentOutput {
    percent?: number;
    provinceName?: string;
  }

  export interface WaterReportBeverageView {
    currentTarget?: number;
    currentValue?: number;
    extParams?: object;
    name?: string;
    percent?: number;
    waterClassifyId?: number;
  }

  export interface WorkTablePageOne {
    averageHours?: number;
    lateMinues?: number;
    lateTimes?: number;
    leaveMinues?: number;
    overMinues?: number;
    overTimes?: number;
    travelDays?: number;
    workDays?: number;
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

  export interface HabitPageOne {
    habitCount?: number;
    habitFinishCount?: number;
    habitSuspendCount?: number;
  }

  export interface HabitPageTwo {
    mostFinishDayCount?: number;
    mostFinishDayHabitName?: string;
  }

  export interface AppListPageOne {
    top5List?: Array<AppletDesc>;
  }

  export interface CountdownDayPageOne {
    importantDayCount?: number;
  }

  export interface CountdownDayPageTwo {
    importanceCount?: number;
    importanceList?: Array<string>;
    relationList?: Array<CountDownRalationItem>;
  }

  export interface CountdownDayPageThree {
    anniversaryCount?: number;
    title?: string;
  }

  export interface CountDownRalationItem {
    name?: string;
    num?: number;
  }

  export interface DateCreatePeriodCountInfo {
    count?: string;
    dataCreatePeriod?: string;
  }

  export interface MetalCategoryItem {
    medalList?: Array<MedalOutput>;
    title?: string;
    showAllGrowth: boolean
  }

  export interface MetalSummaryInfo {
    areaRank?: string;
    cityRank?: string;
    medalCount?: number;
    totalLevel?: number;
  }

  export interface MostInteractivePost {
    commentLikeCount?: number;
    day?: string;
    name?: string;
  }

  export interface StartPageData {
    days?: number;
    registerDay?: string;
    today?: string;
  }

  export interface GetDataByAppletIdUsingPOSTRsp {
    appletId?: number;
    dataList?: Array<object>;
    extendMap?: object;
    subTitle?: string;
    title?: string;
  }

  export interface DailySummaryStatisticsItem {
    appletId?: number;
    color?: string;
    detailList?: Array<Detail>;
    title?: string;
    useTime?: number;
  }

  export interface DiaryPageOne {
    diaryCount?: number;
    mostDiaryMonth?: Date;
    mostDiaryMonthCount?: number;
  }

  export interface DiaryPageTwo {
    diaryTime?: Date;
    favoriteTimeInterval?: string;
    favoriteTimeIntervalDayCount?: number;
  }

  export interface DiaryPageThree {
    replayDiaryCount?: number;
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

  export interface MetalLevelFinishInfo {
    finishState?: boolean;
    finishTime?: string;
  }

  export interface BookKeepingPageOne {
    billCount?: number;
    billDayCount?: number;
  }

  export interface BookKeepingPageTwo {
    expend?: number;
    firstExpendClassifyAmount?: number;
    firstExpendClassifyName?: string;
    firstIncomeClassifyName?: string;
    income?: number;
    lend?: number;
  }

  export interface BookKeepingPageThree {
    firstExpendDay?: Date;
    firstExpendDayAmount?: number;
    firstExpendMonth?: Date;
    firstExpendMonthAmount?: number;
    top5ClassifyName?: Array<string>;
  }

  export interface ReadBookPageOne {
    bookCount?: number;
    bookReadedCount?: number;
    readDayCount?: number;
    readMinuteCount?: number;
  }

  export interface ReadPageTwo {
    coverUrl?: string;
    favoriteBookName?: string;
    favoriteBookReadMinuteCount?: number;
    readNoteCount?: number;
    readingBookName?: string;
    remainPercent?: number;
  }

  export interface ReadPageThree {
    favoriteReadingTime?: string;
    latestBookName?: string;
    latestReadingTime?: Date;
  }

  export interface ReadPageOne {
    mostCourseCount?: number;
    mostNotesCourse?: string;
    mostNotesTerm?: string;
    noteCount?: number;
    termCount?: number;
  }

  export interface MaxSportMinutesDay {
    day?: string;
    dayMinutes?: number;
  }

  export interface Meal {
    actualHot?: number;
    appraisal?: string;
    budgetHotMax?: number;
    budgetHotMin?: number;
  }
}
