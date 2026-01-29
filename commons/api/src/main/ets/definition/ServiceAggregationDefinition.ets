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

export namespace ServiceAggregationDefinition {
  export interface AggSendSmsMessageInput {
    device?: UserDeviceInfo;
  }

  export interface AppDailyInput {
    adcode?: string;
    address?: string;
    apiVersion: string;
    cityName?: string;
    country?: string;
    district?: string;
    iconVersion?: string;
    latitude?: number;
    longitude?: number;
    province?: string;
    version: string;
  }

  export interface Attachment {
    audioduration?: string;
    audioname?: string;
    filename?: string;
    linkid?: string;
    linktype?: string;
    picname?: string;
    sort?: string;
    token?: string;
    unioncode?: string;
    uuid?: string;
    videoname?: string;
    visitcode?: string;
  }

  export interface AudioOutput {
    size?: number;
    url?: string;
  }

  export interface BasicPositionRequest {
    adcode?: string;
    latitude?: number;
    longitude?: number;
  }

  export interface BatchModTime2ScheduleInput {
    checklistToSchedules?: Array<Checklist2ScheduleInput>;
    scheduleRemindEdits?: Array<ScheduleRemindEditInput>;
  }

  export interface BookkeepingBillOutput {
    accountBookId?: number;
    accountBookName?: string;
    accountTypeId?: number;
    accountTypeLogo?: string;
    accountTypeLogoUrl?: string;
    accountTypeName?: string;
    billGlobalAddType?: string;
    billRecordType?: string;
    billRecordTypeDesc?: string;
    color?: string;
    created?: Date;
    dataType?: string;
    id?: number;
    imgList?: Array<string>;
    importRemark?: string;
    mid?: number;
    money?: number;
    remark?: string;
    showMinute?: boolean;
    symbol?: string;
    title?: string;
    useTime?: Date;
    userId?: number;
    walletId?: number;
    walletLogo?: string;
    walletLogoUrl?: string;
    walletName?: string;
  }

  export interface Checklist2ScheduleInput {
    aheadType?: Array<TodoAheadTypeInput>;
    duration?: number;
    id?: number;
    intervalType?: number;
    todoTime?: Date;
  }

  export interface ChecklistAttachmentInput {
    mediaType?: number;
    url?: string;
  }

  export interface ChecklistAttachmentOutput {
    mediaType?: number;
    url?: string;
  }

  export interface ChecklistDeleteInfo {
    deleted: boolean;
    id: number;
    status: number;
    updated: Date;
  }

  export interface ChecklistEditOutput {
    created?: Date;
    dailyShow?: boolean;
    deleted?: boolean;
    id?: number;
    importance?: number;
    localId?: number;
    personalizedInfo?: Array<ChecklistFinishOutput>;
    shortTitle?: string;
    status?: number;
    task?: Array<ChecklistTaskOutput>;
    todoClassifyId?: number;
    updated?: Date;
    version?: number;
  }

  export interface ChecklistFinishOutput {
    address?: string;
    attachments?: Array<ChecklistAttachmentOutput>;
    city?: string;
    completeTime?: number;
    country?: string;
    created?: Date;
    deleted?: boolean;
    district?: string;
    finishState?: number;
    finishTime?: Date;
    latitude?: number;
    longitude?: number;
    province?: string;
    remark?: string;
    taskFinishs?: Array<ChecklistTaskFinishOutput>;
    updated?: Date;
    version?: number;
  }

  export interface ChecklistTaskFinishOutput {
    checklistTaskId?: number;
    finishState?: number;
    finishTime?: Date;
  }

  export interface ChecklistTaskInput {
    duration?: number;
    grade?: number;
    id?: number;
    intervalType?: number;
    localId?: number;
    title?: string;
    todoTime?: Date;
  }

  export interface ChecklistTaskOutput {
    created?: Date;
    deleted?: boolean;
    duration?: number;
    grade?: number;
    id?: number;
    intervalType?: number;
    localId?: number;
    title?: string;
    todoTime?: Date;
    updated?: Date;
  }

  export interface ChecklistTaskViewOutput {
    created?: Date;
    deleted?: boolean;
    duration?: number;
    finishState?: number;
    finishTime?: Date;
    grade?: number;
    id?: number;
    intervalType?: number;
    localId?: number;
    title?: string;
    todoTime?: Date;
    updated?: Date;
  }

  export interface ChecklistToRepeatInput {
    addList?: Array<TodoRuleEditInput>;
    address?: string;
    aheadType?: Array<TodoAheadTypeInput>;
    attachments?: Array<ChecklistAttachmentInput>;
    city?: string;
    country?: string;
    dailyShow?: boolean;
    district?: string;
    duration?: number;
    endDateTime?: Date;
    finishImpressionSwitch?: boolean;
    id?: number;
    importance?: number;
    intervalType?: number;
    isHolidayFilter?: boolean;
    isWeekendFilter?: boolean;
    latitude?: number;
    localId?: number;
    longitude?: number;
    province?: string;
    remark?: string;
    repeatRuleDtoV2?: RepeatRuleDtoV2;
    repeatType?: string;
    repeatValue?: Array<number>;
    ruleLocalIds?: Array<RuleLocalItem>;
    shortTitle?: string;
    sonAddList?: Array<ChecklistTaskInput>;
    sonDeleteList?: Array<ChecklistTaskInput>;
    sonUpdateList?: Array<ChecklistTaskInput>;
    startDateTime?: Date;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
  }

