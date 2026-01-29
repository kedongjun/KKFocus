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

export namespace BaseFestivalDefinition {
  export interface AppletHistoryResponse {
    created?: Date;
    id?: number;
    params?: object;
    subTitle?: string;
    title?: string;
  }

  export interface BackgroundInput {
    backgroundExtend?: object;
    backgroundImage?: string;
    backgroundLoadingImage?: string;
    backgroundType?: string;
    backgroundVideo?: string;
    id?: number;
    isSystemDefaultBackground?: boolean;
  }

  export interface BatchFestivalOutput {
    festivals?: Array<FestivalCustomOutputV6>;
    ids?: Array<number>;
  }

  export interface BatchUpdateRemindTimeInput {
    remindTime?: string;
  }

  export interface CalendarMonthOutput {
    festivalList?: Array<FestivalDto>;
    from?: string;
    restDayList?: Array<FestivalRestDayOutput>;
    to?: string;
  }

  export interface CountResponse {
    count?: number;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface FestivalCalendarInput {
    calendarDate?: string;
    calendarEndDate?: string;
    type?: string;
  }

  export interface FestivalCustomAddByTemplateInput {
    festivalIdSet?: Array<number>;
    isRemind: boolean;
    remindDays?: Array<FestivalRemindDayInput>;
    remindTime?: string;
    repeatType: string;
  }

  export interface FestivalCustomFinishedInput {
    festivalCustomId?: string;
    finishDay?: number;
    finishState?: boolean;
  }

  export interface FestivalCustomInput {
    day?: Date;
    id?: number;
    images?: Array<string>;
    isLunar: boolean;
    isRemind: boolean;
    name: string;
    remark?: string;
    remindDays?: Array<FestivalRemindDayInput>;
    remindTime?: string;
    repeatType: string;
  }

  export interface FestivalCustomInputV6 {
    day?: number;
    festivalRuleId?: number;
    id?: number;
    images?: Array<string>;
    isLeapMonth?: boolean;
    isLunar: boolean;
    isRemind: boolean;
    month?: number;
    name: string;
    remark?: string;
    remindDays?: Array<FestivalRemindDayInput>;
    remindTime?: string;
    repeatType: string;
    year?: number;
  }

  export interface FestivalCustomNameInput {
    name: string;
  }

  export interface FestivalCustomOutput {
    backgroundExtend?: object;
    backgroundImage?: string;
    backgroundLoadingImage?: string;
    backgroundType?: string;
    backgroundVideo?: string;
    canEdit?: boolean;
    countdownDay?: number;
    created?: Date;
    createdDay?: string;
    createdTime?: Date;
    day?: Date;
    futureDay?: Date;
    id?: number;
    images?: Array<string>;
    isLunar?: boolean;
    isRemind?: boolean;
    isSystemDefaultBackground?: boolean;
    lastDay?: Date;
    name?: string;
    remark?: string;
    remindDays?: Array<FestivalRemindDayInput>;
    remindTime?: string;
    repeatType?: string;
  }

  export interface FestivalCustomOutputV6 {
    appletId?: number;
    backgroundExtend?: object;
    backgroundImage?: string;
    backgroundLoadingImage?: string;
    backgroundType?: string;
    backgroundVideo?: string;
    canEdit?: boolean;
    countdownDay?: number;
    created?: Date;
    createdDay?: string;
    createdTime?: Date;
    day?: number;
    festivalRuleId?: number;
    futureDay?: string;
    id?: number;
    images?: Array<string>;
    isLeapMonth?: boolean;
    isLunar?: boolean;
    isRemind?: boolean;
    isSystemDefaultBackground?: boolean;
    lastDay?: Date;
    month?: number;
    name?: string;
    remark?: string;
    remindDays?: Array<FestivalRemindDayInput>;
    remindTime?: string;
    repeatType?: string;
    specialDateShortDesc?: string;
    timeStyle?: string;
    year?: number;
  }

  export interface FestivalCustomRemindInput {
    isRemind: boolean;
    remindDays?: Array<FestivalRemindDayInput>;
    remindTime?: string;
    repeatType: string;
  }

