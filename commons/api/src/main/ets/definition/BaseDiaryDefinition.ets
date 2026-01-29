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

export namespace BaseDiaryDefinition {
  export interface AnnexListByTypeInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
    type?: string;
  }

  export interface AnnexOverviewOutput {
    count?: number;
    type?: string;
  }

  export interface AppletHistoryResponse {
    created?: Date;
    id?: number;
    params?: object;
    subTitle?: string;
    title?: string;
  }

  export interface AudioInput {
    size?: number;
    url?: string;
  }

  export interface AudioOutput {
    size?: number;
    url?: string;
  }

  export interface BatchDeleteDiaryInput {
    diaryIdList?: Array<string>;
  }

  export interface BatchMoveInOrOutTrashInput {
    diaryIdList?: Array<string>;
    status?: number;
  }

  export interface BatchUpdateDiaryFolderInput {
    diaryIdList?: Array<number>;
    folderId?: number;
  }

  export interface BooleanDataOutput {
    hasData?: boolean;
  }

  export interface BooleanResponse {
    flag?: boolean;
  }

  export interface CheckDiaryPasswordInput {
    password?: string;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DiaryAddInputV2 {
    top?: boolean;
    adress?: string;
    annexList?: Array<Annex>;
    dateTime?: string;
    encryption?: boolean;
    feelId?: number;
    feelUrl?: string;
    folderId?: string;
    frontEditorVersion?: string;
    latitude?: number;
    longitude?: number;
    paperId?: string;
    pointTime?: string;
    richTextContent?: string;
    tagIdList?: Array<string>;
    title?: string;
    weatherId?: number;
    weatherUrl?: string;
    id?: string
  }

  export interface DiaryAddPlainTextInput {
    dateTime?: string;
    folderId?: number;
    frontEditorVersion?: string;
    plainTextContent?: string;
    pointTime?: string;
    title?: string;
  }

  export interface DiaryCountDto {
    diary_page1?: DiaryPageOne;
    diary_page2?: DiaryPageOne;
    diary_page3?: DiaryPageThree;
  }

  export interface DiaryCountOutput {
    count?: number;
  }

  export interface DiaryDeleteInput {
    id?: number;
  }

  export interface DiaryDetailInput {
    folderId?: number;
    id?: string;
    password?: string;
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

  export interface DiaryDetailOutputV2 {
    adress?: string;
    annexList?: Array<Annex>;
    created?: Date;
    dateTime?: string;
    encryption?: boolean;
    feelId?: number;
    feelUrl?: string;
    folderId?: number;
    frontEditorVersion?: string;
    id?: string;
    lastEditDate?: Date;
    latitude?: number;
    longitude?: number;
    nextEncryption?: boolean;
    nextId?: string;
    paper?: DiaryPaperOutput;
    pointTime?: string;
    preEncryption?: boolean;
    preId?: string;
    richTextContent?: string;
    tagIdList?: Array<string>;
    title?: string;
    updated?: Date;
    weatherId?: number;
    weatherUrl?: string;
    top?: boolean;
  }

  export interface DiaryExportDataInput {
    beginTime: Date;
    endTime: Date;
  }

  export interface DiaryExportDataOutput {
    beginTime?: string;
    endTime?: string;
  }

  export interface DiaryFinishedInput {
    finishDay?: Date;
    finishState?: boolean;
    id?: number;
  }

  export interface DiaryFinishedOutput {
    finishDate?: Date;
    finishState?: boolean;
    id?: number;
  }

  export interface DiaryFinishedSearchInput {
    fromVersion?: number;
    toVersion?: number;
  }

  export interface DiaryFolderDeleteInput {
    folderId?: string;
    id?: string;
  }

  export interface DiaryFolderDto {
    folderName?: string;
    icon?: string;
    id?: string;
  }

  export interface DiaryFolderOutput {
    count?: number;
    folderName?: string;
    icon?: string;
    id?: string;
  }

  export interface DiaryHistoryOutput {
    content?: string;
    created?: string;
    richTextContent?: string;
  }

  export interface DiaryTopInput {
    top?: boolean;
    id?: string;
  }

  export interface DiaryInput {
    adress?: string;
    audio?: Array<AudioInput>;
    content?: string;
    coverImg?: string;
    dateTime?: Date;
    feelId?: number;
    feelUrl?: string;
    font?: FontInput;
    id?: number;
    img?: Array<string>;
    latitude?: number;
    longitude?: number;
    tagId?: Array<number>;
    vedio?: Array<VedioInput>;
    weatherId?: number;
    weatherUrl?: string;
  }

  export interface DiaryListInput {
    currentPage: number;
    exacted?: boolean;
    folderId?: string;
    keyword?: string;
    pageSize: number;
    tagId?: string;
  }

  export interface DiaryListOutput {
    code?: number;
    data?: RowData<Array<DiaryOutputV2>>;
    highlightTokenSet?: Array<string>;
    msg?: string;
    page?: number;
    size?: number;
    total?: number;
  }

  export interface DiaryMonthInput {
    folderId?: string;
    month?: string;
  }

  export interface DiaryMonthOutput {
    dateTime?: Date;
  }

  export interface DiaryMonthOutputV2 {
    count?: number;
    dateTime?: string;
  }

  export interface DiaryOutputV2 {
    top?: boolean;
    content?: string;
    coverAnnexType?: string;
    coverAnnexUrl?: string;
    dateTime?: string;
    encryption?: boolean;
    folderId?: number;
    frontEditorVersion?: string;
    id?: string;
    pointTime?: string;
    title?: string;
    created?: number;

    //上传状态 0无 1上传中 2上传失败,同步数据功能本地新增字段
    uploadState?: string
    addDiaryInput?: DiaryAddInputV2 //添加日记input 作为失败缓存
    addFailId?:string //添加日记失败时临时ID
    updateDiaryInput?: DiaryUpdateInputV2 //更新日记input 作为失败缓存
  }

  export interface DiaryPaperAddInput {
    img?: string;
    name?: string;
  }

  export interface DiaryPaperDeleteInput {
    id?: string
  }

  export interface DiaryPaperSelectedInput {
    id?: string
  }

  export interface DiaryPaperListOutput {
    paperList?: Array<DiaryPaperOutput>;
  }

  export interface DiaryPaperOutput {
    id?: string;
    img?: string;
    imgCover?: string;
    isSelected?: boolean;
    name?: string;
    paperType?: string;
  }

  export interface DiaryPaperSetSelectedDiaryInput {
    diaryId?: number;
    id?: number;
  }

  export interface DiaryPasswordInput {
    oldPassword?: string;
    password?: string;
  }

  export interface DiaryQueryByDateInput {
    dateTime?: string;
    folderId?: string;
  }

  export interface DiaryRemindInput {
    remindTime?: string;
  }

  export interface DiaryRemindOutput {
    id?: number;
    remindTime?: string;
  }

  export interface DiarySearchByKeywordInput {
    keyword?: string;
  }

  export interface DiarySearchInput {
    content?: string;
    pageNum?: number;
    pageSize?: number;
  }

  export interface DiaryTagAddInput {
    tagName?: string;
  }

  export interface DiaryTagAddOutput {
    id?: number;
    tagName?: string;
  }

  export interface DiaryTagDeleteInput {
    id?: string;
  }

  export interface DiaryTagDeleteOutput {
    result?: boolean;
  }

  export interface DiaryTagListOutput {
    diaryTagList?: Array<DiaryTagOutput>;
  }

  export interface DiaryTagListOutputV2 {
    diaryTagList?: Array<DiaryTagOutputV2>;
  }

  export interface DiaryTagOutput {
    id?: number;
    tagName?: string;
  }

  export interface DiaryTagOutputV2 {
    id?: string;
    tagCount?: number;
    tagName?: string;
  }

  export interface DiaryTagQueryInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
    tagId?: number;
  }

  export interface DiaryTagUpdateInput {
    id?: string;
    tagName?: string;
  }

  export interface DiaryTagUpdateOutput {
    id?: number;
    tagName?: string;
  }

  export interface DiaryTemplateDetailInput {
    id: number;
    templateType: string;
  }

  export interface DiaryTemplateDetailOutput {
    id?: number;
    name?: string;
    richTextContent?: string;
  }

  export interface DiaryTemplateInput {
    coverImg: string;
    id: number;
  }

  export interface DiaryTemplateInputV4 {
    coverImg: string;
    id: string;
    name: string;
  }

  export interface DiaryTemplateNameInput {
    name: string;
  }

  export interface DiaryTemplateOutputV3 {
    coverImg?: string;
    id?: number;
    name?: string;
    templateType?: string;
  }

  export interface DiaryTodoViewInput {
    fromVersion?: number;
    toVersion?: number;
  }

  export interface DiaryTodoViewItemOutput {
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
    widgetSubTitle?: string;
  }

  export interface DiaryTodoViewListOutput {
    list?: Array<DiaryTodoViewItemOutput>;
  }

  export interface DiaryTodoViewOutput {
    extend?: object;
    id?: number;
    ruleList?: Array<Rule>;
    shortTitle?: string;
  }

  export interface DiaryTodoViewsInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DiaryUpdateInput {
    adress?: string;
    audio?: Array<AudioInput>;
    content?: string;
    coverImg?: string;
    feelId?: number;
    feelUrl?: string;
    font?: FontInput;
    id?: number;
    img?: Array<string>;
    latitude?: number;
    longitude?: number;
    tagId?: Array<number>;
    vedio?: Array<VedioInput>;
    weatherId?: number;
    weatherUrl?: string;
  }

  export interface DiaryUpdateInputV2 {
    top?: boolean;
    adress?: string;
    annexList?: Array<Annex>;
    dateTime?: string;
    encryption?: boolean;
    feelId?: number;
    feelUrl?: string;
    folderId?: string;
    frontEditorVersion?: string;
    id?: string;
    latitude?: string;
    longitude?: string;
    paperId?: string;
    pointTime?: string;
    richTextContent?: string;
    tagIdList?: Array<string>;
    title?: string;
    weatherId?: number;
    weatherUrl?: string;
  }

  export interface FontInput {
    alignment?: string;
    color?: string;
    size?: string;
  }

  export interface FontOutput {
    alignment?: string;
    color?: string;
    size?: string;
  }

  export interface HasTodayDiaryInput {
    now?: Date;
  }

  export interface HasTodayDiaryOutput {
    has?: boolean;
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

  export interface IdsRequest {
    ids: Array<string>;
  }

  export interface IndexCoordinates {
    indexName?: string;
    indexNames?: Array<string>;
    typeName?: string;
    typeNames?: Array<string>;
  }

  export interface InstantRequest {
    instant: Date;
  }

  export interface IsInitOutput {
    init?: boolean;
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

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface MoveInOrOutTrashInput {
    id?: string;
    status?: number;
  }

  export interface PaginableRequest {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface PasswordInitStatusOutput {
    init?: boolean;
  }

  export interface RecommendSectionDiaryData {
    rows?: Array<DiaryExportDataOutput>;
    useableTimes?: DiaryExportDataOutput;
  }

  export interface Rule {
    expression?: string;
    repeatValue?: number;
    type?: string;
  }

  export interface SortFolderInput {
    ids?: Array<string>;
  }

  export interface TodayInHistoryInput {
    folderId?: string;
    today?: string;
  }

  export interface TodayInHistoryOutput {
    latestDay?: string;
    rows?: Array<DiaryOutputV2>;
  }

  export interface UpdateDiaryEncryptionInput {
    encryption?: boolean;
    id?: string;
    password?: string;
  }

  export interface VedioInput {
    img?: string;
    url?: string;
  }

  export interface VedioOutput {
    img?: string;
    url?: string;
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

  export interface AnnexListByTypeUsingPOSTRsp {
    annexType?: string;
    diaryId?: string;
    duration?: string;
    name?: string;
    originalFileName?: string;
    uploadTime?: Date;
  }

  export interface Annex {
    annexType?: string;
    duration?: string;
    name?: string;
    originalFileName?: string;
    unionCode?: string;
    uploadTime?: string;
    uuid?: string;
    url?: string
  }
}