  export interface ChecklistToRepeatOutput {
    checklist?: ChecklistDeleteInfo;
    todo?: RepeatAddTodoInfoOutput;
  }

  export interface ChecklistToScheduleInput {
    address?: string;
    aheadType?: Array<TodoAheadTypeInput>;
    attachments?: Array<ChecklistAttachmentInput>;
    city?: string;
    country?: string;
    dailyShow?: boolean;
    district?: string;
    duration?: number;
    id?: number;
    importance?: number;
    intervalType?: number;
    latitude?: number;
    localId?: number;
    longitude?: number;
    province?: string;
    remark?: string;
    ruleLocalIds?: Array<RuleLocalItem>;
    shortTitle?: string;
    sonAddList?: Array<ChecklistTaskInput>;
    sonDeleteList?: Array<ChecklistTaskInput>;
    sonUpdateList?: Array<ChecklistTaskInput>;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
  }

  export interface ChecklistToScheduleOutput {
    checklist?: ChecklistDeleteInfo;
    todo?: ScheduleEditOutput;
  }

  export interface ChecklistViewInfoOutput {
    address?: string;
    attachments?: Array<ChecklistAttachmentOutput>;
    city?: string;
    classifyBgcolor?: string;
    completeTime?: number;
    country?: string;
    created?: Date;
    deleted?: boolean;
    district?: string;
    finishDate?: Date;
    finishState?: number;
    finishTime?: Date;
    id?: number;
    importance?: number;
    latitude?: number;
    longitude?: number;
    province?: string;
    remark?: string;
    shortTitle?: string;
    status?: number;
    tasks?: Array<ChecklistTaskViewOutput>;
    todoClassifyId?: number;
    todoType?: number;
    updated?: Date;
    version?: number;
    widgetSubTitle?: string;
  }

  export interface ChecklistViewInput {
    currentPage: number;
    filterFinished?: boolean;
    isAllInfo?: boolean;
    keyId?: number;
    keyword?: string;
    pageSize: number;
    subTitleCustom?: SubTitleCustom;
    todoClassifyFilter?: TodoClassifyFilterDto;
  }

  export interface CodeInput {
    code: string;
    codeType: string;
  }

  export interface ConstellationDto {
    day?: Date;
    dayNotice?: string;
    endDay?: string;
    extParams?: object;
    generalIndex?: string;
    generalTxt?: string;
    grxz?: string;
    healthTxt?: string;
    loveIndex?: string;
    loveStar?: string;
    loveTxt?: string;
    luckyColor?: string;
    luckyDay?: string;
    luckyDirection?: string;
    luckyNum?: string;
    luckyTime?: string;
    moneyIndex?: string;
    moneyStar?: string;
    moneyTxt?: string;
    monthAdvantage?: string;
    monthWeakness?: string;
    oneWord?: string;
    star?: string;
    starName?: string;
    startDay?: string;
    summaryStar?: string;
    time?: string;
    type?: string;
    weekNotice?: string;
    workIndex?: string;
    workStar?: string;
    workTxt?: string;
    xrxz?: string;
    yfxz?: string;
  }

  export interface CustomListInput {
    customs?: Array<string>;
  }

  export interface DailyInput {
    cityName: string;
    version: string;
  }

  export interface DailyLicensePlateNumLimitDto21 {
    cityId?: number;
    cityName?: string;
    img?: string;
    licensePlateNumLimit?: string;
    licensePlateNumLimitTime?: string;
    shortTitle?: string;
    week?: string;
  }

  export interface DailyTypesInput {
    version?: string;
  }

  export interface DataVersionInput {
    dataVersion: string;
  }

  export interface DeleteTodoCustomizeTimeOutput {
    advanceMinute?: number;
  }

  export interface DiaryDetailOutput {
    adress?: string;
    audio?: Array<AudioOutput>;
    content?: string;
    coverAnnexType?: string;
    coverAnnexUrl?: string;
    coverImg?: string;
    dateTime?: Date;
    feelId?: number;
    feelUrl?: string;
    font?: FontOutput;
    id?: number;
    img?: Array<string>;
    latitude?: number;
    longitude?: number;
    pointTime?: LocalTime;
    tagList?: Array<DiaryTagOutput>;
    title?: string;
    updated?: Date;
    vedio?: Array<VedioOutput>;
    weatherId?: number;
    weatherUrl?: string;
  }

  export interface DiaryTagOutput {
    id?: number;
    tagName?: string;
  }

  export interface DictOutput {
    colorImg?: string;
    dictCode: string;
    dictKey: string;
    dictValue: string;
    remark?: string;
    url?: string;
  }

  export interface DressAddInput {
    city?: string;
    coverImage?: string;
    dateTime?: string;
    favor?: boolean;
    id?: number;
    img?: Array<string>;
    occasionId?: number;
    remark?: string;
    score?: number;
    weather?: WeatherOutput;
  }

  export interface DressOutput {
    coverImage?: string;
    created?: Date;
    dateTime?: Date;
    favor?: boolean;
    id?: number;
    img?: Array<string>;
    occasion?: string;
    occasionId?: number;
    quarter?: number;
    reCommendReason?: string;
    recommentCount?: number;
    remark?: string;
    score?: number;
    weather?: WeatherOutput;
  }

