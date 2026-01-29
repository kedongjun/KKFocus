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

export namespace BaseSyllabusDefinition {
  export interface AddFinishedInput {
    finishState?: boolean;
    id?: string;
    weekNo?: number;
  }

  export interface AddFinishedWebInput {
    finishDay?: Date;
    finishState?: boolean;
    id?: number;
  }

  export interface AddTermByQrCodeInput {
    covered?: boolean;
    termId?: string;
  }

  export interface AppletHistoryResponse {
    created?: Date;
    id?: number;
    params?: object;
    subTitle?: string;
    title?: string;
  }

  export interface CourseAddInput {
    beginLessonNo?: number;
    classroom?: string;
    colour?: string;
    courseName?: string;
    courseWeeksValues?: Array<number>;
    duration?: number;
    lessonType?: string;
    teacher?: string;
    weekType?: number;
    weekValue?: number;
  }

  export interface CourseAddV2Input {
    beginLessonNo?: number;
    classroom?: string;
    courseName?: string;
    courseNameId?: string;
    duration?: number;
    lessonType?: string;
    teacher?: string;
    weekType?: number;
    weekValue?: number;
  }

  export interface CourseAddV4Input {
    beginLessonNo?: number;
    courseWeeksValues?: Array<number>;
    duration?: number;
    lessonType?: string;
    weekType?: number;
    weekValue?: number;
  }

  export interface CourseBatchAddInput {
    courses?: Array<CourseAddInput>;
    gradeNo?: number;
    termId?: number;
    termNo?: number;
  }

  export interface CourseBatchAddV2Input {
    courses?: Array<CourseAddV2Input>;
    termId?: string;
  }

  export interface CourseColourMapDto {
    colour?: string;
    courseName?: string;
    created?: Date;
    ip?: string;
    remark?: string;
  }

  export interface CourseCountOutput {
    classSchedule_page1?: ReadPageOne;
  }

  export interface CourseDeleteInput {
    id?: number;
  }

  export interface CourseDeleteV4Input {
    courseWeeksValue?: number;
    id?: number;
  }

  export interface CourseDragV4Input {
    beginLessonNo?: number;
    courseWeeksValue?: number;
    id?: string;
    lessonType?: string;
    weekValue?: number;
  }

  export interface CourseEditInput {
    beginLessonNo?: number;
    classroom?: string;
    colour?: string;
    courseName?: string;
    courseWeeksValues?: Array<number>;
    duration?: number;
    id?: number;
    teacher?: string;
    weekType?: number;
    weekValue?: number;
  }

  export interface CourseEditV4Input {
    beginLessonNo?: number;
    courseWeeksValues?: Array<number>;
    duration?: number;
    id?: number;
    lessonType?: string;
    weekType?: number;
    weekValue?: number;
  }

  export interface CourseImportInput {
    ossUrl?: string;
    termId?: string;
  }

  export interface CourseInfoDto {
    attachDatetimesJson?: string;
    beginLessonNo?: number;
    classroom?: string;
    courseName?: string;
    courseWeeksBit?: string;
    created?: Date;
    detachDatetimesJson?: string;
    duration?: number;
    id?: number;
    ip?: string;
    lessonBit?: string;
    lessonNoteList?: Array<LessonNoteDto>;
    nextTime?: Date;
    remark?: string;
    teacher?: string;
    termId?: number;
    todoTime?: Date;
    weekBit?: string;
  }

  export interface CourseInfoOutput {
    attachDatetimeSet?: Array<Date>;
    beginLessonNo?: number;
    classroom?: string;
    colour?: string;
    courseName?: string;
    courseNameId?: number;
    courseWeeksBitSetList?: Array<number>;
    created?: Date;
    deleted?: boolean;
    detachDatetimeSet?: Array<Date>;
    duration?: number;
    gradeNo?: number;
    id?: number;
    lessonBitSetList?: Array<number>;
    teacher?: string;
    termId?: number;
    termNo?: number;
    updated?: Date;
    userId?: number;
    version?: number;
    weekBitSetList?: Array<number>;
  }

  export interface CourseListOutput {
    list?: Array<CourseInfoOutput>;
  }

  export interface CurrentCourseListOutput {
    rows?: CurrentCourse[];
  }

