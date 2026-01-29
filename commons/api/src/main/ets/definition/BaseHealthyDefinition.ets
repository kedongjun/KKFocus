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

export namespace BaseHealthyDefinition {
  export interface AppletHistoryResponse {
    created?: Date;
    id?: number;
    params?: object;
    subTitle?: string;
    title?: string;
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
    ids: Array<number>;
  }

  export interface MedicineAddInput {
    company?: string;
    description?: string;
    dosage?: number;
    endDateTime?: Date;
    expire?: number;
    id?: number;
    img?: string;
    indication?: string;
    ingredient?: string;
    instruction?: string;
    name?: string;
    precautions?: string;
    remindList?: Array<MedicineRepeatRuleInput>;
    repeatType?: string;
    repeatValue?: Array<number>;
    startDateTime?: Date;
    storage?: string;
    templated?: boolean;
    unit?: string;
  }

  export interface MedicineAddOutput {
    company?: string;
    description?: string;
    dosage?: string;
    endDateTime?: Date;
    expire?: number;
    id?: number;
    img?: string;
    indication?: string;
    ingredient?: string;
    instruction?: string;
    name?: string;
    precautions?: string;
    push?: boolean;
    ruleInfo?: Array<MedicineRepeatRuleOutput>;
    startDateTime?: Date;
    storage?: string;
    unit?: string;
  }

  export interface MedicineDelayRemindInput {
    delayPush?: boolean;
    delayValue?: number;
  }

  export interface MedicineDelayRemindOutput {
    delayPush?: boolean;
    delayValue?: number;
  }

  export interface MedicineDeleteInput {
    id?: number;
  }

  export interface MedicineFinishInput {
    finishState?: boolean;
    id?: number;
    todoTime?: Date;
  }

  export interface MedicineFinishedDetailOutput {
    finishState?: boolean;
    finishTime?: Date;
    id?: number;
    medicineRepeatRuleId?: number;
    todoTime?: Date;
  }

  export interface MedicineFinishedOutput {
    id?: number;
    medicineFinishedDetailList?: Array<MedicineFinishedDetailOutput>;
  }

  export interface MedicineHomePageInput {
    date?: Date;
  }

  export interface MedicineHomePageListOutput {
    afternoon?: Array<MedicineHomePageOutput>;
    evening?: Array<MedicineHomePageOutput>;
    morning?: Array<MedicineHomePageOutput>;
  }

  export interface MedicineHomePageOutput {
    dosage?: string;
    finished?: boolean;
    id?: number;
    name?: string;
    remark?: string;
    todoTime?: Date;
    unit?: string;
    unitStr?: string;
  }

  export interface MedicineInfoInput {
    id?: number;
  }

  export interface MedicineInfoOutput {
    company?: string;
    description?: string;
    dosage?: string;
    endTime?: Date;
    expire?: number;
    id?: number;
    img?: string;
    indication?: string;
    ingredient?: string;
    instruction?: string;
    name?: string;
    precautions?: string;
    push?: boolean;
    remindList?: Array<MedicineRepeatRuleInput>;
    repeatType?: string;
    repeatValue?: Array<number>;
    ruleInfo?: Array<MedicineRepeatRuleOutput>;
    startTime?: Date;
    storage?: string;
    templated?: boolean;
    todoTime?: Date;
    unit?: string;
  }

  export interface MedicineListOutput {
    id?: number;
    img?: string;
    indication?: string;
    name?: string;
    push?: boolean;
  }

  export interface MedicineRepeatRuleInput {
    repeatValue?: Array<number>;
    todoHH?: number;
    todomm?: number;
  }

  export interface MedicineRepeatRuleOutput {
    attachDateTimes?: Array<Date>;
    closed?: boolean;
    created?: Date;
    detachDateTimes?: Array<Date>;
    endDatetime?: Date;
    id?: number;
    repeatType?: string;
    rules?: Array<Rule>;
    startDatetime?: Date;
    updated?: Date;
  }

  export interface MedicineSearchInput {
    keyWord?: string;
  }

  export interface MedicineSearchOutput {
    company?: string;
    description?: string;
    expire?: number;
    img?: string;
    indication?: string;
    ingredient?: string;
    name?: string;
    precautions?: string;
    storage?: string;
  }

  export interface MedicineSortInput {
    ids?: Array<number>;
  }

  export interface MedicineSwitchPushInput {
    id?: number;
    push?: boolean;
  }

  export interface MedicineSwitchPushOutput {
    medicineInfo?: MedicineInfoOutput;
    success?: boolean;
  }

  export interface MedicineTemplateByTypeOutput {
    templateList?: Array<MedicineTemplateOutput>;
    type?: string;
  }

  export interface MedicineTemplateOutput {
    company?: string;
    description?: string;
    dosage?: number;
    expire?: number;
    id?: number;
    img?: string;
    indication?: string;
    ingredient?: string;
    name?: string;
    precautions?: string;
    selected?: boolean;
    storage?: string;
    unit?: string;
  }

  export interface MedicineTodoViewInput {
    allInfo?: boolean;
    endDate?: Date;
    startDate?: Date;
  }

  export interface MedicineTodoViewListOutput {
    list?: Array<MedicineTodoViewOutput>;
  }

  export interface MedicineTodoViewOutput {
    created?: Date;
    finishState?: number;
    id?: number;
    importance?: number;
    intervalType?: number;
    medicineDosage?: string;
    medicineName?: string;
    medicineUnit?: string;
    shortTitle?: string;
    subTitle?: string;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
    todoType?: number;
    updated?: Date;
    version?: number;
  }

  export interface MedicineUpdateInput {
    company?: string;
    description?: string;
    dosage?: number;
    endDateTime?: Date;
    expire?: number;
    id?: number;
    img?: string;
    indication?: string;
    ingredient?: string;
    instruction?: string;
    name?: string;
    precautions?: string;
    remindList?: Array<MedicineRepeatRuleInput>;
    repeatType?: string;
    repeatValue?: Array<number>;
    startDateTime?: Date;
    storage?: string;
    unit?: string;
  }

  export interface MedicineUpdateOutput {
    company?: string;
    description?: string;
    dosage?: string;
    endDateTime?: Date;
    expire?: number;
    id?: number;
    img?: string;
    indication?: string;
    ingredient?: string;
    instruction?: string;
    name?: string;
    precautions?: string;
    push?: boolean;
    ruleInfo?: Array<MedicineRepeatRuleOutput>;
    startDateTime?: Date;
    storage?: string;
    todoTime?: Date;
    unit?: string;
  }

  export interface Rule {
    expression?: string;
    repeatValue?: number;
    type?: string;
  }

  export interface SyncDataAppletFinishTimeResponse {
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
    fromVersion: number;
    toVersion: number;
  }

  export interface MyAppletUsingPOSTRsp {
    count?: number;
  }
}