  export interface DressRecommendInput {
    appletVersion?: string;
    city?: string;
    type?: string;
  }

  export interface DressShortCutOutput {
    recommend?: DressOutput;
    todayDress?: DressOutput;
  }

  export interface DressUseInput {
    city?: string;
    dateTime?: Date;
    id?: number;
  }

  export interface EveryDayMottoTemplateOutput {
    bgImg?: string;
    content?: string;
    creator?: string;
    deleted?: boolean;
    enContent?: string;
    id?: number;
    imageUrl?: string;
    isCollect?: boolean;
    mottoDate?: Date;
    pushTime?: Date;
    remark?: string;
    userMottoId?: number;
  }

  export interface FestivalDto {
    dateStr?: string;
    extend?: object;
    festivalDate?: Date;
    festivalName?: string;
    holidayExplain?: string;
    id?: number;
    type?: number;
  }

  export interface FestivalRestDayOutput {
    content?: string;
    festivalDate?: Date;
    festivalName?: string;
    id?: number;
    type?: number;
  }

  export interface FontOutput {
    alignment?: string;
    color?: string;
    size?: string;
  }

  export interface HistoryTodayOutput {
    day?: string;
    img?: string;
    jhid?: string;
    month?: string;
    sort?: number;
    title?: string;
    year?: string;
  }

  export interface JokeOutput {
    content?: string;
    id?: number;
    isCollect?: boolean;
    title?: string;
  }

  export interface LicensePlateNumLimitDto {
    cityCode?: string;
    cityName?: string;
    licensePlateNumLimit?: Array<string>;
    limitData?: object;
  }

  export interface LifeAffectingFactor {
    content?: string;
    img?: string;
  }

  export interface LifeDayOutput {
    appletId?: number;
    birthday?: Date;
    countdownDay?: number;
    created?: Date;
    day?: string;
    deleted?: boolean;
    futureDay?: string;
    id?: number;
    isLunar?: number;
    lifeAffectingFactor?: LifeAffectingFactor;
    lifeExpectancy?: number;
    lifeExpectancyDay?: Date;
    name?: string;
    sex?: number;
    shareUrl?: string;
    userId?: number;
  }

  export interface ListClassifyByFolderIdInput {
    classifyVersion: string;
    matterClassifyVersion: string;
    todoClassifyFolderId?: number;
    withCount?: boolean;
  }

  export interface ListClassifyWithFolderInput {
    classifyVersion: string;
    matterClassifyVersion: string;
    withCount?: boolean;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface MonthRuleDayOfMonthData {
    days: Array<number>;
    month: number;
  }

  export interface MonthRuleDayOfWeekData {
    dayOfWeek: string;
    month: number;
    which: number;
  }