  export interface CurrentCourse {
    beginLessonNo?: number;
    classroom?: string;
    courseName?: string;
    courseEntity: CourseEntity;
    courseNameId?: string;
    duration?: number;
    lessonType?: string;
    teacher?: string;
    weekType?: number;
    weekValue?: number;
  }

  export interface CourseEntity {
    classroom?: string;
    color?: string;
    courseName?: string;
    id?: string;
    teacher?: string;
    termId?: string;
    type?: number;
    weekType?: number;
    colour?: string
  }

  export interface CourseNameEditInput {
    classroom?: string;
    colour?: string;
    courseName?: string;
    id?: number;
    teacher?: string;
  }

  export interface CurrentCourseInput {
    id: string
  }

  export interface CourseNameEditV4Input {
    classroom?: string;
    colour?: string;
    courseName?: string;
    courses?: Array<CourseEditV4Input>;
    id?: string;
    teacher?: string;
  }

  export interface CourseNameInput {
    classroom?: string;
    colour?: string;
    courseName?: string;
    teacher?: string;
    termId?: number;
  }

  export interface CourseNameOutput {
    classroom?: string;
    colour?: string;
    courseName?: string;
    id?: string;
    key?: string;
    sort?: number;
    teacher?: string;
    termId?: string;
  }

  export interface CourseNameSortInput {
    ids: Array<string>;
    termId?: string;
  }

  export interface CourseNameV4Input {
    classroom?: string;
    colour?: string;
    courseName?: string;
    courses?: Array<CourseAddV4Input>;
    teacher?: string;
    termId?: string;
  }

  export interface CourseRemindDto {
    aheadTypeList?: Array<SyllabusAheadTypeInput>;
    created?: Date;
    ip?: string;
    isRemind?: boolean;
    remark?: string;
    remindTime?: string;
    remindType?: number;
  }

  export interface CourseRemindOutput {
    aheadType?: string;
    aheadTypeList?: Array<SyllabusAheadTypeInput>;
    created?: Date;
    deleted?: boolean;
    id?: number;
    isDailyRemind?: boolean;
    isRemind?: boolean;
    remindTime?: string;
    remindType?: number;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface CourseSearchOutput {
    id?: number;
    subTitle?: string;
    termId?: number;
    title?: string;
  }

  export interface DailyRemindDto {
    content?: string;
    courseCount?: number;
    created?: Date;
    ip?: string;
    nextTime?: Date;
    remark?: string;
    sendFlag?: boolean;
    title?: string;
  }

  export interface DataVersionInput {
    dataVersion: string;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface EducationUpdateInput {
    educationNo?: number;
    startYear?: number;
  }

  export interface GetAppletDataInput {
    theDay?: Date;
  }

  export interface GetAppletItemOutput {
    beginLessonNo?: number;
    classBeginTime?: LocalTime;
    classEndTime?: LocalTime;
    classroom?: string;
    colour?: string;
    courseName?: string;
    dayNo?: number;
    duration?: number;
    id?: number;
    lessonType?: string;
    lessonTypeEnum?: string;
    sort?: number;
    teacher?: string;
    termId?: number;
    theDay?: Date;
    useTime?: number;
    weekNo?: number;
  }

  export interface GetAppletOutput {
    datas?: Array<GetAppletItemOutput>;
    noCouse?: boolean;
    noData?: boolean;
    noTermData?: boolean;
    theDay?: Date;
  }

  export interface GetOnlineCourse {
    educationNo?: number;
    gradeNo?: number;
    provinceCode?: number;
    termNo?: number;
  }

  export interface Grade {
    educationNo?: number;
    gradeName?: string;
    gradeNo?: number;
    terms?: Array<Term>;
  }

  export interface GradeItemOutput {
    desc?: string;
    gradeNo?: number;
    termYear?: number;
  }

  export interface GradeTermInfoOutput {
    grades?: Array<GradeItemOutput>;
    terms?: Array<TermItemOutput>;
  }

  export interface IdRequest {
    id: string;
  }

  export interface IdsRequest {
    ids: Array<string>;
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

  export interface KeywordRequest {
    keyword?: string;
  }

  export interface LessonAttachmentInput {
    mediaType?: number;
    url?: string;
  }

  export interface LessonConfig {
    classBeginTime?: string;
    classEndTime?: string;
    lessonNo?: number;
  }

  export interface LessonConfigInput {
    lessonCount?: number;
    lessonType?: string;
    termId?: string;
  }

