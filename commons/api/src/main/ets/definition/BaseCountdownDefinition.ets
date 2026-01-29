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

export namespace BaseCountdownDefinition {
  export interface AddOrUpdateCountdownOutput {
    countdown?: GetCountdownUsingPOSTRsp;
    finishedList?: Array<CountDownFinishedItem>;
  }

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

  export interface BatchUpdateRemindTimeInput {
    remindTime?: string;
  }

  export interface CountResponse {
    count?: number;
  }

  export interface CountdownAheadTypeInput {
    checked?: boolean;
    offset?: number;
  }

  export interface CountdownData {
    aheadType?: string;
    content?: string;
    created?: Date;
    display?: boolean;
    endTime?: Date;
    id?: number;
    ip?: string;
    isLunar?: boolean;
    name?: string;
    pushTime?: Date;
    remindTime?: string;
    sort?: number;
    top?: boolean;
    topTime?: Date;
  }

  export interface CountdownDeleteOutput {
    id?: number;
  }

  export interface CountdownExportData {
    countdownDatas?: Array<CountdownData>;
    countdownFinishedData?: Array<CountdownFinishedData>;
  }

  export interface CountdownFinishedData {
    countdownId?: number;
    created?: Date;
    finishDay?: Date;
    finishState?: boolean;
    ip?: string;
  }

  export interface CountdownFinishedInput {
    countdownId?: string;
    finishDay?: number;
    finishState?: boolean;
  }

  export interface CountdownIdInput {
    id?: number;
  }

  export interface CountdownIdsInput {
    ids?: Array<number>;
  }

  export interface CountdownInputV2 {
    day?: string;
    display?: boolean;
    id?: number;
    images?: Array<string>;
    isLunar: boolean;
    isRemind: boolean;
    name: string;
    remark?: string;
    remindDays?: Array<CountdownRemindDayInput>;
    remindTime?: string;
    repeatType: string;
    repeatValue?: number;
  }

  export interface CountdownListOutput {
    finishList?: Array<GetCountdownUsingPOSTRsp>;
    list?: Array<GetCountdownUsingPOSTRsp>;
  }

  export interface CountdownNameInput {
    name: string;
  }

  export interface CountdownOutputIds {
    ids?: Array<number>;
  }

  export interface CountdownOutputV2 {
    appletId?: number;
    backgroundExtend?: object;
    backgroundImage?: string;
    backgroundLoadingImage?: string;
    backgroundType?: string;
    backgroundVideo?: string;
    countdownDay?: number;
    created?: Date;
    createdDay?: string;
    createdTime?: Date;
    day?: string;
    display?: boolean;
    futureDay?: string;
    id?: number;
    images?: Array<string>;
    isLunar?: boolean;
    isRemind?: boolean;
    isSystemDefaultBackground?: boolean;
    name?: string;
    remark?: string;
    remindDays?: Array<CountdownRemindDayInput>;
    remindTime?: string;
    repeatType?: string;
    repeatValue?: number;
    timeStyle?: string;
    comeDesc?:string,
  }

  export interface CountdownReciprocalViewListOutput {
    list?: Array<CountdownReciprocalViewOutput>;
  }

  export interface CountdownReciprocalViewOutput {
    created?: Date;
    dayCount?: number;
    id?: number;
    importance?: number;
    intervalType?: number;
    shortTitle?: string;
    title?: string;
    todoClassifyId?: number;
    todoDate?: Date;
    todoTime?: Date;
    todoType?: number;
    updated?: Date;
    version?: number;
  }

  export interface CountdownRemindDayInput {
    checked: boolean;
    offset: number;
  }

  export interface CountdownTodoViewInput {
    endDate?: Date;
    filterDisplay?: boolean;
    startDate?: Date;
  }

  export interface CountdownTodoViewListOutput {
    list?: Array<CountdownTodoViewOutput>;
  }

  export interface CountdownTodoViewOutput {
    created?: Date;
    endTome?: Date;
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
    widgetSubTitle?: string;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface IdData {
    id?: number;
  }

  export interface IdRequest {
    id?: string;
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

  export interface UpdateDisplayInput {
    display?: boolean;
    id?: number;
  }

  export interface UpdateTimeStyleInput {
    appletId: number;
    id: number;
    timeStyle: string;
  }

  export interface UpdateCountdownUsingPOSTRequestBody {
    aheadTypeList?: Array<CountdownAheadTypeInput>;
    content?: string;
    display?: boolean;
    endTime?: Date;
    id?: number;
    isLunar?: boolean;
    name?: string;
    remindTime?: string;
    sort?: number;
    top?: boolean;
  }

  export interface CountDownFinishedItem {
    countdownId?: number;
    deleted?: boolean;
    finishDay?: Date;
    finishState?: boolean;
    id?: number;
    updated?: Date;
    version?: number;
  }

  export interface CountDownTemplateItem {
    typeName?: string;
    templateByDateList?: Array<CountDownTemplateLeve1InfoItem>;
  }

  export interface CountDownTemplateLeve1InfoItem {
    date?: string;
    templateList?: Array<CountDownTemplateLeve2InfoItem>
  }

  export interface CountDownTemplateLeve2InfoItem {
    id?: string;
    name?: string;
    content?: string;
    endTime?: string;
    type?: string;
    typeName?: string;
    remark?: string;
  }

  export interface GetCountdownUsingPOSTRsp {
    aheadTypeList?: Array<CountdownAheadTypeInput>;
    content?: string;
    count?: number;
    created?: Date;
    desc?: string;
    display?: boolean;
    endTime?: Date;
    id?: number;
    isLunar?: boolean;
    name?: string;
    remindTime?: string;
    sort?: number;
    sortable?: boolean;
    top?: boolean;
    topTime?: Date;
    updated?: Date;
    userId?: number;
  }

  export interface ShortcutAppletUsingPOSTRsp {
    count?: number;
    desc?: string;
    endTime?: Date;
    id?: number;
    name?: string;
  }

  export interface MyAppletUsingPOSTRsp {
    count?: number;
  }
}