  export interface FestivalData {
    festivalCustomRemindInput?: FestivalCustomRemindInput;
    festivalIdSet?: Array<number>;
    festivalRuleDatas?: Array<FestivalRuleData>;
    ip?: string;
  }

  export interface FestivalDeleteIdInput {
    festivalId?: number;
    festivalType?: string;
  }

  export interface FestivalDto {
    dateStr?: string;
    extend?: object;
    festivalDate?: string;
    festivalName?: string;
    holidayExplain?: string;
    id?: number;
    type?: number;
  }

  export interface FestivalFinishedInput {
    festivalId?: number;
    finishDay?: Date;
    finishState?: boolean;
  }

  export interface FestivalFollowForSync {
    festivalIdSet?: Array<number>;
  }

  export interface FestivalFollowIdInput {
    id?: number;
  }

  export interface FestivalFollowInsertOrUpdateInput {
    festivalIdSet?: Array<number>;
  }

  export interface FestivalForSelectOutput {
    dateStr?: string;
    festivalDate?: string;
    festivalDesc?: string;
    festivalId?: string;
    festivalImage?: string;
    festivalLogo?: string;
    festivalName?: string;
    festivalType?: string;
    key?: string;
    monthAndDay?: number;
    selected?: boolean;
  }

  export interface FestivalOutputByIdInput {
    festivalId?: number;
    festivalType?: string;
    year?: number;
  }

  export interface FestivalReciprocalViewListOuput {
    list?: Array<FestivalReciprocalViewOutput>;
  }

  export interface FestivalReciprocalViewOutput {
    created?: Date;
    dayCount?: number;
    id?: number;
    importance?: number;
    intervalType?: number;
    shortTitle?: string;
    title?: string;
    todoClassifyId?: number;
    todoDate?: Date;
    todoType?: number;
    updated?: Date;
    version?: number;
  }

  export interface FestivalRemindDayInput {
    checked: boolean;
    offset: number;
  }

  export interface FestivalRestDayOutput {
    content?: string;
    festivalDate: string;
    festivalName?: string;
    id?: number;
    type?: number;
  }

  export interface FestivalRuleData {
    created?: Date;
    dateStr?: string;
    dateType?: number;
    festivalDesc?: string;
    festivalImage?: string;
    festivalName?: string;
    ip?: string;
    leapMonth?: boolean;
    updated?: Date;
  }

  export interface FestivalRuleDateScopeInput {
    dateFrom?: Date;
    dateTo?: Date;
    festivalName?: string;
    forCalendar?: boolean;
    type?: string;
  }

  export interface FestivalRuleInput {
    endYear?: number;
    year?: number;
  }

  export interface FestivalRuleOutput {
    countdownDay?: number;
    countdownDesc?: string;
    created?: Date;
    creator?: string;
    dateDesc?: string;
    dateStr?: string;
    dateType?: number;
    days?: number;
    deleted?: boolean;
    factions?: string;
    festivalDate?: Date;
    festivalDesc?: string;
    festivalIcon?: string;
    festivalId?: number;
    festivalImage?: string;
    festivalLogo?: string;
    festivalName?: string;
    festivalType?: string;
    id?: number;
    langKey?: string;
    method?: string;
    origin?: string;
    religionName?: string;
    rest?: boolean;
    selected?: boolean;
    startTime?: Date;
    updated?: Date;
    updater?: string;
  }

  export interface FestivalSelectOutputList {
    chinaFestival?: Map<string, Array<FestivalForSelectOutput>>;
    chinaFestivalSort?: Array<string>;
    internationalFestival?: Map<string, Array<FestivalForSelectOutput>>;
    internationalFestivalSort?: Array<string>;
    onlineFestival?: Map<string, Array<FestivalForSelectOutput>>;
    onlineFestivalSort?: Array<string>;
    religionFestival?: Map<string, Array<FestivalForSelectOutput>>;
    religionFestivalSort?: Array<string>;
  }

  export interface FestivalSingleInput {
    name?: string;
    year?: number;
  }

  export interface FestivalSystemSyncOutput {
    syncList?: Array<SyncDataAppletResponse>;
    version?: number;
  }