  export interface MyTargetInfoOutput {
    created?: Date;
    deleted?: boolean;
    expireDate?: Date;
    id?: number;
    items?: Array<MyTargetItemOutput>;
    maskLevel?: number;
    updateFlag?: boolean;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface MyTargetItemOutput {
    content?: string;
    created?: Date;
    deleted?: boolean;
    id?: number;
    targetId?: number;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface NewsDto {
    newsContent?: string;
    newsId?: string;
    newsTitle?: string;
    newsUrl?: string;
    pubSource?: string;
    pubTime?: Date;
  }

  export interface OffsetViewInput {
    dataVersion?: string;
    fillInEveryDay?: boolean;
    hasSubTask?: boolean;
    isAllInfo?: boolean;
    isFilterFinished?: boolean;
    location?: BasicPositionRequest;
    offset?: number;
    repeatMerge2One?: boolean;
    sortType?: string;
    subTitleCustom?: SubTitleCustom;
    theDay?: Date;
    todoClassifyFilter?: TodoClassifyFilterDto;
  }

  export interface OssUploadOutput {
    path?: string;
  }

  export interface PerpetualCalendarOutput {
    avoid?: string;
    chineseYearDesc?: string;
    cyclicaDayDesc?: string;
    cyclicaMonthDesc?: string;
    cyclicaYearDesc?: string;
    dateDesc?: string;
    dateStr?: Date;
    historyToday?: Array<HistoryTodayOutput>;
    lunarDateDesc?: string;
    lunarMonthDay?: string;
    solarDay?: number;
    solarMonth?: number;
    solarYear?: number;
    suitable?: string;
    weekDesc?: string;
  }

  export interface PlanClassifyAddInput {
    classifyBgId?: string;
    classifyColorId?: string;
    classifyIcon: string;
    classifyName: string;
    todoClassifyFolderId?: number;
  }

  export interface PlanClassifyEditInput {
    classifyBgId?: string;
    classifyColorId?: string;
    classifyIcon: string;
    classifyId: number;
    classifyName: string;
    todoClassifyFolderId?: number;
  }

  export interface PlanTodoInfoDeleteOutput {
    deleted: boolean;
    id: number;
    personalizedInfo?: Array<TodoInfoDeleteInfo>;
    status: number;
    todoType: number;
    updated: Date;
  }

  export interface PlanViewOutput {
    checklists?: Array<ChecklistViewInfoOutput>;
    todos?: Array<TodoViewInfoOutput>;
  }

  export interface RangeViewInput {
    dataVersion?: string;
    endDate?: Date;
    fillInEveryDay?: boolean;
    hasSubTask?: boolean;
    isAllInfo?: boolean;
    isFilterFinished?: boolean;
    location?: BasicPositionRequest;
    repeatMerge2One?: boolean;
    sortType?: string;
    startDate?: Date;
    subTitleCustom?: SubTitleCustom;
    theDay?: Date;
    todoClassifyFilter?: TodoClassifyFilterDto;
  }

  export interface ReciprocalViewInput {
    currentPage: number;
    dataVersion?: string;
    isHiddenFinish?: boolean;
    keyIds?: Array<number>;
    keyword?: string;
    pageSize: number;
    refYear?: number;
    todoType?: string;
  }

  export interface RecordViewInfoLoadOutput {
    isHide?: boolean;
    keyId?: number;
    viewData?: PaginableResponse<Array<RecordViewInfoOutput>>;
  }

  export interface RecordViewInfoOutput {
    address?: string;
    aheadType?: Array<TodoAheadTypeInput>;
    attachments?: Array<TodoAttachmentOutput>;
    city?: string;
    classifyBgcolor?: string;
    completeTime?: number;
    country?: string;
    created?: Date;
    deleted?: boolean;
    district?: string;
    duration?: number;
    endDatetime?: Date;
    finishState?: number;
    finishTime?: Date;
    finished?: number;
    id?: number;
    importance?: number;
    intervalType?: number;
    latitude?: number;
    longitude?: number;
    percent?: string;
    province?: string;
    recordId?: number;
    remark?: string;
    repeatType?: number;
    repetitionFrequencys?: Array<RecordViewInfoOutput>;
    shortTitle?: string;
    startDatetime?: Date;
    status?: number;
    subTitle?: string;
    tasks?: Array<TodoTaskViewOutput>;
    todoClassifyId?: number;
    todoPostponed?: TodoPostponedOutput;
    todoTime?: Date;
    todoType?: number;
    totality?: number;
    updated?: Date;
    version?: number;
  }

  export interface RecordViewInput {
    currentPage: number;
    dateScopeType?: string;
    hasSubTask?: boolean;
    isAllInfo?: boolean;
    isFilterFinished?: boolean;
    keyId?: number;
    keyword?: string;
    keywords?: Array<string>;
    offset?: number;
    pageSize: number;
    pastDatePosition?: number;
    refStartDateTime?: Date;
    searchKey?: string;
    sortType?: string;
    subTitleCustom?: SubTitleCustom;
    theDateTime: Date;
    todoClassifyIds?: Array<number>;
  }

  export interface RepeatAddTodoInfoOutput {
    aheadType?: Array<TodoAheadTypeInput>;
    created?: Date;
    deleted?: boolean;
    endDatetime?: Date;
    finishImpressionSwitch?: boolean;
    id?: number;
    importance?: number;
    isHolidayFilter?: boolean;
    isPhoneRemind?: boolean;
    isWeekendFilter?: boolean;
    localId?: number;
    personalizedInfo?: Array<TodoFinishOutput>;
    ruleInfo?: Array<RepeatRuleOutput>;
    ruleLocalIds?: Array<RuleLocalItem>;
    shortTitle?: string;
    startDatetime?: Date;
    status?: number;
    task?: Array<TaskOutput>;
    todoClassifyId?: number;
    todoType?: number;
    updated?: Date;
    version?: number;
  }

  export interface RepeatRuleDtoV2 {
    monthRuleDayOfMonthData?: MonthRuleDayOfMonthData;
    monthRuleDayOfWeekData?: MonthRuleDayOfWeekData;
    weekRuleData?: WeekRuleData;
    yearRuleDayOfMonthData?: YearRuleDayOfMonthData;
    yearRuleDayOfWeekData?: YearRuleDayOfWeekData;
  }

  export interface RepeatRuleOutput {
    attachDatetimes?: Array<Date>;
    closeState?: number;
    created?: Date;
    detachDatetimes?: Array<Date>;
    duration?: Map<string, number>;
    endDatetime?: Date;
    id?: number;
    intervalType?: number;
    localId?: number;
    repeatType?: number;
    rules?: Array<Rule>;
    startDatetime?: Date;
    updated?: Date;
  }

  export interface Rule {
    expression?: string;
    repeatValue?: number;
    type?: string;
  }

  export interface RuleLocalItem {
    endDateTime?: Date;
    localId?: number;
    startDateTime?: Date;
  }

  export interface ScheduleEditInput {
    address?: string;
    aheadType?: Array<TodoAheadTypeInput>;
    attachments?: Array<TodoAttachmentInput>;
    city?: string;
    country?: string;
    district?: string;
    duration?: number;
    id?: number;
    importance?: number;
    intervalType?: number;
    latitude?: number;
    localId?: number;
    longitude?: number;
    newTodoTime?: Date;
    province?: string;
    remark?: string;
    shortTitle?: string;
    sonAddList?: Array<TodoTaskInput>;
    sonDeleteList?: Array<TodoTaskInput>;
    sonUpdateList?: Array<TodoTaskInput>;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
  }

  export interface ScheduleEditOutput {
    aheadType?: Array<TodoAheadTypeInput>;
    created?: Date;
    deleted?: boolean;
    endDatetime?: Date;
    finishImpressionSwitch?: boolean;
    id?: number;
    importance?: number;
    isHolidayFilter?: boolean;
    isPhoneRemind?: boolean;
    isWeekendFilter?: boolean;
    localId?: number;
    personalizedInfo?: Array<TodoFinishOutput>;
    ruleInfo?: Array<RepeatRuleOutput>;
    ruleLocalIds?: Array<RuleLocalItem>;
    shortTitle?: string;
    startDatetime?: Date;
    status?: number;
    task?: Array<TaskOutput>;
    todoClassifyId?: number;
    todoType?: number;
    updated?: Date;
    version?: number;
  }

  export interface ScheduleRemindEditInput {
    aheadType?: Array<TodoAheadTypeInput>;
    duration?: number;
    id?: number;
    intervalType?: number;
    newTodoTime?: Date;
    todoTime?: Date;
  }

  export interface ScheduleToChecklistOutput {
    checklist?: ChecklistEditOutput;
    todo?: PlanTodoInfoDeleteOutput;
  }

  export interface StockIndexDto {
    closingPrice?: number;
    currentPrice?: number;
    indexCode?: string;
    indexName?: string;
    openingPrice?: number;
    pubTime?: Date;
  }

  export interface StoryDto {
    content?: string;
    id?: number;
    isCollect?: boolean;
    showDay?: Date;
    title?: string;
    type?: string;
    typeName?: string;
  }

  export interface SubTitleCustom {
    showDetail?: boolean;
    showImportance?: boolean;
    showRepeatType?: boolean;
    showTodoType?: boolean;
    showType?: boolean;
  }

  export interface SummaryDetailInput {
    id?: number;
    oldMobile?: string;
  }

  export interface SummaryDetailOutput {
    audioList?: Array<object>;
    photoList?: Array<object>;
    summaryOutput?: SummaryOutput;
    tagList?: Array<object>;
    videoList?: Array<object>;
  }

  export interface SummaryManageInput {
    applet?: string;
    input?: SummarySelectByKeyWordInput;
    version?: DataVersionInput;
  }

  export interface SummaryOutput {
    audioState?: string;
    colourType?: string;
    content?: string;
    contentStyle?: string;
    coverImg?: string;
    created?: Date;
    deleted?: boolean;
    folderId?: number;
    fontSize?: string;
    gpsName?: string;
    gpsX?: string;
    gpsY?: string;
    id?: number;
    ip?: string;
    photoState?: string;
    recordDate?: Date;
    remark?: string;
    summaryTags?: string;
    summaryType?: string;
    title?: string;
    type?: string;
    updated?: Date;
    userCode?: number;
    userId?: number;
    version?: number;
    videoState?: string;
  }

  export interface SummarySelectByDayInput {
    day?: string;
    oldMobile?: string;
  }

  export interface SummarySelectByDayOutput {
    summaryOutputList?: Array<SummaryOutput>;
  }

  export interface SummarySelectByFolderInput {
    folderId?: number;
    pageNumber?: string;
    pageSize?: string;
  }

  export interface SummarySelectByKeyWordInput {
    keyWord?: string;
    pageNumber?: string;
    pageSize?: string;
    tagId?: number;
  }

  export interface SummarySelectByPageInput {
    pageNumber?: string;
    pageSize?: string;
  }

  export interface SummarySelectByTagInput {
    id?: number;
    linkType?: string;
    oldMobile?: string;
    pageNumber?: string;
    pageSize?: string;
    summaryType?: string;
  }

  export interface SummaryUpdateStatusInput {
    attachment?: Array<Attachment>;
    id?: number;
    oldMobile?: string;
  }

  export interface SummaryUpdateStatusOutput {
    result?: boolean;
    summaryOutput?: SummaryOutput;
  }

  export interface SyncAggregationInput {
    syncList?: Array<SyncInput>;
  }

  export interface SyncInput {
    fromId: number;
    fromVersion: number;
    key?: string;
    pageSize: number;
    toVersion: number;
  }

  export interface TaskAddFinishInput {
    id: number;
  }

  export interface TaskOutput {
    created?: Date;
    deleted?: boolean;
    duration?: number;
    endDatetime?: Date;
    grade?: number;
    id?: number;
    intervalType?: number;
    localId?: number;
    shortTitle?: string;
    startDatetime?: Date;
    subTitle?: string;
    title?: string;
    todoTime?: Date;
    updated?: Date;
    widgetSubTitle?: string;
  }

  export interface TipsOutput {
    content?: string;
    id?: number;
    isCollect?: boolean;
    title?: string;
  }

  export interface TodoAheadTypeInput {
    offset?: number;
  }

  export interface TodoAllDayViewInfoOutput {
    classifyBgcolor?: string;
    created?: Date;
    dayCount?: number;
    deleted?: boolean;
    id?: number;
    importance?: number;
    intervalType?: number;
    remark?: string;
    shortTitle?: string;
    status?: number;
    todoClassifyId?: number;
    todoDate?: Date;
    todoTime?: Date;
    todoType?: number;
    updated?: Date;
    version?: number;
  }

  export interface TodoAttachmentInput {
    mediaType?: number;
    url?: string;
  }

  export interface TodoAttachmentOutput {
    mediaType?: number;
    url?: string;
  }

  export interface TodoClassifyFilterDto {
    classifyFolderIds?: Array<number>;
    classifyIds?: Array<number>;
  }

  export interface TodoClassifyInput {
    classifyVersion: string;
  }

  export interface TodoClassifyListOutput {
    isLimit?: number;
    list?: Array<TodoClassifyOutput>;
  }

  export interface TodoClassifyOutput {
    classifyBgId?: string;
    classifyColorId?: string;
    classifyIcon?: string;
    classifyId?: string;
    classifyName?: string;
    classifyType?: number;
    defaulted?: boolean;
    extParams?: ExtParams;
    folderColor?: string;
    folderIcon?: string;
    grade?: number;
    isFolder?: boolean;
    recordCount?: number;
    subClassifys?: Array<TodoClassifyOutput>;
    isSelect?: boolean
  }


  export class ExtParams {
    color?: Color;
    background?: Background;
    basic?: Basic;
  }

  export interface Color {
    defaultColor?: string;
    completeColor?: string;
    index?: string;
    appletId?: string;
    channelType?: string;
    id?: string;
    version?: string;
  }

  export interface Background {
    bgImgUrl?: string;
    index?: string;
    appletId?: string;
    channelType?: string;
    id?: string;
    version?: string;
    appletName?: string;
  }

  export interface Basic {
    bgImgId?: string;
    index?: string;
    channelType?: string;
    version?: string;
    linearIcon?: string;
    appletName?: string;
    weblinearIcon?: string;
    defaultColorId?: string;
    flatIcon?: string;
    completeIcon?: string;
    appletId?: string;
    webflatIcon?: string;
    id?: string;
  }


  export interface TodoClassifyV3Input {
    classifyVersion: string;
    matterClassifyVersion: string;
  }

  export interface TodoCustomizeTimeDeleteInput {
    id?: number;
  }

  export interface TodoCustomizeTimeListOutput {
    sysDefaultList?: Array<TodoCustomizeTimeOutput>;
    userList?: Array<TodoCustomizeTimeOutput>;
  }

  export interface TodoCustomizeTimeOutput {
    advanceMinute?: number;
    advanceSecond?: number;
    id?: number;
    source?: string;
    userId?: number;
  }

  export interface TodoDataExportInput {
    exports?: Array<TodoReportInput>;
  }

  export interface TodoDayViewOutput {
    isView?: number;
    theDay?: Date;
    todos?: Array<TodoViewInfoOutput>;
  }

  export interface TodoFinishOutput {
    address?: string;
    aheadType?: Array<TodoAheadTypeInput>;
    attachments?: Array<TodoAttachmentOutput>;
    city?: string;
    completeTime?: number;
    country?: string;
    created?: Date;
    deleted?: boolean;
    district?: string;
    duration?: number;
    finishState?: number;
    finishTime?: Date;
    latitude?: number;
    longitude?: number;
    province?: string;
    remark?: string;
    ruleId?: number;
    taskFinishs?: Array<TodoTaskfinishOutput>;
    todoTime?: Date;
    updated?: Date;
    version?: number;
  }

  export interface TodoInfoDeleteInfo {
    deleted: boolean;
    ruleId: number;
    todoTime: Date;
  }

  export interface TodoPostponedOutput {
    created?: Date;
    deleted?: boolean;
    id?: number;
    lastTodoTime?: Date;
    lastUpdateTime?: Date;
    opened?: boolean;
    operType?: string;
    todoId?: number;
    todoType?: string;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface TodoReportInput {
    beginTime?: string;
    email?: string;
    endTime?: string;
    type?: string;
  }

  export interface TodoRuleEditInput {
    duration?: number;
    repeatRuleDtoV2?: RepeatRuleDtoV2;
    repeatValue?: Array<number>;
    todoHH?: number;
    todomm?: number;
  }

  export interface TodoTaskInput {
    duration?: number;
    finishState?: number;
    grade?: number;
    id?: number;
    intervalType?: number;
    localId?: number;
    title?: string;
    todoTime?: Date;
  }

  export interface TodoTaskViewOutput {
    created?: Date;
    deleted?: boolean;
    duration?: number;
    endDatetime?: Date;
    finishState?: number;
    finishTime?: Date;
    grade?: number;
    id?: number;
    intervalType?: number;
    localId?: number;
    shortTitle?: string;
    startDatetime?: Date;
    subTitle?: string;
    title?: string;
    todoTime?: Date;
    updated?: Date;
    widgetSubTitle?: string;
  }

  export interface TodoTaskfinishOutput {
    finishState?: number;
    finishTime?: Date;
    todoTaskId?: number;
  }

  export interface TodoViewDataOutput {
    festivalList?: Array<FestivalDto>;
    restDayList?: Array<FestivalRestDayOutput>;
    viewData?: Array<TodoDayViewOutput>;
  }

  export interface TodoViewInfoOutput {
    actualTodoTime?: Date;
    address?: string;
    aheadType?: Array<TodoAheadTypeInput>;
    appletInnerSort?: number;
    attachments?: Array<TodoAttachmentOutput>;
    auntType?: string;
    city?: string;
    classifyBgcolor?: string;
    colour?: string;
    completeTime?: number;
    country?: string;
    created?: Date;
    deleted?: boolean;
    district?: string;
    duration?: number;
    endDatetime?: Date;
    finishState?: number;
    finishTime?: Date;
    finished?: number;
    id?: number;
    importance?: number;
    intervalType?: number;
    isContinueRemind?: boolean;
    latitude?: number;
    longitude?: number;
    offset?: number;
    percent?: string;
    province?: string;
    recordId?: number;
    remark?: string;
    repeatType?: number;
    repetitionFrequencys?: Array<TodoViewInfoOutput>;
    shortTitle?: string;
    startDatetime?: Date;
    status?: number;
    subDuration?: number;
    subTitle?: string;
    tasks?: Array<TodoTaskViewOutput>;
    title?: string;
    todoClassifyId?: number;
    todoDate?: Date;
    todoPostponed?: TodoPostponedOutput;
    todoTime?: Date;
    todoType?: number;
    totality?: number;
    updated?: Date;
    version?: number;
    weekNo?: number;
    widgetSubTitle?: string;
  }

  export interface UserEmptyInput {
    areaCode?: string;
    code?: string;
    device?: UserDeviceInfo;
    mobile?: string;
  }

  export interface UserEmptyV3Input {
    code: string;
    codeType: string;
    device: UserDeviceInfo;
  }

  export interface UserEmptyValidInput {
    content?: string;
    device: UserDeviceInfo;
    emptyType?: string;
  }

  export interface UserGuidanceInfoDto {
    remark?: string;
    repeatType?: string;
    repeatValue?: string;
    title: string;
    todoType: number;
  }

  export interface UserGuidanceInput {
    userGuidanceInfos?: Array<UserGuidanceInfoDto>;
  }

  export interface UserGuidanceListInput {
    appVersion: string;
  }

  export interface UserGuidanceOutput {
    recordId?: number;
  }

  export interface UserPopupWindowInfoInput {
    appName?: string;
    appVersion?: string;
    everyDayMottoTemplateId?: number;
  }

  export interface UserPopupWindowInfoOutput {
    everyDayMottoPopup?: boolean;
    isevaluate?: boolean;
    templateEverydayOne?: EveryDayMottoTemplateOutput;
  }

  export interface UserTaskGroupOutput {
    finishInfo?: UserTaskGroupFinishInfo;
    groupSignal?: string;
    id?: number;
    monthLimitTimes?: number;
    monthReceiveTimes?: number;
    percent?: number;
    rewardDesc?: string;
    rewardUrlAndroid?: string;
    rewardUrlIos?: string;
    subGroupList?: Array<UserTaskGroupOutput>;
    subTitle?: string;
    taskList?: Array<UserTaskOutput>;
    title?: string;
  }

  export interface UserTaskListOutput {
    groupList?: Array<UserTaskGroupOutput>;
  }

  export interface UserTaskOutput {
    displayVipLogo?: boolean;
    extendParam?: object;
    finishInfo?: UserTaskFinishInfo;
    groupId?: number;
    helpUrlAndroid?: string;
    helpUrlIos?: string;
    id?: number;
    jumpType?: string;
    jumpUrl?: string;
    label?: string;
    labelColor?: string;
    pointQuantity?: number;
    quantityFinished?: number;
    quantityThreshold?: number;
    sort?: number;
    subTitle?: string;
    taskSignal?: string;
    timeStart?: Date;
    title: string;
  }

  export interface VedioOutput {
    img?: string;
    url?: string;
  }

  export interface ViewInput {
    dataVersion?: string;
    fillInEveryDay?: boolean;
    hasSubTask?: boolean;
    isAllInfo?: boolean;
    isFilterFinished?: boolean;
    location?: BasicPositionRequest;
    repeatMerge2One?: boolean;
    sortType?: string;
    subTitleCustom?: SubTitleCustom;
    theDay?: Date;
    todoClassifyFilter?: TodoClassifyFilterDto;
  }

  export interface WeChatDailyInput {
    cityName: string;
    version: string;
  }

  export interface WeatherAlertOutput {
    cityId?: string;
    cityName?: string;
    content?: string;
    infoid?: string;
    level?: string;
    levelType?: number;
    name?: string;
    pubTime?: Date;
    title?: string;
    type?: string;
  }

  export interface WeatherForecastDayOutput {
    cityId?: string;
    cityName?: string;
    conditionDay?: string;
    conditionIdDay?: string;
    conditionIdNight?: string;
    conditionNight?: string;
    humidity?: string;
    icon?: Map<string, string>;
    moonphase?: string;
    moonrise?: string;
    moonset?: string;
    predictDate?: number;
    pubTime?: Date;
    sunrise?: string;
    sunset?: string;
    tempDay?: string;
    tempNight?: string;
    windDegreesDay?: string;
    windDegreesNight?: string;
    windDirDay?: string;
    windDirNight?: string;
    windLevelDay?: string;
    windLevelNight?: string;
    windSpeedDay?: string;
    windSpeedNight?: string;
  }

  export interface WeatherForecastHourOutput {
    cityId?: string;
    cityName?: string;
    conditionId?: string;
    conditionIdDay?: string;
    conditionIdNight?: string;
    hour?: number;
    humidity?: string;
    icon?: Map<string, string>;
    pop?: string;
    predictDate?: number;
    pressure?: string;
    pubTime?: Date;
    qpf?: string;
    realFeel?: string;
    snow?: string;
    temperature?: string;
    uvi?: string;
    weather?: string;
    windDegrees?: string;
    windDir?: string;
    windLevel?: string;
    windSpeed?: string;
  }

  export interface WeatherInfo {
    airLevel?: string;
    airQualityValue?: string;
    cityName?: string;
    condition?: string;
    conditionId?: string;
    conditionIdDay?: string;
    conditionIdNight?: string;
    days?: Array<WeatherForecastDayOutput>;
    hours?: Array<WeatherForecastHourOutput>;
    pop?: string;
    temperature?: number;
    temperatureHigh?: number;
    temperatureLow?: number;
    uvi?: string;
    weatherAlert?: WeatherAlertOutput;
    windDirDay?: string;
    windDirNight?: string;
    windLevelDay?: string;
    windLevelNight?: string;
  }

  export interface WeatherInfoIcon {
    airLevel?: string;
    airQualityValue?: string;
    cityName?: string;
    condition?: string;
    conditionId?: string;
    conditionIdDay?: string;
    conditionIdNight?: string;
    days?: Array<WeatherForecastDayOutput>;
    hours?: Array<WeatherForecastHourOutput>;
    img?: string;
    pop?: string;
    temperature?: number;
    temperatureHigh?: number;
    temperatureLow?: number;
    uvi?: string;
    weatherAlert?: WeatherAlertOutput;
    windDirDay?: string;
    windDirNight?: string;
    windLevelDay?: string;
    windLevelNight?: string;
  }

  export interface WeatherOutput {
    city?: string;
    dressDesc?: string;
    humidity?: number;
    level?: number;
    maxTemperature?: number;
    minTemperature?: number;
    pressure?: number;
    realFeel?: number;
    sunrise?: Date;
    sunset?: Date;
    temperature?: number;
    uvi?: number;
    weather?: string;
    windDegrees?: number;
    windDir?: string;
    windLevel?: number;
    windSpeed?: number;
  }

  export interface WeatherQueryInput {
    cityName?: string;
    dateTime?: string;
  }

  export interface WeekRuleData {
    dayOfWeeks: Array<string>;
    week: number;
  }

  export interface YearRuleDayOfMonthData {
    day?: number;
    month?: number;
    year?: number;
  }

  export interface YearRuleDayOfWeekData {
    dayOfWeek?: string;
    month?: number;
    which?: number;
    year?: number;
  }

  export interface UserTaskGroupFinishInfo {
    couldFinish?: boolean;
    couldShowTask?: boolean;
    finishState?: boolean;
  }

  export interface UserTaskFinishInfo {
    finishState?: boolean;
    pointReceived?: boolean;
    rewardReceived?: boolean;
  }

  export interface AggregationAppletInfoItem {
    appletFastIcon?: string;
    appletIcon?: string;
    appletId?: number;
    appletName?: string;
    appletSubTitle?: string;
    appletType?: string;
    appletTypeColor?: string;
    appletTypeName?: string;
    cannotUnsubscribe?: boolean;
    defaulted?: boolean;
    exampleData?: string;
    operate?: string;
    path?: string;
    reminded?: boolean;
    sort?: number;
    userGuideSubTitle?: string;
    viped?: boolean;
  }

  export interface AggregationAppDailyUsingPOST_1Rsp {
    key?: string;
    response?: object;
  }

  export interface AggregationAailyUsingPOSTRsp {
    calendar?: PerpetualCalendarOutput;
    constellation?: ConstellationDto;
    dailyDataTypes?: Array<string>;
    dailyVoiceOutput?: DailyVoiceOutput;
    dressOutput?: DressShortCutOutput;
    everyDayMotto?: EveryDayMottoTemplateOutput;
    historyTodays?: Array<HistoryTodayOutput>;
    importantDays?: Array<TodoAllDayViewInfoOutput>;
    jokeOutput?: JokeOutput;
    licensePlateNumLimit?: LicensePlateNumLimitDto;
    lifeDay?: LifeDayOutput;
    myTargetInfoOutput?: MyTargetInfoOutput;
    newsDatas?: Array<NewsDto>;
    stock?: Array<StockIndexDto>;
    story?: Array<StoryDto>;
    tipsOutput?: TipsOutput;
    weather?: WeatherInfo;
  }

  export interface DailyVoiceOutput {
    accessToken?: string;
    text?: string;
  }

  export interface AggregationAppDailyUsingPOSTRsp {
    contentList?: Array<string>;
    dailyDataTypes?: Array<Map<string, object>>;
  }

  export interface AppDailyListRow {
    note: string;
    title: string;
    imageVersion: string;
    type: string;
    dailyLock: string;
    logo: string;
  }

  export interface AggregationAppDailyListUsingPOSTRsp {
    closeRows?: Array<AppDailyListRow>;
    rows?: Array<AppDailyListRow>;
  }

  export interface AggregationSelectByKeyWordMemoUsingPOST_1Rsp {
    appletInfo?: Array<AggregationAppletInfoItem>;
    billInfo?: Array<BookkeepingBillOutput>;
    diaryInfo?: Array<DiaryDetailOutput>;
    summaryInfo?: SummaryPage<SummaryOutput>;
  }
}
