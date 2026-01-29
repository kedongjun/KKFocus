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

export namespace BaseAnniversaryDefinition {
  export interface AnniversaryAheadTypeTimeInput {
    checked?: boolean;
    offset: number;
  }

  export interface AnniversaryCountOutput {
    count?: number;
    title?: string;
  }

  export interface AnniversaryData {
    aheadTime?: string;
    aheadType?: string;
    aheadTypeTime?: string;
    anniversary?: Date;
    content?: string;
    created?: Date;
    deviceTagApp?: string;
    id?: number;
    image?: string;
    ip?: string;
    isLunar?: number;
    logo?: string;
    name?: string;
    nextTime?: Date;
    todoTime?: string;
  }

  export interface AnniversaryDeleteInput {
    id: number;
  }

  export interface AnniversaryDeleteOutput {
    deleted: boolean;
    id: number;
  }

  export interface AnniversaryExportData {
    anniversaryDatas?: Array<AnniversaryData>;
    anniversaryFinishedDatas?: Array<AnniversaryFinishedData>;
  }

  export interface AnniversaryFinishedData {
    anniversaryId?: number;
    created?: Date;
    finishDay?: Date;
    finishState?: boolean;
    ip?: string;
  }

  export interface AnniversaryFinishedInput {
    anniversaryId?: string;
    finishDay?: number;
    finishDate?: number;
    finishState?: boolean;
  }

  export interface AnniversaryInput {
    aheadTime?: string;
    aheadType: string;
    aheadTypeList?: Array<AnniversaryAheadTypeTimeInput>;
    anniversary: Date;
    content: string;
    deviceTagApp: string;
    id: number;
    image: string;
    isLunar: number;
    logo: string;
    name: string;
  }

  export interface AnniversaryInputV2 {
    day: string;
    id?: number;
    images?: Array<string>;
    isLunar: boolean;
    isRemind: boolean;
    name: string;
    remark?: string;
    remindDays?: Array<AnniversaryAheadTypeTimeInput>;
    remindTime?: string;
    repeatType: string;
  }

  export interface AnniversaryNameInput {
    name: string;
  }

  export interface AnniversaryOutputV2 {
    appletId?: number;
    backgroundExtend?: object;
    backgroundImage?: string;
    backgroundLoadingImage?: string;
    backgroundType?: string;
    backgroundVideo?: string;
    comeDesc?: string;
    comeType?: string;
    comeValue?: number;
    countdownDay?: number;
    created?: Date;
    createdTime?: Date;
    day?: string;
    futureDay?: string;
    id?: number;
    images?: Array<string>;
    isLunar?: boolean;
    isRemind?: boolean;
    isSystemDefaultBackground?: boolean;
    lunarDayDesc?: string;
    lunarMonthDesc?: string;
    name?: string;
    remark?: string;
    remindDays?: Array<AnniversaryAheadTypeTimeInput>;
    remindTime?: string;
    repeatType?: string;
    timeStyle?: string;
  }

  export interface AnniversaryQueryInput {
    id: number;
  }

  export interface AnniversaryReciprocalViewListOutput {
    list?: Array<AnniversaryReciprocalViewOutput>;
  }

  export interface AnniversaryReciprocalViewOutput {
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

  export interface AnniversaryTodoViewInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface AnniversaryTodoViewListOutput {
    list?: Array<AnniversaryTodoViewOutput>;
  }

  export interface AnniversaryTodoViewOutput {
    created?: Date;
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

  export interface AnniversaryUpdateInput {
    aheadTime?: string;
    aheadType: string;
    aheadTypeList?: Array<AnniversaryAheadTypeTimeInput>;
    anniversary: Date;
    content: string;
    deviceTagApp: string;
    id: number;
    image: string;
    isLunar: number;
    logo: string;
    name: string;
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

  export interface IdsRequest {
    ids: Array<number>;
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

  export interface UpdateTimeStyleInput {
    appletId: number;
    id: number;
    timeStyle: string;
  }

  export interface MyAppOutput {
    count?: number;
  }

  export interface AnniversaryTemplate {
    content?: string;
    name?: string;
  }

  export interface ShortcutAppletUsingPOSTResponse {
    aheadTime?: string;
    aheadType?: string;
    aheadTypeList?: Array<AnniversaryAheadTypeTimeInput>;
    anniversary?: Date;
    content?: string;
    count?: number;
    created?: Date;
    deleted?: number;
    description?: string;
    deviceTagApp?: string;
    id?: number;
    image?: string;
    isLunar?: number;
    logo?: string;
    name?: string;
    nextTimeCount?: number;
    nextTimeDesc?: string;
    showTitle?: string;
    todoTime?: string;
    updated?: Date;
    userId?: number;
    yearCountStr?: string;
  }
}
