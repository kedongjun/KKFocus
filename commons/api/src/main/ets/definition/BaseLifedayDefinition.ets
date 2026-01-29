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

export namespace BaseLifedayDefinition {
  export interface BaseLifedayInput {
    birthday?: string;
    isLunar?: number;
    lifeExpectancy?: number;
    sex?: number;
  }

  export interface CountResponse {
    count?: number;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface LifeAffectingFactor {
    content?: string;
    img?: string;
  }

  export interface LifeDayOutput {
    appletId?: number;
    birthday?: string;
    countdownDay?: number;
    created?: Date;
    day?: string;
    deleted?: boolean;
    futureDay?: string;
    id?: number;
    isLunar?: number;
    lifeAffectingFactor?: LifeAffectingFactor;
    lifeExpectancy?: number;
    lifeExpectancyDay?: Date;
    name?: string;
    sex?: number;
    shareUrl?: string;
    userId?: number;
  }

  export interface LifeDayReciprocalViewListOutput {
    list?: Array<LifeDayReciprocalViewOutput>;
  }

  export interface LifeDayReciprocalViewOutput {
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

  export interface ReciprocalViewRequest {
    currentPage: number;
    isHiddenFinish?: boolean;
    keyword?: string;
    pageSize: number;
    refYear?: number;
  }

  export interface SyncDataRequest {
    fromId: number;
    fromVersion: number;
    pageSize: number;
    toVersion: number;
  }
}
