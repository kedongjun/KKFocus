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

export namespace BaseSummaryDefinition {
  export interface AddSuperFolderInput {
    color?: string;
    folderName?: string;
    icon?: string;
  }

  export interface AnnexExtraOutput {
    annexType?: string;
    duration?: string;
    folderId?: number;
    name?: string;
    originalFileName?: string;
    sort?: number;
    summaryId?: string;
    unionCode?: string;
    uploadTime?: Date;
    url?: string;
    uuid?: string;
  }

  export interface AnnexListByTypeInput {
    currentPage: number;
    keyword?: string;
    pageSize: number;
    type?: string;
  }

  export interface AnnexOutput {
    annexType?: string;
    duration?: string;
    name?: string;
    originalFileName?: string;
    sort?: number;
    unionCode?: string;
    uploadTime?: Date;
    uuid?: string;
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

  export interface BatchDeleteSummaryInput {
    summaryIdList?: Array<string>;
  }

  export interface BatchMoveInOrOutTrashInput {
    status?: number;
    summaryIdList?: Array<string>;
  }

  export interface BatchUpdateSummaryFolderInput {
    folderId?: string;
    summaryIdList?: Array<string>;
  }

  export interface BooleanResponse {
    flag?: boolean;
  }

  export interface CheckSummaryPasswordInput {
    password?: string;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DateRequest {
    theDay?: Date;
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

  export interface IdsRequest {
    ids: Array<string>;
  }

  export interface InstantRequest {
    instant: Date;
  }

  export interface MemorandumPage1 {
    audioCount?: number;
    count?: number;
    photoCount?: number;
    remindCount?: number;
    videoCount?: number;
  }

  export interface MoveInOrOutTrashInput {
    status?: number;
    summaryId?: string;
  }

  export interface PasswordInitStatusOutput {
    init?: boolean;
  }

  export interface RecommendSectionSummaryData {
    rows?: Array<SummaryExportDataOutput>;
    useableTimes?: SummaryExportDataOutput;
  }

  export interface SortFolderInput {
    ids?: Array<string>;
  }

  export interface SummaryAddInput {
    colourType?: string;
    content?: string;
    contentStyle?: string;
    folderId?: number;
    fontSize?: string;
    gpsName?: string;
    gpsX?: string;
    gpsY?: string;
    recordDate?: Date;
    remark?: string;
    summaryType?: string;
    tagId?: Array<number>;
    title?: string;
    type?: string;
  }

  export interface SummaryAddInputV2 {
    annexList?: Array<AnnexInfo>;
    encryption?: boolean;
    folderId?: string;
    frontEditorVersion?: string;
    gpsName?: string;
    gpsX?: string;
    gpsY?: string;
    paperId?: string;
    remindSwitch?: boolean;
    remindTime?: string;
    richTextContent?: string;
    tagIdList?: Array<string>;
    title?: string;
    top?: boolean;
  }

  export interface SummaryAddOutput {
    audioState?: string;
    colourType?: string;
    content?: string;
    contentStyle?: string;
    coverImg?: string;
    folderId?: number;
    fontSize?: string;
    gpsName?: string;
    gpsX?: string;
    gpsY?: string;
    id?: number;
    photoState?: string;
    recordDate?: Date;
    remark?: string;
    status?: number;
    summaryTags?: string;
    summaryType?: string;
    title?: string;
    type?: string;
    userCode?: number;
    userId?: number;
    videoState?: string;
  }

  export interface SummaryAddPlainTextInput {
    plainTextContent?: string;
    title?: string;
  }

  export interface SummaryAudioDto {
    asset?: string;
    audioDuration?: string;
    audioName?: string;
    created?: Date;
    ip?: string;
    linkId?: number;
    linkType?: string;
    remark?: string;
    sort?: string;
    unionCode?: string;
  }

  export interface SummaryBooleanDataOutput {
    hasData?: boolean;
  }

  export interface SummaryBuildInput {
    oldMobile?: string;
    pageNumber?: number;
    summaryList?: Array<SummaryOutput>;
  }

  export interface SummaryBuildOutput {
    list?: Array<SummaryOutput>;
  }

  export interface SummaryCountOutput {
    count?: number;
  }

  export interface SummaryDeleteAudioInput {
    audioId?: number;
    dailyRecordId?: number;
  }

  export interface SummaryDeleteInput {
    id?: number;
  }

  export interface SummaryDeleteOutput {
    result?: boolean;
  }

  export interface SummaryDeletePhotoInput {
    dailyRecordId?: number;
    photoId?: number;
  }

  export interface SummaryDeleteVideoInput {
    dailyRecordId?: number;
    videoId?: number;
  }

  export interface SummaryDetailInput {
    id?: number;
    oldMobile?: string;
  }

  export interface SummaryDetailInputV2 {
    id?: string;
    password?: string;
  }

  export interface SummaryDetailOutput {
    audioList?: Array<object>;
    photoList?: Array<object>;
    summaryOutput?: SummaryOutput;
    tagList?: Array<object>;
    videoList?: Array<object>;
  }

  export interface SummaryDetailOutputV2 {
    annexList?: Array<AnnexOutput>;
    content?: string;
    coverAnnexType?: string;
    coverAnnexUrl?: string;
    created?: string;
    encryption?: boolean;
    folder?: FolderInfo;
    folderId?: number;
    folderName?: string;
    frontEditorVersion?: string;
    gpsName?: string;
    gpsX?: string;
    gpsY?: string;
    id?: string;
    lastEditDate?: Date;
    paper?: SummaryPaperOutput;
    remindSwitch?: boolean;
    remindTime?: string;
    richTextContent?: string;
    selectedTagList?: Array<SummaryTagOutput>;
    sortDateTime?: Date;
    title?: string;
    top?: boolean;
    topTime?: Date;
    userId?: number;
  }

  export interface SummaryDetailsInput {
    count: number;
    oldMobile?: string;
  }

  export interface SummaryDto {
    audioList?: Array<SummaryAudioDto>;
    audioState?: string;
    colourType?: string;
    content?: string;
    contentStyle?: string;
    coverImg?: string;
    created?: Date;
    folderId?: number;
    fontSize?: string;
    gpsName?: string;
    gpsX?: string;
    gpsY?: string;
    id?: number;
    ip?: string;
    photoList?: Array<SummaryPhotoDto>;
    photoState?: string;
    recordDate?: Date;
    remark?: string;
    status?: number;
    summaryTags?: string;
    summaryType?: string;
    title?: string;
    type?: string;
    videoList?: Array<SummaryVideoDto>;
    videoState?: string;
  }

  export interface SummaryExportData {
    content?: string;
    created?: Date;
    folderId?: number;
    folderName?: string;
    id?: number;
    recordDate?: Date;
    summaryType?: string;
    tagIds?: Array<number>;
    tagNames?: string;
    title?: string;
    updated?: Date;
  }

  export interface SummaryExportDataInput {
    beginTime: Date;
    endTime: Date;
  }

  export interface SummaryExportDataOutput {
    beginTime?: string;
    endTime?: string;
  }

  export interface SummaryExportInput {
    endDateTime?: Date;
    startDateTime?: Date;
  }

  export interface SummaryExportOutput {
    summaryExportDatas?: Array<SummaryExportData>;
  }

  export interface SummaryFolderAddInput {
    color?: string;
    folderName?: string;
    icon?: string;
    superFolderId?: string;
  }

  export interface SummaryFolderAddOutput {
    color?: string;
    folderName?: string;
    id?: number;
  }

  export interface SummaryFolderDeleteInput {
    folderId?: string;
    id?: string;
  }

  export interface SummaryFolderDeleteOutput {
    result?: boolean;
  }

  export interface SummaryFolderDto {
    canDel?: string;
    created?: Date;
    folderName?: string;
    id?: number;
    ip?: string;
    remark?: string;
    sort?: number;
  }

  export interface SummaryFolderFindByIdInput {
    id?: number;
  }

  export interface SummaryFolderListOutput {
    summaryFolderList?: Array<SummaryFolderOutput>;
  }

  export interface SummaryFolderListOutputV2 {
    summaryFolderList?: Array<FolderInfo>;
  }

  export interface SummaryFolderOutput {
    canDel?: string;
    created?: Date;
    deleted?: boolean;
    folderName?: string;
    haveSummary?: boolean;
    id?: number;
    ip?: string;
    remark?: string;
    sort?: number;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface SummaryFolderSortInput {
    ids?: string;
  }

  export interface SummaryFolderSortOutput {
    result?: boolean;
  }

  export interface SummaryFolderUpdateInput {
    color?: string;
    folderName?: string;
    icon?: string;
    id?: string;
    superFolderId?: string;
  }

  export interface SummaryFolderUpdateOutput {
    color?: string;
    folderName?: string;
    id?: number;
  }

  export interface SummaryHistory{
    rows?:SummaryHistoryOutput[]
  }

  export interface SummaryHistoryOutput {
    content?: string;
    created?: string;
    richTextContent?: string;
  }

  export interface SummaryImportExportData {
    summaryFolderList?: Array<SummaryFolderDto>;
    summaryList?: Array<SummaryDto>;
    summaryTagList?: Array<SummaryTagDto>;
  }

  export interface SummaryListInput {
    currentPage: number;
    exacted?: boolean;
    folderId?: string;
    keyword?: string;
    pageSize: number;
    sortType?: string;
    tagId?: string;
  }

  export interface SummaryListOutput {
    code?: number;
    data?: RowData<Array<SummaryOutputV2>>;
    highlightTokenSet?: Array<string>;
    msg?: string;
    page?: number;
    size?: number;
    total?: number;
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

  export interface SummaryOutputListV2{
    rows?:SummaryOutputV2[]
  }

  export interface SummaryOutputV2 {
    content?: string;
    coverAnnexType?: string;
    coverAnnexUrl?: string;
    created?: string | number;
    encryption?: boolean;
    folderId?: number;
    frontEditorVersion?: string;
    gpsName?: string;
    gpsX?: string;
    gpsY?: string;
    id?: string;
    lastEditDate?: string;
    paper?: SummaryPaperOutput;
    remindSwitch?: boolean;
    remindTime?: string;
    sortDateTime?: string;
    title?: string;
    top?: boolean;
    topTime?: string;
    userId?: number;
  }

  export interface SummaryPageOutput {
    memorandum_page1?: MemorandumPage1;
  }

  export interface SummaryPaperAddInput {
    img?: string;
    name?: string;
  }

  export interface SummaryPaperDeleteInput {
    id?: string;
  }

  export interface SummaryPaperListOutput {
    paperList?: Array<SummaryPaperOutput>;
  }

  export interface SummaryPaperOutput {
    id?: string;
    img?: string;
    isSelected?: boolean;
    name?: string;
    paperType?: string;
  }

  export interface SummaryPaperSetSelectedInput {
    id?: string;
  }

  export interface SummaryPaperSetSelectedSummaryInput {
    id?: number;
    summaryId?: number;
  }

  export interface SummaryPasswordInput {
    oldPassword?: string;
    password?: string;
  }

  export interface SummaryPhotoDto {
    asset?: string;
    created?: Date;
    ip?: string;
    linkId?: number;
    linkType?: string;
    picName?: string;
    remark?: string;
    sort?: string;
    unionCode?: string;
    uuid?: string;
  }

  export interface SummaryRemindViewInput {
    endDate?: Date;
    startDate?: Date;
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

  export interface SummarySelectByKeyWordOutput {
    count?: number;
    summaryList?: Array<SummaryOutput>;
  }

  export interface SummarySelectByMonthInput {
    month?: string;
  }

  export interface SummarySelectByMonthOutput {
    monthDay?: Array<object>;
  }

  export interface SummarySelectByPageInput {
    pageNumber?: string;
    pageSize?: string;
  }

  export interface SummarySelectByPageOutput {
    count?: number;
    summaryList?: Array<SummaryOutput>;
  }

  export interface SummarySelectByTagInput {
    id?: number;
    linkType?: string;
    oldMobile?: string;
    pageNumber?: string;
    pageSize?: string;
    summaryType?: string;
  }

  export interface SummarySelectByTagOutput {
    count?: number;
    summaryList?: Array<SummaryOutput>;
  }

  export interface SummaryTagAddInput {
    tagName?: string;
  }

  export interface SummaryTagAddOutput {
    id?: string;
    tagName?: string;
  }

  export interface SummaryTagDeleteInput {
    id?: string;
  }

  export interface SummaryTagDeleteOutput {
    result?: boolean;
  }

  export interface SummaryTagDto {
    asset?: string;
    created?: Date;
    id?: number;
    ip?: string;
    tagName?: string;
    unionCode?: string;
  }

  export interface SummaryTagListInput {
    type?: string;
  }

  export interface SummaryTagListOutput {
    summaryTagList?: Array<SummaryTagOutput>;
  }

  export interface SummaryTagOutput {
    asset?: string;
    created?: number;
    deleted?: boolean;
    id?: string;
    memoCount?: number;
    summaryType?: string;
    tagName?: string;
    unionCode?: string;
    updated?: number;
    userCode?: number;
    userId?: number;
    version?: number;
  }

  export interface SummaryTagUpdateInput {
    id?: string;
    tagName?: string;
  }

  export interface SummaryTagUpdateOutput {
    id?: number;
    tagName?: string;
  }

  export interface SummaryTemplateDetailInput {
    id: string;
    templateType: string;
  }

  export interface SummaryTemplateDetailOutput {
    id?: number;
    name?: string;
    richTextContent?: string;
  }

  export interface SummaryTemplateInput {
    coverImg: string;
    id: number;
  }

  export interface SummaryTemplateInputV4 {
    coverImg: string;
    id: string;
    name: string;
  }

  export interface SummaryTemplateNameInput {
    name: string;
  }

  export interface SummaryTemplateOutputV3Data{
    rows?:SummaryTemplateOutputV3[]
  }

  export interface SummaryTemplateOutputV3 {
    coverImg?: string;
    id?: string;
    name?: string;
    templateType?: string;
  }

  export interface SummaryTodoViewListOutput {
    list?: Array<SummaryTodoViewOutput>;
  }

  export interface SummaryTodoViewOutput {
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
  }

  export interface SummaryTransferCondition {
    begin?: Date;
    end?: Date;
    futureUserId?: number;
    livelihoodUserId?: number;
    transferId?: number;
    userPhone?: string;
  }

  export interface SummaryTransferData {
    summaryImportExportData?: SummaryImportExportData;
    transferStatus?: TransferStatus;
    transferUser?: TransferUser;
  }

  export interface SummaryUpdateInput {
    colourType?: string;
    content?: string;
    contentStyle?: string;
    folderId?: number;
    fontSize?: string;
    gpsName?: string;
    gpsX?: string;
    gpsY?: string;
    id?: number;
    recordDate?: Date;
    remark?: string;
    summaryType?: string;
    tagId?: Array<number>;
    title?: string;
    type?: string;
  }

  export interface SummaryUpdateInputV2 {
    annexList?: Array<AnnexInfo>;
    encryption?: boolean;
    folderId?: string;
    frontEditorVersion?: string;
    gpsName?: string;
    gpsX?: string;
    gpsY?: string;
    id?: string;
    paperId?: string;
    remindSwitch?: boolean;
    remindTime?: string;
    richTextContent?: string;
    tagIdList?: Array<string>;
    title?: string;
    top?: boolean;
  }

  export interface SummaryUpdateOutput {
    id?: number;
  }

  export interface SummaryUpdateRemindInput {
    id?: string;
    remindSwitch?: boolean;
    remindTime?: string;
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

  export interface SummaryVideoDto {
    asset?: string;
    created?: Date;
    ip?: string;
    linkId?: number;
    linkType?: string;
    remark?: string;
    unionCode?: string;
    uuid?: string;
    videoName?: string;
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

  export interface UpdateSummaryEncryptionInput {
    encryption?: boolean;
    id?: string;
    password?: string;
  }

  export interface UpdateSummaryFolderInput {
    folderId?: number;
    id?: number;
  }

  export interface UpdateSummaryTopInput {
    id?: string;
    top?: boolean;
  }

  export interface UpdateSuperFolderInput {
    color?: string;
    folderName?: string;
    icon?: string;
    id?: string;
  }

  export interface UserAppletInput {
    appletId?: number;
  }

  export interface UserNetFlowInput {
    appletId?: string;
    netFlow?: string;
    uniqueId?: string;
  }

  export interface UserNetFlowOutput {
    availableNewFlow?: number;
    singleFileMaxSize?: number;
    totalNetFlow?: number;
  }

  export interface FolderInfo {
    color?: string;
    folderName?: string;
    folderType?: string;
    icon?: string;
    id?: string;
    sort?: number;
    subClassifyList?: Array<FolderInfo>;
    summaryCount?: number;
    superFolderId?: string;
    userId?: number;
  }

  export interface DailySummaryDataUsingPOSTRsp {
    appletId?: number;
    dataList?: Array<object>;
    extendMap?: object;
    subTitle?: string;
    title?: string;
  }

  export interface AnnexInfo {
    annexType?: string;
    duration?: string;
    name?: string;
    originalFileName?: string;
    unionCode?: string;
    uploadTime?: string;
    uuid?: string;
    url?:string
    fileSize?:number
    localUrl?:string
  }
}