  export interface LessonConfigNew {
    lessonConfig?: Array<LessonConfig>;
    lessonCount?: number;
    lessonType?: string;
  }

  export interface LessonNoteDto {
    courseId?: number;
    created?: Date;
    finishState?: boolean;
    finishTime?: Date;
    ip?: string;
    remark?: string;
    weekNo?: number;
  }

  export interface LessonNoteEditInput {
    attachments?: Array<LessonAttachmentInput>;
    id?: number;
    remark?: string;
    weekNo?: number;
  }

  export interface LessonNoteOutput {
    attachments?: Array<LessonAttachmentInput>;
    courseId?: number;
    created?: Date;
    deleted?: boolean;
    finishState?: boolean;
    finishTime?: Date;
    id?: number;
    remark?: string;
    updated?: Date;
    userId?: number;
    version?: number;
    weekNo?: number;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface NextCourseOutput {
    classBeginTime?: Date;
    courseName?: string;
    id?: number;
  }

  export interface OnlineCourseOutput {
    id?: number;
    isSubscibe?: boolean;
    termName?: string;
  }

  export interface OnlineCourseSelectiorOutput {
    provinces?: Array<Province>;
  }

  export interface Province {
    grades?: Array<Grade>;
    provinceCode?: number;
    provinceName?: string;
  }

  export interface QrCodeInput {
    termId?: string;
  }

  export interface QrCodeOutput {
    qrCodePath?: string;
  }

  export interface QrCodeStringInput {
    qrCodeString?: string;
  }

  export interface SetCurrentWeekInput {
    currentDate?: Date;
    weekNo?: number;
  }

  export interface SetLessonConfigInput {
    classBeginTime?: LocalTime;
    classEndTime?: LocalTime;
    lessonNo?: number;
    termId?: string;
  }

  export interface SetLessonConfigNewInput {
    classBeginTime?: string;
    classEndTime?: string;
    lessonNo?: number;
    lessonType?: string;
    termId?: string;
  }

  export interface SetRemindConfigInput {
    aheadType?: Array<SyllabusAheadTypeInput>;
    isDailyRemind?: boolean;
    isRemind?: boolean;
    remindTime?: string;
    remindType?: number;
  }

  export interface SwitchCurrentTermInput {
    currentDate?: Date;
    gradeNo?: number;
    termNo?: number;
  }

  export interface SyllabusAheadTypeInput {
    offset?: number;
  }

  export interface CourseRemindInfoByC {
    isRemind?: boolean,
    isDailyRemind?: boolean,
    remindType?: number,
    remindTime?: string,
    aheadTypeList?: string
    convertAheadTypeList?: SyllabusAheadTypeInput[]
  }


  export interface SyllabusImportExportData {
    courseColourMapList?: Array<CourseColourMapDto>;
    courseRemindList?: Array<CourseRemindDto>;
    dailyRemindList?: Array<DailyRemindDto>;
    termInfoList?: Array<TermInfoDto>;
  }

  export interface SyllabusTodoViewInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface SyllabusTodoViewListOutput {
    list?: Array<SyllabusTodoViewOutput>;
  }

  export interface SyllabusTodoViewOutput {
    appletInnerSort?: number;
    colour?: string;
    created?: Date;
    duration?: number;
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
    weekNo?: number;
    widgetSubTitle?: string;
  }

  export interface SyllabusTransferConditionV2 {
    begin?: Date;
    end?: Date;
    futureUserId?: number;
    livelihoodUserId?: number;
    transferId?: number;
    userPhone?: string;
  }

  export interface SyllabusTransferDataV2 {
    syllabusImportExportData?: SyllabusImportExportData;
    transferStatus?: TransferStatus;
    transferUser?: TransferUser;
  }

  export interface SyncDataRequest {
    fromId: number;
    fromVersion: number;
    pageSize: number;
    toVersion: number;
  }

  export interface Term {
    termCount?: number;
    termName?: string;
    termNo?: number;
  }

  export interface TermAddInput {
    courseType?: string;
    educationNo?: number;
    filterHoliday?: boolean;
    gradeNo?: number;
    lessonConfigNew?: Array<LessonConfigNew>;
    major?: string;
    onLineCourseId?: Array<number>;
    provinceName?: string;
    school?: string;
    startDatetime?: string;
    startYear?: number;
    termName?: string;
    termNo?: number;
    weekCount?: number;
  }

