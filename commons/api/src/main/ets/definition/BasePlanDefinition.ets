import { PaginableResponse, UserDeviceInfo, } from './BaseDefinition'

export namespace BasePlanDefinition {
  export interface AppletHistoryResponse {
    created?: Date;
    id?: number;
    params?: object;
    subTitle?: string;
    title?: string;
  }

  export interface BatchModTime2ScheduleInput {
    checklistToSchedules?: Array<Checklist2ScheduleInput>;
    scheduleRemindEdits?: Array<ScheduleRemindEditInput>;
  }

  export interface BatchModTime2ScheduleOutput {
    oldChecklistId2NewScheduleIdMapping?: Array<IdMapping>;
  }

  export interface BatchRecordInfoDataInput {
    records?: Array<RecordInfoDataInput>;
  }

  export interface BatchSchedule2ChecklistOutput {
    oldScheduleId2NewChecklistIdMapping?: Array<IdMapping>;
  }

  export interface BooleanDataOutput {
    hasData?: boolean;
  }

  export interface BooleanResponse {
    flag?: boolean;
  }

  export interface Checklist2ScheduleInput {
    aheadType?: Array<TodoAheadTypeInput>;
    duration?: number;
    id?: string;
    intervalType?: number;
    todoTime?: Date | number;
  }

  export interface ChecklistAttachmentData {
    checklistFinishId?: number;
    checklistId?: number;
    created?: Date;
    deleted?: boolean;
    id?: number;
    ip?: string;
    mediaType?: number;
    remark?: string;
    signature?: string;
    updated?: Date;
    url?: string;
    urls?: Array<string>;
    userId?: number;
    version?: number;
  }

  export interface ChecklistAttachmentInput {
    mediaType?: number;
    url?: string;
  }

  export interface ChecklistAttachmentOutput {
    mediaType?: number;
    url?: string;
  }

  export interface ChecklistBatchAddInput {
    checklistInputs?: Array<ChecklistInput>;
  }

  export interface ChecklistBatchAddOutput {
    checklistOutputs?: Array<ChecklistOutput>;
  }

  export interface ChecklistCheckinInput {
    checklistId: string;
    finishState?: number;
    checklistTaskId?: string;
  }

  export interface ChecklistClassifyStatisticsInfo {
    finished?: number;
    keyId?: number;
    totality?: number;
  }

  export interface ChecklistClassifyStatisticsOutput {
    classifyStatistics?: Array<ChecklistClassifyStatisticsInfo>;
  }

  export interface ChecklistData {
    classifyId?: number;
    created?: Date;
    deleted?: boolean;
    finishState?: number;
    grade?: number;
    id?: number;
    importance?: number;
    ip?: string;
    oldTodoInfoId?: number;
    remark?: string;
    shortTitle?: string;
    status?: number;
    title?: string;
    updated?: Date;
    userCode?: number;
    userId?: number;
    version?: number;
  }

  export interface ChecklistDeleteInfo {
    deleted: boolean;
    id: number;
    status: number;
    updated: Date;
  }

  export interface ChecklistDeleteInput {
    deleteInfos?: Array<ChecklistDeleteItem>;
  }

  export interface ChecklistDeleteItem {
    id?: string;
    taskIds?: Array<string>

  }

  export interface ChecklistEditInput {
    address?: string;
    attachments?: Array<ChecklistAttachmentInput>;
    city?: string;
    country?: string;
    dailyShow?: boolean;
    district?: string;
    duration?: number;
    id?: string;
    importance?: number;
    latitude?: string;
    longitude?: string;
    province?: string;
    remark?: string;
    shortTitle?: string;
    sonAddList?: Array<ChecklistTaskInput>;
    sonDeleteList?: Array<ChecklistTaskInput>;
    sonUpdateList?: Array<ChecklistTaskInput>;
    title?: string;
    todoClassifyId?: string;
    isHolidayFilter?: boolean;
    isWeekendFilter?: boolean;
    localId?: number;
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

  export interface ChecklistElement {
    checklistAttachmentData?: ChecklistAttachmentData;
    checklistData?: ChecklistData;
    checklistExtData?: ChecklistExtData;
    checklistFinishData?: ChecklistFinishData;
    checklistTaskData?: Array<ChecklistTaskData>;
    checklistTaskFinishData?: Array<ChecklistTaskFinishData>;
  }

