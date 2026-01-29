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

export namespace BaseBookDefinition {
  export interface AppletHistoryResponse {
    created?: Date;
    id?: number;
    params?: object;
    subTitle?: string;
    title?: string;
  }

  export interface BatchAddBookBySystemBookIdInput {
    ids?: Array<number>;
  }

  export interface BookCountOutput {
    read_page1?: ReadBookPageOne;
    read_page2?: ReadBookPageTwo;
    read_page3?: ReadBookPageThree;
  }

  export interface BookElementSortInput {
    bookType?: string;
    id?: number;
  }

  export interface BookExportTimeOutput {
    beginTime?: string;
    endTime?: string;
  }

  export interface BookGuideOutput {
    bookIcon?: string;
    bookId?: number;
    bookName?: string;
    selected?: boolean;
    sort?: number;
  }

  export interface BookNoteHasDataOutput {
    hasData?: boolean;
  }

  export interface BookTodoViewInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface BookTodoViewListOutput {
    list?: Array<BookTodoViewOutput>;
  }

  export interface BookTodoViewOutput {
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

  export interface BooleanResponse {
    flag?: boolean;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
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

  export interface IdData {
    id?: number;
  }

  export interface IdRequest {
    id: number;
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

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface PaginableRequest {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface RecommendSectionBookData {
    rows?: Array<BookExportTimeOutput>;
    useableTimes?: BookExportTimeOutput;
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

  export interface isbn {
    isbn: string;
  }

  export interface DeleteUsingPOST_1RequestBody {
    folderId?: number;
    ids: Array<string>;
  }

  export interface QueryBookNoteCountByUserIdUsingPOSTResponse {
    bookCount?: number;
    count?: number;
    noteCount?: number;
  }

  export interface ListShortUsingPOSTResponse {
    id?: number;
    name?: string;
    author?: string;
    coverImg?: string;
    percent?: number;
    bookStatus?: string;
    rateType?: string;
    publisher?: string;
  }

  export interface SearchUsingPOSTRequestBody {
    keyWord: string;
  }

  export interface SearchUsingPOSTRsp {
    bookList?: Array<ListShortUsingPOSTResponse>;
    noteList?: Array<NoteItem>;
  }

  export interface AddV2UsingPOST_1RequestBody {
    bookStatus: string;
    currentPage?: number;
    elements: BookElementInfo;
    finishDate?: string;
    folderId?: number;
    rateType: string;
  }

  export interface UpdateV2UsingPOST_1RequestBody {
    bookStatus: string;
    currentPage: number;
    elements: BookElementInfo;
    finishDate?: string;
    folderId?: number;
    id: number;
  }

  export interface UpdateV2UsingPOST_1Rsp {
    bookFolder?: BookV2FolderInfo;
    bookStatus?: string;
    currentPage?: number;
    elements?: BookElementInfo;
    firstReadTime?: string;
    id?: string;
    lastReadTime?: Date;
    percent?: number;
    rateType?: string;
    readDays?: number;
    readSecondAll?: number;
    readTimes?: number;
  }

  export interface NameExistUsingPOSTRequestBody {
    bookName?: string;
  }

  export interface BookLibraryDetailPage {
    author?: string;
    authorIntroduction?: string;
    bookIntroduction?: string;
    catalog?: string;
    chapters?: string;
    coverImg?: string;
    digest?: string;
    id?: number;
    introducer?: string;
    isbn?: string;
    name: string;
    postscript?: string;
    preface?: string;
    publisher?: string;
    publishingDate?: string;
    readHour?: number;
    recommend?: string;
    wordNumber?: number;
  }

  export interface BookElementInfo {
    author?: string;
    bgColor?: string;
    bookIntroduction?: string;
    bookLibraryId?: number;
    copyright?: string;
    coverImg?: string;
    isbn?: string;
    name: string;
    publisher?: string;
    publishingDate?: string;
    readHour?: number;
    totalPage?: number;
    translator?: string;
    wordNumber?: number;
  }

  export interface BookV2OwnListItem {
    author?: string;
    bookStatus?: string;
    coverImg?: Array<string>;
    id?: number;
    index?: number;
    name?: string;
    num: number;
    percent?: number;
    rateType?: string;
    startPage?: number;
    totalPage: number;
    type?: string;
  }

  export interface BookV2FolderInfo {
    folderName?: string;
    hasData?: boolean;
    id?: number;
  }

  export interface BookCountInfo {
    count?: number;
    status?: string;
  }

  export interface BookNoteV2 {
    bookOwnId: number;
    experience?: string;
    noteContent?: string;
    noteImg?: Array<string>;
    startPage?: number;
  }

  export interface AddNoteRequestBody {
    bookOwnId: number;
    noteContent: string;
    noteImg?: string;
    startPage: number;
  }

  export interface UpdateNoteRequestBody {
    bookOwnId: number;
    experience?: string;
    id: number;
    noteContent: string;
    noteImg?: string;
    startPage: number;
  }

  export interface DeleteFolderRequestBody {
    id?: number;
    toId?: number;
  }

  export interface AaddFolderRequestBody {
    bookIdList?: Array<number>;
    folderName?: string;
    fromId?: number;
  }

  export interface EditFolderRequestBody {
    folderName?: string;
    id?: number;
  }

  export interface checkExistRequestBody {
    exists: boolean;
  }

  export interface ListBookV2RequestBody {
    queryType: string;
  }

  export interface AddBookToFolderRequestBody {
    bookIdList?: Array<number>;
    fromId?: number;
    id?: number;
  }

  export interface ConfigSwitchUsingPOSTRequestBody {
    switchState: boolean;
    switchType: string;
  }

  export interface ConfigSwitchUsingPOSTRsp {
    id?: number;
    switchState?: boolean;
    switchType?: string;
  }

  export interface AddBookRecordManualResquestBody {
    bookOwnId: number;
    currentPage: number;
    readDate: string;
    readSecond: number;
  }

  export interface FinishUsingPOSTRequestBody {
    bookRemindConfigId: number;
    finishDate: Date;
    finishState: boolean;
  }

  export interface FinishUsingPOSTRsp {
    bookRemindConfigId?: number;
    finishDate?: Date;
    finishState?: boolean;
    id?: number;
  }

  export interface SortUsingPOSTRequstBody {
    fromIndex: BookElementSortInput;
    sortType: string;
    toIndex?: BookElementSortInput;
  }

  export interface SortInFolderUsingPOSTRequestBody {
    folderId?: number;
    fromIndex: BookElementSortInput;
    toIndex?: BookElementSortInput;
  }

  export interface SortFolderUsingPOSTRequstBody {
    ids: Array<number>;
  }

  export interface DailySummaryStatisticsUsingPOSTRsp {
    appletId?: number;
    color?: string;
    detailList?: Array<Detail>;
    title?: string;
    useTime?: number;
  }

  export interface UpdateUsingPOST_2RequestBody {
    bookOwnId: number;
    currentPage: number;
    id: number;
    readDate: string;
    readSecond: number;
  }

  export interface UpdateStatusUsingPOSTRequestBody {
    bookStatus: string;
    ids: Array<number>;
    readTime?: Date;
  }

  export interface NoteItem {
    bookOwnId?: number;
    coverImg?: string;
    created?: Date;
    experience?: string;
    id?: number;
    name?: string;
    noteContent?: string;
    noteImg?: Array<string>;
    rateType?: string;
    startPage?: number;
  }

  export interface SortSetUsingPOSTRsp {
    bookNoteSort: string;
  }

  export interface NoteDetail {
    bookOwn?: UpdateV2UsingPOST_1Rsp;
    created?: Date;
    experience?: string;
    id?: number;
    noteContent?: string;
    noteImg?: Array<string>;
    rateType?: string;
    startPage?: number;
  }

  export interface ReadAddUsingPOSTRequestBody {
    bookOwnId: number;
    currentPage: number;
    endReadTime: string;
    readSecond: number;
    startReadTime: string;
  }

  export interface StatiscsListItem {
    day: number;
    desc?: string;
    readMinute?: number;
  }

  export interface StatisticDetailUsingPOST_3RequestBody {
    endDay: string;
    startDay: string;
    type: string;
  }

  export interface StatisticDetailUsingPOST_3Rsp {
    averageMinute?: number;
    continueDays?: number;
    endDay?: string;
    lastReadMinuteAll?: string;
    noteCount?: number;
    readDays?: number;
    readMinuteAll?: string;
    readedCount?: number;
    readingCount?: number;
    startDay?: string;
    statiscsList?: Array<StatiscsListItem>;
    type?: string;
    wantCount?: number;
  }

  export interface BookStatisticsDetailPOSTRsp {
    id?: number;
    name?: string;
    readMinute?: number;
  }

  export interface StatisticsDetailUsingPOSTRsp {
    bookList?: Array<BookStatisticsDetailPOSTRsp>;
    day?: Date;
    readMinute?: number;
  }

  export interface PlanSyncRsp {
    closeState?: boolean;
    endDatetime?: Date;
    id?: number;
    rules?: Array<Rule>;
    shortTitle?: string;
    startDatetime?: Date;
    todoTime?: LocalTime;
  }

  export interface QueryRemindAndSwitchUsingPOSTRsp {
    hiddenReaded?: boolean;
    reminded?: boolean;
    repeatType?: string;
    repeatValue?: Array<number>;
    todoTime?: string;
  }

  export interface GlobalSearchUsingPOSTRsp {
    author?: string;
    bookStatus?: string;
    coverImg?: string;
    id?: number;
    name?: string;
    note?: NoteItem;
    percent?: number;
    publisher?: string;
    rateType?: string;
  }

  export interface AddRemindAndSwitchUsingPOSTRequestBody {
    bookOwnId?: number;
    bookRemindType?: string;
    hiddenReaded: boolean;
    reminded: boolean;
    repeatType: string;
    repeatValue?: Array<number>;
    todoTime: string;
  }

  export interface ReadBookDayConcludeData {
    coverImg?: string;
    id?: number;
    name?: string;
    rate?: string;
    useTime?: number;
  }

  export interface BookReadListRequestBody {
    bookOwnId: number;
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface ReadBookPageOne {
    bookCount?: number;
    bookReadedCount?: number;
    readDayCount?: number;
    readMinuteCount?: number;
  }

  export interface ReadBookPageTwo {
    coverUrl?: string;
    favoriteBookName?: string;
    favoriteBookReadMinuteCount?: number;
    readNoteCount?: number;
    readingBookName?: string;
    remainPercent?: number;
  }

  export interface ReadBookPageThree {
    favoriteReadingTime?: string;
    latestBookName?: string;
    latestReadingTime?: Date;
  }

  export interface ReadingDetail {
    currentPage?: number;
    id?: number;
    rateType?: string;
    readSecond?: number;
    readTime?: string;
  }
}