  export interface TermEditInput {
    filterHoliday?: boolean;
    gradeNo?: number;
    id?: string;
    lessonConfigNew?: Array<LessonConfigNew>;
    major?: string;
    school?: string;
    startDatetime?: string;
    termName?: string;
    termNo?: number;
    weekCount?: number;
  }

  export interface TermFilterHolidayInput {
    filterHoliday?: boolean;
    id?: string;
  }

  export interface QueryCoursesDetailInput {
    name?: string, //课程名
    termId?: string //学期ID
  }

  export interface QueryCoursesDetailByIDInput {
    id?: string, //课程ID
    termId?: string //学期ID
  }

  export interface QueryCoursesListInput {
    id?: string
  }

  export interface FastAddConflictCheckInput {
    termId: string; //学期ID
    lessonType: string; //LessonType
    beginLesson: string; //起始课节No
    weekday: string; //周几
  }

  export interface TermInfoDto {
    courseList?: Array<CourseInfoDto>;
    created?: Date;
    currentFlag?: boolean;
    educationNo?: number;
    gradeNo?: number;
    id?: number;
    ip?: string;
    lessonConfigList?: Array<LessonConfig>;
    remark?: string;
    startDatetime?: Date;
    termNo?: number;
    termYear?: number;
  }

  export interface TermInfoOutput {
    courseType?: string;
    created?: Date;
    currentFlag?: boolean;
    deleted?: boolean;
    educationNo?: number;
    gradeNo?: number;
    id?: string;
    lessonConfigList?: Array<LessonConfig>;
    lessonConfigNew?: Array<LessonConfigNew>;
    startDatetime?: Date;
    startYear?: number;
    termName?: string;
    termNo?: number;
    termYear?: number;
    updated?: Date;
    userId?: number;
    version?: number;
    weekCount?: number;
  }

  export interface TermItemOutput {
    desc?: string;
    termNo?: number;
  }

  export interface TermNewOutput {
    courseType?: string;
    currentFlag?: boolean;
    educationNo?: number;
    filterHoliday?: boolean;
    gradeNo?: number;
    id?: string;
    lessonConfigNew?: Array<LessonConfigNew>;
    major?: string;
    provinceName?: string;
    school?: string;
    sort?: number;
    startDatetime?: string;
    startYear?: number;
    termName?: string;
    termNo?: number;
    weekCount?: number;
  }

  export interface CourseDetailOutPut {
    title?: string;
    allWeek?: string;
    attachmentJson?: string;
    beginLessonNo?: number;
    classroom?: string;
    color?: string;
    courseName?: string;
    courseNameId?: string;
    duration?: number;
    finishState?: number;
    lessonType?: string,
    gradeNo?: number;
    id?: string;
    remark?: string;
    teacher?: string;
    termId?: string;
    termNo?: number;
    week?: number;
    weekday?: number;
  }

  export interface ByIDCourseDetail {
    beginLessonNo?: number;
    duration?: number;
    id?: string;
    lessonType?: string;
    weekType?: number;
    weekValue?: number;
    courseWeeksValues?: string[];
  }

  export interface QueryIDCourseDetailOutPut {
    classroom?: string;
    colour?: string;
    courseName?: string;
    id?: string;
    teacher?: string;
    courses?: ByIDCourseDetail[];
  }

  export interface TermQueryInput {
    courseType?: string;
  }

  export interface TransferStatus {
    transferCode?: number;
    transferId?: number;
    transferMsg?: string;
  }


  // TermCourseList
  export interface QueryTermPreviewCourse {
    beginLessonNo?: number;
    classroom?: string;
    courseName?: string;
    courseEntity?: CourseEntity;
    courseNameId?: string;
    duration?: number;
    lessonType?: string;
    teacher?: string;
    weekType?: number;
    weekValue?: number;
  }

  export interface FastAddConflictCheckResult {
    isConflic: boolean;
  }

  export interface TransferUser {
    futureUserId?: number;
    livelihoodUserId?: number;
    userPhone?: string;
  }

  export interface UserGuidanceInput {
    currentDate?: Date;
    educationNo?: number;
    startYear?: number;
  }

  export interface ReadPageOne {
    mostCourseCount?: number;
    mostNotesCourse?: string;
    mostNotesTerm?: string;
    noteCount?: number;
    termCount?: number;
  }
}