  export interface ChecklistExtData {
    address?: string;
    checklistFinishId?: number;
    city?: string;
    country?: string;
    created?: Date;
    deleted?: boolean;
    district?: string;
    id?: number;
    ip?: string;
    latitude?: number;
    longitude?: number;
    province?: string;
    remark?: string;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface ChecklistFinishData {
    checklistId?: number;
    completeTime?: number;
    created?: Date;
    deleted?: boolean;
    finishState?: number;
    finishTime?: Date;
    id?: number;
    ip?: string;
    remark?: string;
    updated?: Date;
    userId?: number;
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

  export interface ChecklistImportExportData {
    checklistElements?: Array<ChecklistElement>;
    checklistSortData?: ChecklistSortData;
    todoClassifyDatas?: Array<TodoClassifyData>;
    todoClassifySortData?: TodoClassifySortData;
  }

  export interface ChecklistInput {
    importance?: number;
    localId?: number;
    remark?: string;
    shortTitle?: string;
    sonAddList?: Array<ChecklistTaskInput>;
    title?: string;
    todoClassifyId?: number;
  }

  export interface ChecklistOutput {
    created?: Date;
    dailyShow?: boolean;
    deleted?: boolean;
    id?: number;
    importance?: number;
    localId?: number;
    shortTitle?: string;
    status?: number;
    todoClassifyId?: string;
    updated?: Date;
    version?: number;
  }

  export interface ChecklistSetCompleteTimeInput {
    completeTime: number;
    finishTime?: Date;
    id: number;
  }

  export interface ChecklistSetCompleteTimeOutput {
    created?: Date;
    dailyShow?: boolean;
    deleted?: boolean;
    id?: number;
    importance?: number;
    localId?: number;
    personalizedInfo?: Array<ChecklistFinishOutput>;
    shortTitle?: string;
    status?: number;
    todoClassifyId?: number;
    updated?: Date;
    version?: number;
  }

  export interface ChecklistSortData {
    created?: Date;
    deleted?: boolean;
    id?: number;
    ip?: string;
    sorts?: Array<number>;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface ChecklistSortInput {
    key?: string;
    sort?: Array<number>;
  }

  export interface ChecklistTaskData {
    checklistId?: number;
    created?: Date;
    deleted?: boolean;
    grade?: number;
    id?: number;
    ip?: string;
    localId?: number;
    nextTime?: Date;
    remark?: string;
    title?: string;
    todoTime?: Date;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface ChecklistTaskFinishData {
    checklistFinishId?: number;
    checklistTaskId?: number;
    created?: Date;
    deleted?: boolean;
    finishState?: number;
    finishTime?: Date;
    id?: number;
    ip?: string;
    remark?: string;
    updated?: Date;
    userId?: number;
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

  export interface ChecklistTaskSortInput {
    checklistId?: number;
    key?: string;
    sort?: Array<number>;
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
    id?: string;
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
    todoClassifyId?: string;
    todoTime?: number;
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
    id?: string;
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
    todoClassifyId?: string;
    todoTime?: number;
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

  export interface ChecklistViewInfoOutputList {
    classifys?: Array<PlanClassifyOutput>;
    list?: Array<ChecklistViewInfoOutput>;
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

  export interface ClassifyFinishTimeOutput {
    classifyName?: string;
    percent?: number;
    sumCompleteTime?: number;
  }

  export interface ClassifyFolderInput {
    color: string;
    icon: string;
    id?: string;
    name: string;
  }

  export interface ClassifyFolderOutput {
    color: string;
    icon: string;
    id?: string;
    name: string;
  }

  export interface ClassifyStatisticOutput {
    classifyId?: number;
    classifyName?: string;
    ptc?: number;
    usedTime?: number;
  }

  export interface ComparedStatisticOutput {
    lastUsedTime?: number;
    thisUsedTime?: number;
  }

  export interface CopyRepeatInput {
    id?: string;
    todoTime?: number;
  }

  export interface DailyClassifyOutput {
    classifyColor?: string;
    classifyColorId?: string;
    classifyId?: number;
    classifyName?: string;
  }

  export interface DailyPlanOutput {
    classifyId?: number;
    id?: number;
    title?: string;
    todoTime?: Date;
    todoType?: number;
    useTime?: number;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DayStatisticItem {
    classifyId?: number;
    duration?: number;
    id?: number;
    importance?: number;
    intervalType?: number;
    shortTitle?: string;
    todoTime?: string;
    todoType?: number;
    usedTime?: number;
  }

  export interface DayStatisticOutput {
    day?: string;
    dayStatisticItems?: Array<DayStatisticItem>;
    isHasItems?: boolean;
    usedTime?: number;
  }

  export interface DelTodayAndAfterRepeatInput {
    endDateTime?: string;
    id?: string;
  }

  export interface DelayAddInput {
    newTodoTime?: string;
    offset?: number;
    taskId?: string;
    todoId: string;
    todoTime?: string;
    todoType: number;
  }

  export interface DelayAddOutput {
    created?: Date;
    deleted?: boolean;
    id?: number;
    newTodoTime?: Date;
    offset?: number;
    shortTitle?: string;
    taskId?: number;
    todoId?: number;
    todoTime?: Date;
    todoType?: number;
    updated?: Date;
    version?: number;
  }

  export interface DeleteRecordInfoDto {
    id: string;
    todoTime?: Date | number;
    todoType?: number;
  }

  export interface DeleteTodoCustomizeTimeOutput {
    advanceMinute?: number;
  }

  export interface DeleteTodoInfoDto {
    id?: string;
    todoTimes?: Array<Date | number | string>;
    ruleIds?: Array<string>;
  }

  export interface Duration {
    nano?: number;
    negative?: boolean;
    seconds?: number;
    units?: Array<TemporalUnit>;
    zero?: boolean;
  }

  // export  interface  filterParamsInterFace{
  //   appletId?: number,
  //   version?: string
  // }
  export interface ExcelConfigDto {
    configKey: string;
    filterParams?: Map<string, string>;
    typeKey?: string;
  }

  export interface ExcelConfigInput {
    configs: Array<ExcelConfigDto>;
  }

  export interface FindDailyStatisticsTodoInput {
    findTodoList?: Array<FindTodoInput4DailyStatistic>;
  }

  export interface FindDailyStatisticsTodoOutput {
    classifyList?: Array<DailyClassifyOutput>;
    planList?: Array<DailyPlanOutput>;
  }

  export interface FindFilterPostponedRequest {
    operType?: string;
    todoIds: Array<number>;
  }

  export interface FindPostponedRequest {
    operType?: string;
  }

  export interface FindTasksInput {
    id: number;
    todoTime: Date;
  }

  export interface FindTodoInput {
    id: number;
    todoType: number;
  }

  export interface FindTodoInput4DailyStatistic {
    id: number;
    todoTime?: Date;
    todoType: number;
  }

  export interface IdData {
    id?: number;
  }

  export interface IdMapping {
    newId?: number;
    oldId?: number;
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

  export interface ImportanceFinishCountOutput {
    count?: number;
    importance?: number;
    importanceDesc?: string;
    percent?: number;
  }

  export interface ImportanceSortInput {
    sort: Array<number>;
  }

  export interface ImportanceStatisticOutput {
    importance?: string;
    importanceDesc?: string;
    importanceValue?: number;
    ptc?: number;
    usedTime?: number;
  }

  export interface ImportanceTipsInput {
    level0?: string;
    level1?: string;
    level2?: string;
    level3?: string;
  }

  export interface ImportanceTipsOutput {
    level0?: string;
    level1?: string;
    level2?: string;
    level3?: string;
    sort?: Array<number>;
  }

  export interface ImportantViewStatisticsInput {
    dateScopeType?: string;
    theDateTime: Date;
  }

  export interface ImportantViewStatisticsOutput {
    importanceIFinishCount?: number;
    importanceIIFinishCount?: number;
    importanceIIIFinishCount?: number;
    importanceIIITotalCount?: number;
    importanceIITotalCount?: number;
    importanceITotalCount?: number;
    importanceIVFinishCount?: number;
    importanceIVTotalCount?: number;
  }

  export interface ImportantViewloadInput {
    currentPage: number;
    dateScopeType?: string;
    hasSubTask?: boolean;
    importancePerCount?: number;
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

  export interface InitUserDataTemplate {
    data?: RecordInput;
    desc?: string;
    templateId?: string;
    title?: string;
  }

  export interface InitUserDataTemplateV1Output {
    currDay: Date;
    records_1: Array<InitUserDataTemplate>;
    records_2: Array<InitUserDataTemplate>;
    records_3: Array<InitUserDataTemplate>;
  }

  export interface ListClassifyByFolderInput {
    todoClassifyFolderId?: number;
    withCount?: boolean;
  }

  export interface ListClassifyInput {
    withCount?: boolean;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
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
    dataCreatePeriodCount?: DataCreatePeriodCountDto;
    importanceFinishCountList?: Array<ImportanceFinishCountOutput>;
  }

  export interface MatterPageOutput {
    matter_page1?: MatterPage1;
    matter_page2?: MatterPage2;
    matter_page3?: MatterPage3;
  }

  export interface MaxFinishDayOutput {
    count?: number;
    day?: string;
    sumCompleteTime?: number;
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

  export interface OssTokenOutput {
    accessKeyId?: string;
    accessKeySecret?: string;
    expiration?: string;
    securityToken?: string;
  }

  export interface PlanAppletHistoryInput {
    params?: Array<Map<string, object>>;
  }

  export interface PlanCheckinAddInput {
    checkDay: Date;
    images?: Array<string>;
    impression: string;
    todoId: number;
  }

  export interface PlanCheckinRangeInput {
    endDay: string;
    startDay: string;
    todoId: number;
  }

  export interface PlanCheckinUpdateInput {
    checkDay?: string;
    images?: Array<string>|string;
    impression?: string;
    todoId?: string;
  }

  export interface PlanChecklistCountOutput {
    checklistCount?: number;
    todos?: Array<TodoViewInfoOutput>;
  }

  export interface PlanChecklistSortOperateInfo {
    addNode?: number;
    afterNode?: number;
    deleteNode?: number;
  }

  export interface PlanChecklistSortOperateInput {
    sorts?: Array<PlanChecklistSortOperateInfo>;
  }

  export interface PlanChecklistSortOperateOutput {
    sorts?: Array<PlanChecklistSortOperateInfo>;
  }

  export interface PlanClassifyAddInput {
    classifyBgId?: string;
    classifyColorId?: string;
    classifyIcon: string;
    classifyName: string;
    todoClassifyFolderId?: string;
  }

  export interface PlanClassifyBgInput {
    bgIds?: Array<number>;
    classifyVersion?: string;
  }

  export interface PlanClassifyDeleteInput {
    classifyId: number;
    isDeleteClassifyAndContent: number;
    newClassifyId: number;
  }

  export interface PlanClassifyDeleteInputV2 {
    classifyId: string;
    isDeleteClassifyAndContent: number;
    isFolder?: boolean;
    newClassifyId?: string;
  }

  export interface PlanClassifyEditInput {
    classifyBgId?: string;
    classifyColorId?: string;
    classifyIcon: string;
    classifyId: string;
    classifyName: string;
    todoClassifyFolderId?: string;
  }

  export interface PlanClassifyInitInput {
    planClassifyAddInputs?: Array<PlanClassifyAddInput>;
  }

  export interface PlanClassifyInput {
    classifyId: number;
    classifyType: number;
    folder?: boolean;
    grade: number;
    isFolder?: boolean;
  }

  export interface PlanClassifyInputV2 {
    classifyId: string;
    classifyType: number;
    folder?: boolean;
    grade: number;
    isFolder?: boolean;
    subClassifys?: Array<PlanClassifyInputV2>;
  }

  export interface PlanClassifyListOutput {
    classifyList?: Array<PlanClassifyOutput>;
    classifySortList?: string;
    isLimit?: number;
  }

  export interface PlanClassifyListOutputV2 {
    classifyList?: Array<PlanClassifyOutputV2>;
    isLimit?: number;
  }

  export interface PlanClassifyOutput {
    classifyBgId?: string;
    classifyColorId?: string;
    classifyIcon?: string;
    classifyId?: number;
    classifyName?: string;
    classifyType?: number;
    defaulted?: boolean;
    folderColor?: string;
    folderIcon?: string;
    folderName?: string;
    grade?: number;
    recordCount?: number;
    todoClassifyFolderId?: number;
  }

  export interface PlanClassifyOutputV2 {
    classifyBgId?: string;
    classifyColorId?: string;
    classifyIcon?: string;
    classifyId?: number;
    classifyName?: string;
    classifyType?: number;
    defaulted?: boolean;
    folderColor?: string;
    folderIcon?: string;
    folderName?: string;
    grade?: number;
    isFolder?: boolean;
    recordCount?: number;
    subClassifys?: Array<PlanClassifyOutputV2>;
    todoClassifyFolderId?: number;
  }

  export interface PlanClassifySortInput {
    list?: Array<PlanClassifyInput>;
  }

  export interface PlanClassifySortInputV2 {
    list?: Array<PlanClassifyInputV2>;
  }

  export interface PlanClassifyUpdateInput {
    classifyId: number;
    todoIds: Array<number>;
  }

  export interface PlanComponentConfigInput {
    showConfig: string;
  }

  export interface PlanConfigOutput {
    defaultClassifyId?: number;
    defaultImportance?: number;
    isAutoPostponed?: boolean;
    isContinueRemind?: boolean;
    isFinishLine?: boolean;
    isShowTask?: boolean;
  }

  export interface PlanExportDataInput {
    beginTime: Date;
    endTime: Date;
  }

  export interface PlanExportDataOutput {
    beginTime?: string;
    endTime?: string;
  }

  export interface PlanIKnowInput {
    todoId?: number;
    todoTime?: Date;
  }

  export interface PlanIgnoreInput {
    todoIds: Array<number>;
  }

  export interface PlanIgnoreOutput {
    todoIds?: Array<number>;
    type?: string;
  }

  export interface PlanMoveTodoDateInput {
    todoDate: Date;
    todoIds: Array<number>;
  }

  export interface PlanMoveTodoDateOutput {
    todoDate: Date;
    todoIds?: Array<number>;
  }

  export interface PlanMoveTomorrowInput {
    todoIds: Array<number>;
  }

  export interface PlanRangeStatisticOutput {
    classifyStatistics?: Array<ClassifyStatisticOutput>;
    comparedStatistic?: ComparedStatisticOutput;
    dayStatistics?: Array<DayStatisticOutput>;
    importanceStatistics?: Array<ImportanceStatisticOutput>;
    totalUsedTime?: number;
  }

  export interface PlanRecordSortOperateInfo {
    addNode?: string;
    addType?: number;
    afterNode?: string;
    afterType?: number;
    deleteNode?: string;
    deleteType?: number;
  }

  export interface PlanRecordSortOperateInput {
    sorts?: Array<PlanRecordSortOperateInfo>;
  }

  export interface PlanRecordSortOperateOutput {
    sorts?: Array<PlanRecordSortOperateInfo>;
  }

  export interface PlanRecordTopInput {
    sorts?: Array<RecordTopDto>;
  }

  export interface PlanRecycledDeleteInput {
    todoIds: Array<string>;
  }

  export interface PlanRecycledOutput {
    todoIds?: Array<number>;
  }

  export interface PlanRecycledRecoveryInput {
    todoIds: Array<string>;
  }

  export interface PlanRemindAgainOutput {
    interval?: number;
    open?: boolean;
  }

  export interface PlanRepeatInfoByDateRangeOutput {
    finishState?: number;
    taskList?: Array<RepeatTask>;
    theDay?: Date;
  }

  export interface PlanRepeatInfoOutput {
    deleted?: boolean;
    id?: number;
    importance?: number;
    percent?: string;
    repeatType?: number;
    shortTitle?: string;
    status?: number;
    subTitle?: string;
    title?: string;
    todoClassifyId?: number;
  }

  export interface PlanRepeatListInput {
    theDay?: Date;
  }

  export interface PlanRepeatListOutput {
    finished?: number;
    repeateList?: Array<PlanRepeatInfoOutput>;
    total?: number;
    unFinished?: number;
  }

  export interface PlanScheduleCompletionInput {
    id?: number;
    theDay?: Date;
  }

  export interface PlanScheduleCompletionOutput {
    percent?: string;
  }

  export interface PlanStatisticInput {
    classifyId?: string;
    importance?: number;
    startDay: string;
  }

  export interface PlanTemplateInput {
    id?: string;
    name?: string;
    subList?: Array<string>;
    templateType?: string;
  }

  export interface PlanTemplateOutput {
    id?: number;
    name?: string;
    subList?: Array<string>;
    templateType?: string;
  }

  export interface PlanTodoInfoDeleteInput {
    deleteInfos?: Array<DeleteTodoInfoDto>;
  }

  export interface PlanTodoInfoDeleteOutput {
    deleted: boolean;
    id: number;
    personalizedInfo?: Array<TodoInfoDeleteInfo>;
    status: number;
    todoType: number;
    updated: Date;
  }

  export interface PlanViewInput {
    allInfo?: boolean;
    endDateTime?: Date;
    filterFinished?: boolean;
    hasSubTask?: boolean;
    startDateTime?: Date;
    subTitleCustom?: SubTitleCustom;
    theDay?: Date;
    todoClassifyFilter?: TodoClassifyFilterDto;
  }

  export interface PlanViewOutput {
    checklists?: Array<ChecklistViewInfoOutput>;
    todos?: Array<TodoViewInfoOutput>;
  }

  export interface PlanWxInfoOutput {
    duration?: number;
    intervalType?: number;
    repeatType?: string;
    shortTile?: string;
    todoTime?: Date;
  }

  export interface PostponedDto {
    opened?: boolean;
    operType?: string;
    todoId?: string;
    todoType?: string;
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

  export interface RecommendSectionPlanData {
    rows?: Array<PlanExportDataOutput>;
    useableTimes?: PlanExportDataOutput;
  }

  export interface RecordAddAndEditInput {
    address?: string;
    aheadType?: Array<TodoAheadTypeInput>;
    attachments?: Array<TodoAttachmentInput>;
    city?: string;
    country?: string;
    district?: string;
    duration?: number;
    importance?: number;
    intervalType?: number;
    latitude?: number;
    localId?: number;
    longitude?: number;
    province?: string;
    remark?: string;
    shortTitle?: string;
    sonAddList?: Array<TodoTaskInput>;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
    todoType?: number;
  }

  export interface RecordAddRepeatInput {
    addList?: Array<TodoRuleEditInput>;
    address?: string;
    aheadType?: Array<TodoAheadTypeInput>;
    attachments?: Array<TodoAttachmentInput>;
    duration?: number;
    endDateTime?: Date;
    finishImpressionSwitch?: boolean;
    importance?: number;
    intervalType?: number;
    isHolidayFilter?: boolean;
    isWeekendFilter?: boolean;
    localId?: number;
    remark?: string;
    repeatRuleDtoV2?: RepeatRuleDtoV2;
    repeatType?: string;
    repeatValue?: Array<number>;
    ruleLocalIds?: Array<RuleLocalItem>;
    shortTitle?: string;
    sonAddList?: Array<TodoTaskInput>;
    startDateTime?: Date;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
    todoType?: number;
  }

  export interface RecordBatchAddInput {
    records?: Array<RecordInput>;
  }

  export interface RecordBatchAddOutput {
    checklistOutputs?: Array<ChecklistOutput>;
    todos?: Array<ScheduleAddOutput>;
  }

  export interface RecordBatchCheckinInput {
    checklists?: Array<ChecklistCheckinInput>;
    todos?: Array<TodoAllCheckinInput>;
  }

  export interface RecordBatchCopyInput {
    records?: Array<RecordCopyInput>;
  }

  export interface RecordBatchDeleteInput {
    deleteInfos?: Array<DeleteRecordInfoDto>;
  }

  export interface RecordCopyInput {
    id?: string;
    todoTime?: Date | number;
    todoType?: number;
  }

  export interface RecordImportExportData {
    checklistImportExportData?: ChecklistImportExportData;
    recordClassifyData?: Array<TodoClassifyData>;
    recordClassifySortData?: TodoClassifySortData;
    recordSortItems?: Array<RecordSortItemOutput>;
    todoImportExportData?: TodoImportExportData;
  }

  export interface RecordInfoCheckTodoTimeInput {
    duration?: number;
    id?: number;
    intervalType?: number;
    newTodoTime?: Date;
    todoTime?: Date;
  }

  export interface RecordInfoChecklist2TodoInput {
    aheadType?: Array<TodoAheadTypeInput>;
    duration?: number;
    finishData?: TodoFinishDataInput;
    id?: number;
    importance?: number;
    intervalType?: number;
    shortTitle?: string;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
  }

  export interface RecordInfoChecklistEditInput {
    finishData?: TodoFinishDataEditInput;
    id?: number;
    importance?: number;
    shortTitle?: string;
    title?: string;
    todoClassifyId?: number;
  }

  export interface RecordInfoDataInput {
    aheadType?: Array<TodoAheadTypeInput>;
    duration?: number;
    endDateTime?: Date;
    finishData?: TodoFinishDataInput;
    importance?: number;
    intervalType?: number;
    localId?: number;
    remark?: string;
    shortTitle?: string;
    startDateTime?: Date;
    title?: string;
    todoClassifyId?: string;
    todoTime?: number;
    todoType?: number;
  }

  export interface RecordInfoInput {
    id?: number;
    theDateTime?: Date;
    todoTime?: Date;
    todoType?: number;
  }

  export interface RecordInfoTodo2ChecklistInput {
    duration?: number;
    finishData?: TodoFinishDataInput;
    id?: number;
    importance?: number;
    intervalType?: number;
    shortTitle?: string;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
  }

  export interface RecordInfoTodoEditInput {
    duration?: number;
    finishData?: TodoFinishDataEditInput;
    id?: number;
    importance?: number;
    intervalType?: number;
    newTodoTime?: Date;
    shortTitle?: string;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
  }

  export interface RecordInput {
    addList?: Array<TodoRuleEditInput>;
    address?: string;

    /**
     * 提醒偏移，单位：秒
     */
    aheadType?: Array<TodoAheadTypeInput>;
    attachments?: Array<TodoAttachmentInput>;

    /**
     * 持续时间
     */
    duration?: number;
    endDateTime?: Date;
    finishImpressionSwitch?: boolean;

    /**
     * 重要程度
     */
    importance?: number;
    intervalType?: number;

    /**
     * 是否节假日过滤
     */
    isHolidayFilter?: boolean;

    /**
     * 是否非补班周末过滤
     */
    isWeekendFilter?: boolean;

    /**
     * 本地ID
     */
    localId?: number;

    /**
     * 备注
     */
    remark?: string;
    repeatRuleDtoV2?: RepeatRuleDtoV2;
    repeatType?: string;
    repeatValue?: Array<number>;
    ruleLocalIds?: Array<RuleLocalItem>;

    /**
     * 短标题
     */
    shortTitle?: string;
    sonAddList?: Array<TodoTaskInput>;
    startDateTime?: Date;

    /**
     * 标题
     */
    title?: string;

    /**
     * 分类ID
     */
    todoClassifyId?: string;
    todoTime?: number;

    /**
     * 日程类型 1 日程 2 计划 3 清单
     */
    todoType?: string;
  }

  export interface RecordPostponedRequest {
    rows?: Array<PostponedDto>;
  }

  export interface RecordSearchSettingData {
    created?: Date;
    deleted?: boolean;
    id?: number;
    ip?: string;
    type?: string;
    updated?: Date;
    userId?: number;
    value?: string;
    version?: number;
  }

  export interface RecordSearchSettingInput {
    type: string;
    value: string;
  }

  export interface RecordSortItemDto {
    id?: string;
    todoTime?: string;
    type?: string;
  }

  export interface RecordSortItemOutput {
    id?: number;
    type: number;
  }

  export interface RecordSortMydayDto {
    day?: string;
    sortType?: string;
    sorts?: Array<RecordSortItemDto>;
  }

  export interface RecordSortMydayFindInput {
    endDay?: Date;
    startDay?: Date;
  }

  export interface RecordSortMydayInput {
    recordSorts?: Array<RecordSortMydayDto>;
  }

  export interface RecordSortMydayOutput {
    day?: Date;
    sortType: string;
    sorts: Array<RecordSortItemDto>;
  }

  export interface RecordSortOutput {
    sort?: Array<RecordSortItemOutput>;
  }

  export interface RecordTabHideInput {
    tabId?: number;
    type?: number;
  }

  export interface RecordTabSortData {
    created?: Date;
    deleted?: boolean;
    id?: number;
    ip?: string;
    sort?: string;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface RecordTabSortInput {
    keyword?: string;
    sorts?: Array<number>;
  }

  export interface RecordTopDto {
    id: string;
    type?: number;
  }

  export interface RecordTopOutput {
    sorts?: Array<RecordTopDto>;
  }

  export interface RecordTransferConditionV2 {
    begin?: Date;
    end?: Date;
    futureUserId?: number;
    livelihoodUserId?: number;
    transferId?: number;
    userPhone?: string;
  }

  export interface RecordUpdateClassifyInput {
    classifyId: string;
    updateInfos?: Array<UpdateRecordInfoDto>;
  }

  export interface RecordUpdateImportanceInput {
    importance: number;
    updateInfos?: Array<UpdateRecordInfoDto>;
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

  export interface RemindUnfinishedOutput {
    content?: string;
    todoTime?: LocalTime;
    userId?: number;
  }

  export interface RepeatAddInput {
    endDateTime?: Date;
    id?: number;
    isHolidayFilter?: boolean;
    isWeekendFilter?: boolean;
    localId?: number;
    repeatRuleDtoV2?: RepeatRuleDtoV2;
    repeatType?: string;
    repeatValue?: Array<number>;
    ruleLocalIds?: Array<RuleLocalItem>;
    sonUpdateList?: Array<TodoTaskInput>;
    startDateTime?: Date;
    todoTime?: Date;
  }

  export interface RepeatAddOutput {
    todos?: Array<RepeatAddTodoInfoOutput>;
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

  export interface RepeatAllUnCheckInput {
    todoId: number;
    todoTime: Date;
  }

  export interface RepeatAttachInput {
    duration: number;
    intervalType: number;
    todoId: string;
    todoTime: string;
  }

  export interface RepeatBatchAddInput {
    todos?: Array<RecordAddRepeatInput>;
  }

  export interface RepeatBatchAddOutput {
    todos?: Array<RepeatAddOutput>;
  }

  export interface RepeatEditInput {
    addList?: Array<TodoRuleEditInput>;
    classifyId?: number;
    endDateTime?: Date;
    id?: number;
    importance?: number;
    repeatRuleDtoV2?: RepeatRuleDtoV2;
    repeatType?: string;
    repeatValue?: Array<number>;
    ruleLocalIds?: Array<RuleLocalItem>;
    shortTitle?: string;
    startDateTime?: Date;
    theDateTime?: Date;
    todoTime?: Date;
  }

  export interface RepeatEditInputV2 {
    addList?: Array<TodoRuleEditInput>;
    classifyId?: number;
    endDateTime?: Date;
    finishImpressionSwitch?: boolean;
    id?: number;
    importance?: number;
    isChangeRule?: boolean;
    isDelTodayAndAfter?: boolean;
    isHolidayFilter?: boolean;
    isWeekendFilter?: boolean;
    repeatRuleDtoV2?: RepeatRuleDtoV2;
    repeatType?: string;
    repeatValue?: Array<number>;
    ruleLocalIds?: Array<RuleLocalItem>;
    shortTitle?: string;
    startDateTime?: Date;
    theDateTime?: Date;
    todoTime?: Date;
  }

  export interface RepeatEditOutput {
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

  export interface RepeatTask {
    address?: string;
    aheadType?: Array<TodoAheadTypeInput>;
    attachments?: Array<TodoAttachmentOutput>;
    completeTime?: number;
    duration?: number;
    finishState?: number;
    finishTime?: Date;
    intervalType?: number;
    remark?: string;
    subTaskList?: Array<TodoTaskViewOutput>;
    todoTime?: LocalTime;
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

  export interface Schedule2RepeatInput {
    addList?: Array<TodoRuleEditInput>;
    duration?: number;
    endDateTime?: Date;
    finishImpressionSwitch?: boolean;
    id?: number;
    intervalType?: number;
    isHolidayFilter?: boolean;
    isWeekendFilter?: boolean;
    repeatRuleDtoV2?: RepeatRuleDtoV2;
    repeatType?: string;
    repeatValue?: Array<number>;
    startDateTime?: Date;
    todoTime?: Date;
  }

  export interface ScheduleAddOutput {
    aheadType?: Array<TodoAheadTypeInput>;
    beforePostponedTodoTime?: Date;
    created?: Date;
    deleted?: boolean;
    endDatetime?: Date;
    finishImpressionSwitch?: boolean;
    id?: number;
    importance?: number;
    isHolidayFilter?: boolean;
    isPhoneRemind?: boolean;
    isPostponed?: boolean;
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

  export interface ScheduleBatchAddInput {
    todos?: Array<TodoInput>;
  }

  export interface ScheduleBatchAddOutput {
    todos?: Array<ScheduleAddOutput>;
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

  export interface ScheduleEditInputV2 {
    address?: string;
    aheadType: Array<TodoAheadTypeInput>;
    attachments?: Array<TodoAttachmentInput>;
    city?: string;
    country?: string;
    district?: string;
    duration?: number;
    id?: string;
    importance?: number;
    intervalType?: string;
    isPhoneRemind?: boolean;
    isRemind?: boolean;
    latitude?: string;
    localId?: string;
    longitude?: string;
    newTodoTime?: string;
    province?: string;
    remark?: string;
    shortTitle?: string;
    sonAddList?: Array<TodoTaskInput>;
    sonDeleteList?: Array<TodoTaskInput>;
    sonUpdateList?: Array<TodoTaskInput>;
    title?: string;
    todoClassifyId?: string;
    todoTime?: string;
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

  export interface ScheduleEditPreInput {
    duration?: number;
    id?: number;
    newTodoTime?: Date;
    todoTime?: Date;
  }

  export interface ScheduleInfo {
    id?: string;
    todoTime?: Date | number;
  }

  export interface ScheduleInfoInput {
    scheduleInfos?: Array<ScheduleInfo>;
  }

  export interface ScheduleRemindEditInput {
    aheadType?: Array<TodoAheadTypeInput>;
    duration?: number;
    id?: string;
    intervalType?: number;
    newTodoTime?: Date | number;
    todoTime?: Date | number;
  }

  export interface ScheduleToChecklistOutput {
    checklist?: ChecklistEditOutput;
    todo?: PlanTodoInfoDeleteOutput;
  }

  export interface SubTitleCustom {
    showDetail?: boolean;
    showImportance?: boolean;
    showRepeatType?: boolean;
    showTodoType?: boolean;
    showType?: boolean;
  }

  export interface SyncDataRequest {
    fromId: number;
    fromVersion: number;
    pageSize: number;
    toVersion: number;
  }

  export interface SyncScheduleOutput {
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
    ruleInfo?: Array<RepeatRuleOutput>;
    shortTitle?: string;
    startDatetime?: Date;
    status?: number;
    task?: Array<TaskOutput>;
    todoClassifyId?: number;
    todoType?: number;
    updated?: Date;
    version?: number;
  }

  export interface TaskInfoOutput {
    created?: Date;
    deleted?: boolean;
    duration?: number;
    endDatetime?: Date;
    finishState?: number;
    grade?: number;
    id?: number;
    intervalType?: number;
    localId?: number;
    startDatetime?: Date;
    title?: string;
    todoTime?: Date;
    updated?: Date;
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

  export interface TemporalUnit {
    dateBased?: boolean;
    duration?: Duration;
    durationEstimated?: boolean;
    timeBased?: boolean;
  }

  export interface TodoAheadTypeInput {
    offset?: number;
  }

  export interface TodoAllCheckinInput {
    todoId: string;
    todoTime?: number;
    finishState: number;
    isRepeat: boolean;
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

  export interface TodoAttachmentData {
    created?: Date;
    deleted?: boolean;
    id?: number;
    ip?: string;
    mediaType?: number;
    remark?: string;
    signature?: string;
    todoFinishId?: number;
    todoId?: number;
    updated?: Date;
    url?: string;
    urls?: Array<string>;
    userId?: number;
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

  export interface TodoBatchCheckinInput {
    todos?: Array<TodoCheckinInput>;
  }

  export interface TodoBeginInput {
    id: number;
    todoTime: Date;
  }

  export interface TodoCheckinInput {
    completeTime?: number;
    finishState: number;
    todoId: string;
    todoTaskId?: string;
    todoTime?: number;
  }

  export interface TodoCheckinOutput {
    id: number;
    personalizedInfo?: Array<TodoFinishInfo>;
  }

  export interface TodoCheckinOutputV2 {
    checkDay?: string;
    finishTime?: string;
    images?: Array<string>;
    impression?: string;
    todoId?: number;
  }

  export interface TodoClassifyBackgroundInput {
    bgImgUrl: string;
  }

  export interface TodoClassifyBackgroundOutput {
    bgImgUrl?: string;
    bgType: string;
    id?: number;
  }

  export interface TodoClassifyData {
    classifyIcon?: string;
    classifyName?: string;
    created?: Date;
    deleted?: boolean;
    id?: number;
    ip?: string;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface TodoClassifyFilterDto {
    classifyFolderIds?: Array<number>;
    classifyIds?: Array<number>;
  }

  export interface TodoClassifySortData {
    classifySortList?: Array<PlanClassifyInput>;
    created?: Date;
    deleted?: boolean;
    id?: number;
    ip?: string;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface TodoCustomizeTimeAddInput {
    addList?: Array<TodoCustomizeTimeInput>;
    source?: string;
  }

  export interface TodoCustomizeTimeData {
    advanceMinute?: number;
    created?: Date;
    deleted?: boolean;
    id?: number;
    ip?: string;
    source?: string;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface TodoCustomizeTimeDeleteInput {
    id?: number;
  }

  export interface TodoCustomizeTimeInput {
    advanceMinute?: number;
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

  export interface TodoData {
    aheadType?: string;
    aheadTypeList?: Array<TodoAheadTypeInput>;
    classifyId?: number;
    created?: Date;
    deleted?: boolean;
    endDatetime?: Date;
    grade?: number;
    id?: number;
    importance?: number;
    ip?: string;
    oldTodoInfoId?: number;
    remark?: string;
    shortTitle?: string;
    startDatetime?: Date;
    status?: number;
    title?: string;
    todoType?: number;
    updated?: Date;
    userCode?: number;
    userId?: number;
    version?: number;
  }

  export interface TodoDayCheckinData {
    checkDay?: Date;
    created?: Date;
    deleted?: boolean;
    id?: number;
    impression?: string;
    ip?: string;
    todoId?: number;
    todoOldId?: number;
    updated?: Date;
    userCode?: number;
    userId?: number;
    version?: number;
  }

  export interface TodoElement {
    todoAttachmentData?: Array<TodoAttachmentData>;
    todoData?: TodoData;
    todoDayCheckinData?: Array<TodoDayCheckinData>;
    todoExtData?: Array<TodoExtData>;
    todoFinishData?: Array<TodoFinishData>;
    todoIngoreData?: Array<TodoIngoreData>;
    todoRepeatRuleData?: Array<TodoRepeatRuleData>;
    todoTaskData?: Array<TodoTaskData>;
    todoTaskFinishData?: Array<TodoTaskFinishData>;
  }

  export interface TodoExtData {
    address?: string;
    city?: string;
    country?: string;
    created?: Date;
    deleted?: boolean;
    district?: string;
    id?: number;
    ip?: string;
    latitude?: number;
    longitude?: number;
    province?: string;
    remark?: string;
    todoId?: number;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface TodoFinishData {
    aheadType?: string;
    aheadTypeList?: Array<TodoAheadTypeInput>;
    completeTime?: number;
    created?: Date;
    deleted?: boolean;
    durations?: number;
    finishState?: number;
    finishTime?: Date;
    id?: number;
    ip?: string;
    remark?: string;
    todoId?: number;
    todoTime?: Date;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface TodoFinishDataEditInput {
    completeTime: number;
  }

  export interface TodoFinishDataInput {
    completeTime: number;
    finishTime?: number;
  }

  export interface TodoFinishInfo {
    completeTime: number;
    finishState: number;
    finishTime: number;
    id?: number;
    remindRuleId?: number;
    ruleId: number;
    taskFinishs?: Array<TodoTaskFinishInfo>;
    todoTime: number;
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

  export interface TodoImportExportData {
    recordSearchSettingData?: Array<RecordSearchSettingData>;
    recordTabSortData?: RecordTabSortData;
    todoCustomizeTimeData?: Array<TodoCustomizeTimeData>;
    todoElements?: Array<TodoElement>;
  }

  export interface TodoImpressionOutput {
    checkDay?: Date;
    deleted?: boolean;
    images?: Array<string>;
    impression?: string;
    todoId?: number;
    version?: number;
  }

  export interface TodoInfoDeleteInfo {
    deleted: boolean;
    ruleId: number;
    todoTime: Date;
  }

  export interface TodoInfoOutput {
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
    ruleInfo?: Array<RepeatRuleOutput>;
    shortTitle?: string;
    startDatetime?: Date;
    status?: number;
    todoClassifyId?: number;
    todoType?: number;
    updated?: Date;
    version?: number;
  }

  export interface TodoIngoreData {
    created?: Date;
    deleted?: boolean;
    id?: number;
    ip?: string;
    remark?: string;
    todoId?: number;
    todoOldId?: number;
    updated?: Date;
    userCode?: number;
    userId?: number;
    version?: number;
  }

  export interface TodoInput {
    aheadType?: Array<TodoAheadTypeInput>;
    duration?: number;
    durationMap?: Map<string, number>;
    importance?: number;
    intervalType?: number;
    localId?: number;
    remark?: string;
    ruleList?: Array<Rule>;
    ruleLocalIds?: Array<RuleLocalItem>;
    shortTitle?: string;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
  }

  export interface TodoPhoneRemindClassifyScopeInput {
    classifyId?: number;
    isSelect?: boolean;
  }

  export class TodoPhoneRemindClassifyScopeOutput {
    classifyBgId?: string;
    classifyColorId?: string;
    classifyIcon?: string;
    classifyId?: number;
    classifyName?: string;
    isSelect?: boolean;
  }

  export class TodoPhoneRemindImportanceScopeInput {
    importance?: number;
    isSelect?: boolean;
  }

  export interface TodoPhoneRemindScopeInput {
    classifyScopes?: Array<TodoPhoneRemindClassifyScopeInput>;
    importanceScopes?: Array<TodoPhoneRemindImportanceScopeInput>;
  }

  export class TodoPhoneRemindScopeOutput {
    classifyScopes?: Array<TodoPhoneRemindClassifyScopeOutput>;
    importanceScopes?: Array<TodoPhoneRemindImportanceScopeInput>;
    smsCount?: number;
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

  export interface TodoRemindUnfinishedInput {
    opened?: boolean;
    todoTime?: string;
  }

  export interface TodoRemindUnfinishedOutput {
    opened?: boolean;
    todoTime?: string;
  }

  export interface TodoUnfinishScheduleOutput {
    unfinish?: number;
  }

  export interface TodoRepeatRuleData {
    attachDatetimeSet?: Array<Date>;
    attachDatetimesJson?: string;
    closeState?: number;
    created?: Date;
    deleted?: boolean;
    detachDatetimeSet?: Array<Date>;
    detachDatetimesJson?: string;
    duration?: Map<string, number>;
    durationJson?: string;
    endDatetime?: Date;
    id?: number;
    intervalType?: number;
    ip?: string;
    nextTime?: Date;
    offset?: number;
    remark?: string;
    repeatType?: number;
    ruleList?: Array<Rule>;
    rulesJson?: string;
    startDatetime?: Date;
    todoId?: number;
    todoTime?: Date;
    updated?: Date;
    userId?: number;
    version?: number;
    zone?: ZoneOffset;
  }

  export interface TodoRuleEditInput {
    duration?: number;
    repeatRuleDtoV2?: RepeatRuleDtoV2;
    repeatValue?: Array<number>;
    todoHH?: number;
    todomm?: number;
  }

  export interface TodoSetCompleteTimeInput {
    completeTime: number;
    finishTime?: Date;
    id: number;
    todoTime: string;
  }

  export interface TodoSortTypeRequest {
    sortType?: string;
  }

  export interface TodoSwitch4WebInput {
    id?: number;
    todoTime?: Date;
    todoType?: number;
  }

  export interface TodoSwitch4WebOutput {
    isPhoneRemind?: boolean;
    isRemind?: boolean;
  }

  export interface TodoSwitchInput {
    isOpen?: boolean;
    todoId?: string;
    todoTime?: Date;
    todoTimeOld?: Date;
  }

  export interface TodoSwitchOutput {
    isOpen?: boolean;
    todoId?: number;
    todoSwitchType?: string;
    todoTime?: Date;
  }

  export interface TodoTaskData {
    created?: Date;
    deleted?: boolean;
    endDatetime?: Date;
    finishState?: number;
    finishTime?: Date;
    grade?: number;
    id?: number;
    ip?: string;
    localId?: number;
    nextTime?: Date;
    remark?: string;
    startDatetime?: Date;
    title?: string;
    todoFinishId?: number;
    todoId?: number;
    todoTime?: Date;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface TodoTaskFinishData {
    created?: Date;
    deleted?: boolean;
    finishState?: number;
    finishTime?: Date;
    id?: number;
    ip?: string;
    remark?: string;
    todoFinishId?: number;
    todoTaskId?: number;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface TodoTaskFinishInfo {
    finishState: number;
    finishTime: Date;
    todoTaskId: number;
  }

  export interface TodoTaskInfoOutput {
    id?: number;
    personalizedInfo?: Array<TodoFinishOutput>;
    ruleInfo?: Array<RepeatRuleOutput>;
    task?: Array<TaskInfoOutput>;
  }

  export interface TodoTaskInput {
    duration?: number;
    finishState?: number;
    grade?: number;
    id?: string;
    intervalType?: number;
    localId?: string;
    title?: string;
    todoTime?: string;
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

  export interface TodoViewOutput {
    todos?: Array<TodoViewInfoOutput>;
  }

  export interface TodoViewOutputV2 {
    classifys?: Array<PlanClassifyOutput>;
    todos?: Array<TodoViewInfoOutput>;
  }

  export interface UpdateDefaultClassifyInput {
    defaultClassifyId: string;
  }

  export interface UpdateDefaultImportanceInput {
    defaultImportance: number;
  }

  export interface UpdateIsAutoPostponedInput {
    isAutoPostponed: boolean;
  }

  export interface UpdateIsContinueRemindInput {
    isContinueRemind: boolean;
  }

  export interface UpdateIsFinishLineInput {
    isFinishLine: boolean;
  }

  export interface UpdateIsShowTaskInput {
    isShowTask: boolean;
  }

  export interface UpdatePhoneRemindSwitchOutput {
    smsCount?: number;
  }

  export interface UpdateRecordInfoDto {
    id: string;
    todoType?: number;
  }

  export interface UserDataInitV1Input {
    currDay?: Date;
    device?: UserDeviceInfo;
    recordTpls?: Array<string>;
    records?: Array<RecordInput>;
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

  export interface ZoneOffset {
    id?: string;
    rules?: ZoneRules;
    totalSeconds?: number;
  }

  export interface ZoneOffsetTransition {
    dateTimeAfter?: Date;
    dateTimeBefore?: Date;
    duration?: Duration;
    gap?: boolean;
    instant?: Date;
    offsetAfter?: ZoneOffset;
    offsetBefore?: ZoneOffset;
    overlap?: boolean;
  }

  export interface ZoneOffsetTransitionRule {
    dayOfMonthIndicator?: number;
    dayOfWeek?: string;
    localTime?: LocalTime;
    midnightEndOfDay?: boolean;
    month?: string;
    offsetAfter?: ZoneOffset;
    offsetBefore?: ZoneOffset;
    standardOffset?: ZoneOffset;
    timeDefinition?: string;
  }

  export interface ZoneRules {
    fixedOffset?: boolean;
    transitionRules?: Array<ZoneOffsetTransitionRule>;
    transitions?: Array<ZoneOffsetTransition>;
  }

  export interface DataCreatePeriodCountDto {
    count?: string;
    dataCreatePeriod?: string;
  }

  export interface PlanMyAppletUsingPOST {
    count?: number;
  }

  export interface RecordViewData4DailySummaryUsingPOSTRsp {
    appletId?: number;
    dataList?: Array<object>;
    extendMap?: object;
    subTitle?: string;
    title?: string;
  }
}
