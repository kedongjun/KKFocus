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

export namespace BaseRunDefinition {
  export interface IdData {
    id?: number;
  }

  export interface IdRequest {
    id: number;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface Rule {
    expression?: string;
    repeatValue?: number;
    type?: string;
  }

  export interface RunFinishInput {
    finishDay?: Date;
    finishState?: boolean;
  }

  export interface RunFinishedOutput {
    created?: Date;
    deleted?: boolean;
    finishDate?: Date;
    finishState?: boolean;
    id?: number;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface RunInitInput {
    height: number;
    weight: number;
  }

  export interface RunInitOutput {
    height: number;
    id?: number;
    weight: number;
  }

  export interface RunPersonalRecordOutput {
    avgPace?: number;
    firstPace10?: number;
    firstPace5?: number;
    firstPaceHalfMarathon?: number;
    firstPaceMarathon?: number;
    firstRunTime?: Date;
    height?: number;
    id?: number;
    lastRunTarget?: RunTargetDto;
    lastRunTime?: Date;
    newData?: number;
    singleFirstPace?: number;
    singleLongTime?: number;
    singleMaxDistance?: number;
    totalCalories?: number;
    totalDistance?: number;
    totalTime?: number;
    userId?: number;
    weight?: number;
  }

  export interface RunRecordByDayInput {
    endTime: Date;
    startTime: Date;
  }

  export interface RunRecordByDayOutput {
    day?: Date;
    distance?: number;
    runCalories?: number;
    runTime?: number;
  }

  export interface RunRecordByMonthOutput {
    distance?: number;
    month?: string;
  }

  export interface RunRecordByYearInput {
    year: number;
  }

  export interface RunRecordInput {
    hasPlan: number;
    paceHalfMarathon?: number;
    paceMarathon?: number;
    runCalories: number;
    runDistance: number;
    runEndTime: Date;
    runLogoUrl: string;
    runMood?: string;
    runNotes?: string;
    runPausesCount: number;
    runPlanCalories?: number;
    runPlanDistance?: number;
    runPlanTime?: number;
    runPlanType?: string;
    runRecordSign: string;
    runRecordUrl: string;
    runSplits?: Array<RunSplit>;
    runStartTime: Date;
    runTime: number;
  }

  export interface RunRecordItem {
    id?: number;
    runCalories?: number;
    runDay?: Date;
    runDistance?: number;
    runEndTime?: Date;
    runLogoUrl?: string;
    runMood?: string;
    runPace?: number;
    runRecordUrl?: string;
    runStartTime?: Date;
    runTime?: number;
  }

  export interface RunRecordListItem {
    day?: Date;
    runRecords?: Array<RunRecordItem>;
  }

  export interface RunRecordMoodInput {
    id: number;
    runImgUrls?: Array<string>;
    runMood: string;
    runMoodType?: string;
    runNotes?: string;
  }

  export interface RunRecordMoodOutput {
    id: number;
    runImgUrls?: Array<string>;
    runMood: string;
    runMoodType?: string;
    runNotes?: string;
  }

  export interface RunRecordOutput {
    hasPlan: number;
    id?: number;
    paceHalfMarathon?: number;
    paceMarathon?: number;
    runCalories: number;
    runDistance: number;
    runEndTime: Date;
    runLogoUrl: string;
    runMood?: string;
    runNotes?: string;
    runPace?: number;
    runPausesCount: number;
    runPlanCalories?: number;
    runPlanDistance?: number;
    runPlanTime?: number;
    runPlanType?: string;
    runRecordSign: string;
    runRecordUrl: string;
    runSplits?: Array<RunSplit>;
    runStartTime: Date;
    runTime: number;
    userId?: number;
  }

  export interface RunRecordsInput {
    currentPage: number;
    pageSize: number;
    sortType?: string;
  }

  export interface RunRemindConfigOutput {
    id?: number;
    runRemindTime?: LocalTime;
    runRemindType?: string;
    runRemindValues?: Array<string>;
    voiceDistance?: number;
    voiceRemind?: boolean;
    voiceSourceModel?: string;
  }

  export interface RunRemindInput {
    runRemindTime?: LocalTime;
    runRemindType?: string;
    runRemindValues?: Array<string>;
  }

  export interface RunRemindOutput {
    id?: number;
    runRemindTime?: LocalTime;
    runRemindType?: string;
    runRemindValues?: Array<string>;
  }

  export interface RunSplit {
    point: number;
    pointTime: number;
    runTime: number;
  }

  export interface RunTargetDto {
    runPlanCalories?: number;
    runPlanDistance?: number;
    runPlanTime?: number;
    runPlanType?: string;
  }

  export interface RunTargetInput {
    runPlanCalories?: number;
    runPlanDistance?: number;
    runPlanTime?: number;
    runPlanType?: string;
  }

  export interface RunTodoViewInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface RunTodoViewListOutput {
    list?: Array<RunTodoViewOutput>;
  }

  export interface RunTodoViewOutput {
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
  }

  export interface RunVoiceTipsInput {
    voiceDistance?: number;
    voiceRemind: boolean;
    voiceSourceModel?: string;
  }

  export interface RunVoiceTipsOutput {
    id?: number;
    voiceDistance?: number;
    voiceRemind: boolean;
    voiceSourceModel?: string;
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
    fromVersion: number;
    toVersion: number;
  }
}
