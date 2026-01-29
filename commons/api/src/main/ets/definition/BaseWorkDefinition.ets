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

export namespace BaseWorkDefinition {
  export interface AheadTypeInput {
    offset?: number;
  }

  export interface ChangeShiftsAddInput {
    endDate: string;
    filterType?: number;
    id?: number;
    name: string;
    ruleList: Array<number>;
    startDate: string;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface IdData {
    id?: number;
  }

  export interface IdListInput {
    ids: Array<number>;
  }

  export interface IdRequest {
    id: number;
  }

  export interface IdResponse {
    code?: number;
    data?: IdData;
    msg?: string;
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

  export interface ManualAddInput {
    endDate: string;
    id?: number;
    name: string;
    startDate: string;
    values: Map<string, Array<string>>;
  }

  export interface QueryDetailOutput {
    endDate?: string;
    endTime?: string;
    firstWeekState?: string;
    id?: number;
    name?: string;
    restList?: Array<TimeDto>;
    ruleList?: Array<number>;
    sizeWeeked?: boolean;
    startDate?: string;
    startTime?: string;
  }

  export interface RegularAddInput {
    endDate?: string;
    endTime: string;
    firstWeekState?: string;
    id?: number;
    name: string;
    restList?: Array<TimeDto>;
    ruleList: Array<number>;
    sizeWeeked: boolean;
    startDate?: string;
    startTime: string;
  }

  export interface ScheduleDetailOutput {
    color?: string;
    destination?: string;
    endLeaveTime?: string;
    endTime?: string;
    endWorkTime?: string;
    id?: number;
    impression?: string;
    lateTime?: number;
    leaveTime?: number;
    leaveType?: string;
    overTime?: number;
    rested?: boolean;
    shiftId?: number;
    shiftName?: string;
    startLeaveTime?: string;
    startTime?: string;
    startWorkTime?: string;
    transport?: string;
    travelTime?: number;
    workDate?: string;
    workState?: string;
    workType?: string;
  }

  export interface ScheduleInfoOutput {
    customMap?: Map<string, Array<Date>>;
    deleted?: boolean;
    endDateTime?: Date;
    endTime?: LocalTime;
    filterType?: number;
    firstWeekState?: string;
    id?: number;
    restList?: Array<TimeDto>;
    ruleList?: Array<number>;
    sizeWeeked?: boolean;
    startDateTime?: Date;
    startTime?: LocalTime;
    tableId?: number;
    type?: number;
  }

  export interface ScheduleListInput {
    endDate: string;
    startDate: string;
    tableId?: number;
  }

  export interface ScheduleListOutput {
    color?: string;
    shiftId?: number;
    shiftName?: string;
    tableId?: number;
    workDate?: string;
    workState?: string;
  }

  export interface ShiftInfoOutput {
    color?: string;
    deleteFlag?: boolean;
    deleted?: boolean;
    endTime?: string;
    id?: number;
    restList?: Array<TimeDto>;
    shiftName?: string;
    startTime?: string;
  }

  export interface ShiftSaveInput {
    color: string;
    endTime?: string;
    restList?: Array<TimeDto>;
    shiftName: string;
    startTime?: string;
  }

  export interface ShiftUpdateInput {
    color: string;
    endTime?: LocalTime;
    id: number;
    restList?: Array<TimeDto>;
    shiftName: string;
    startTime?: string;
  }

  export interface StatisticsDetail {
    dateType?: string;
    endTime?: string;
    overtimePay?: number;
    startTime?: string;
    useTime?: number;
    workDate?: string;
  }

  export interface StatisticsDetailInput {
    endDate: string;
    startDate: string;
    statisticsType: string;
    tableId?: number;
  }

  export interface StatisticsInput {
    endDate: string;
    startDate: string;
    tableId: number;
  }

  export interface SyncDataRequest {
    fromId: number;
    fromVersion: number;
    pageSize: number;
    toVersion: number;
  }

  export interface TableIdInput {
    id: number;
  }

  export interface TableInfoOutput {
    id?: number;
    name?: string;
    scheduleInfos?: Array<ScheduleInfoOutput>;
  }

  export interface TableListItemOutput {
    currentFlag?: boolean;
    id?: number;
    name?: string;
    tableType?: string;
  }

  export interface TimeDto {
    endTime: string;
    startTime: string;
  }

  export interface WorkCountOutput {
    workTable_page1?: WorkTablePageOne;
  }

  export interface WorkDateInput {
    currentDate: string;
    tableId?: number;
  }

  export interface WorkImpressionOutput {
    actualWorkTime?: number;
    deleted?: boolean;
    destination?: string;
    endLeaveTime?: Date;
    endWorkTime?: Date;
    finishState?: boolean;
    impression?: string;
    lateTime?: number;
    leaveTime?: number;
    leaveType?: string;
    overTime?: number;
    startLeaveTime?: Date;
    startWorkTime?: Date;
    tableId?: number;
    transport?: string;
    travelTime?: number;
    workDate?: Date;
    workState?: string;
    workTime?: number;
    workType?: string;
  }

  export interface WorkTableOutput {
    created?: Date;
    currentFlag?: boolean;
    deleted?: boolean;
    id?: number;
    scheduleInfoOutputs?: Array<ScheduleInfoOutput>;
    tableName?: string;
    tableType?: string;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface WorkTodoViewInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface WorkTodoViewListOutput {
    list?: Array<WorkTodoViewOutput>;
  }

  export interface WorkTodoViewOutput {
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
    widgetSubTitle?: string;
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

  export interface WorkRecordDto {
    endWorkTime?: string;
    id?: number;
    impression?: string;
    startWorkTime?: string;
    tableId: number;
    takeTime?: number;
    type: string;
    workDate: string;
  }

  export interface TravelWorkDto {
    destination?: string;
    endTime: string;
    startTime: string;
    tableId: number;
    transport?: string;
  }

  export interface OverTimeWorkRule {
    festivalHourPay: number;
    festivalRate: number;
    hourPay: number;
    id?: number;
    startTime: string;
    tableId: number;
    weekendHourPay: number;
    weekendRate: number;
    weektimeHourPay: number;
    weektimeRate: number;
  }

  export interface WorkFinishUsingPOSTRequestBody {
    finishDate: number;
    finishState: boolean;
    tableId: string;
  }

  export interface WorkFinishUsingPOSTRsp {
    finishDate?: Date;
    finishState?: boolean;
    id?: number;
    tableId?: number;
  }

  export interface WorkStatisticsChangeShiftsUsingPOSTRsp {
    overtime?: number;
    shiftId?: number;
    shiftName?: string;
    workDate?: Array<string>;
  }

  export interface RemindConfig {
    aheadType?: Array<AheadTypeInput>;
    id?: number;
    remindState: boolean;
    remindType: string;
  }

  export interface WorkStatisticsUsingPOSTRsp {
    averageHours?: number;
    lateMinues?: number;
    lateTimes?: number;
    leaveDays?: number;
    overTimes?: number;
    restDays?: number;
    tableId?: number;
    totalMinutes?: number;
    travelDays?: number;
    workDays?: number;
  }

  export interface StatisticsDetailUsingPOSTRsp {
    detail?: Array<StatisticsDetail>;
    overtimePay?: number;
    statisticsType?: string;
    tableId?: number;
  }

  export interface LeaveAddUsingPOSTRequestBody {
    endTime: string;
    leaveType: string;
    startTime: string;
    tableId: number;
  }

  export interface LeaveCalcUsingPOSTRequestBody {
    endTime: string;
    leaveTime?: number;
    startTime: string;
    tableId: number;
  }
}
