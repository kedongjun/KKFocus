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

export namespace BaseRemindDefinition {
  export interface BatchJobPushDto {
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
    userIds?: Array<number>;
  }

  export interface BatchPushParam {
    content?: string;
    extendParam?: string;
    id?: number;
    importance?: number;
    pushCode?: string;
    pushTime?: Date;
    pushType?: string;
    title?: string;
    todoTime?: Date;
    triggerTime?: Date;
    userIds?: Array<number>;
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

  export interface PushParam {
    content?: string;
    extendParam?: string;
    id?: number;
    importance?: number;
    pushCode?: string;
    pushTime?: Date;
    pushType?: string;
    title?: string;
    todoTime?: Date;
    triggerTime?: Date;
    userId?: number;
  }
}