  export interface FestivalTodoViewInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface FestivalTodoViewListOuput {
    list?: Array<FestivalTodoViewOutput>;
  }

  export interface FestivalTodoViewOutput {
    created?: Date;
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

  export interface FestivalTransferCondition {
    begin?: Date;
    end?: Date;
    futureUserId?: number;
    livelihoodUserId?: number;
    transferId?: number;
    userPhone?: string;
  }

  export interface FestivalTransferData {
    festivalData?: FestivalData;
    transferStatus?: TransferStatus;
    transferUser?: TransferUser;
  }

  export interface FestivalVersion {
    version: number;
  }

  export interface HistoryTodayDetailInput {
    jhid?: string;
  }

  export interface HistoryTodayDetailOutput {
    content?: string;
    day?: string;
    img?: string;
    jhid?: string;
    month?: string;
    title?: string;
    year?: string;
  }

  export interface HistoryTodayInput {
    historyDate?: string;
  }

  export interface HistoryTodayListOutput {
    historyTodayList?: Array<HistoryTodayOutput>;
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

  export interface Hour12 {
    currented?: boolean;
    hour?: string;
    luckly?: string;
  }

  export interface IdData {
    id?: number;
  }

  export interface IdRequest {
    id: string;
  }

  export interface IdResponse {
    code?: number;
    data?: IdData;
    msg?: string;
  }

  export interface IdsData {
    ids?: Array<number>;
  }

  export interface IdsRequest {
    ids: Array<number>;
  }

  export interface IdsResponse {
    code?: number;
    data?: IdsData;
    msg?: string;
  }

  export interface KeywordRequest {
    keyword?: string;
  }

  export interface PaginableRequest {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface PerpetualCalendarDetailInput {
    day?: Date;
  }

  export interface PerpetualCalendarDetailOutput {
    avoid?: string;
    chongsha?: string;
    dateDesc?: string;
    dateStr?: Date;
    hourList?: Array<Hour12>;
    jrhh?: string;
    jsyq?: string;
    lunarDateDesc?: string;
    lunarMonthDay?: string;
    pzbj?: string;
    sheng12?: string;
    suitable?: string;
    tszf?: string;
    weekDesc?: string;
    zhiri?: string;
  }

  export interface PerpetualCalendarInput {
    endDate?: string;
    startDate?: string;
  }

  export interface PerpetualCalendarListOutput {
    list?: Array<PerpetualCalendarOutput>;
  }

  export interface PerpetualCalendarOutput {
    avoid?: string;//忌
    chineseYearDesc?: string;
    cyclicaDayDesc?: string;
    cyclicaMonthDesc?: string;
    cyclicaYearDesc?: string;
    dateDesc?: string;
    dateStr?: Date;
    historyToday?: Array<HistoryTodayOutput>;
    lunarDateDesc?: string;
    lunarMonthDay?: string;
    solarDay: number;
    solarMonth?: string;
    solarYear?: string;
    suitable?: string;//宜
    weekDesc?: string;
  }

  export interface PerpetualCalendarViewInput {
    endDate?: Date;
    startDate?: Date;
    theDay?: Date;
  }

  export interface PerpetualCalendarViewOutput {
    calendar?: CalendarMonthOutput;
    dayDesc?: PerpetualCalendarOutput;
  }

  export interface ReciprocalViewRequest {
    currentPage: number;
    isHiddenFinish?: boolean;
    keyword?: string;
    pageSize: number;
    refYear?: number;
  }

  export interface Rule {
    expression?: string;
    repeatValue?: number;
    type?: string;
  }

  export interface SyncDataAppletFinishResponse {
    finishDate?: Date;
    finishState?: boolean;
    id?: number;
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

  export interface TransferStatus {
    transferCode?: number;
    transferId?: number;
    transferMsg?: string;
  }

  export interface TransferUser {
    futureUserId?: number;
    livelihoodUserId?: number;
    userPhone?: string;
  }

  export interface UpdateTimeStyleInput {
    appletId: number;
    id: number;
    timeStyle: string;
  }
}
