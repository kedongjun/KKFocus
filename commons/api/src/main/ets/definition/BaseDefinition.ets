export interface UserDeviceInfo {
  address?: string;
  appVersion?: string;
  area?: string;
  callback?: string;
  channel?: string;
  channelName?: string;
  channelType?: string;
  channelTypeEnum?: string;
  city?: string;
  deviceIdentifier?: string;
  deviceModel?: string;
  deviceTag?: string;
  deviceTagApp?: string;
  deviceType?: string;
  directPushSupplier?: string;
  imei?: string;
  isRoot?: boolean;
  lat?: string;
  lng?: string;
  mac?: string;
  oaid?: string;
  osVersion?: string;
  province?: string;
  pushDevices?: Array<PushDevice>;
  pushKey?: string;
  remark?: string;
  supportPush?: boolean;
}

export interface PushDevice {
  directPushSupplier?: string;
  pushKey?: string;
  supportPush?: boolean;
}

export class Acquisition<T> {
  acquisitionMemberCount?: number;
  acquisitionMemberCountUnit?: string;
  acquisitionType?: string;
  extraData?: T;
  id?: number;
  quantityThreshold?: number;
  ruleDesc1?: string;
  ruleDesc2Android?: string;
  ruleDesc2Ios?: string;
  ruleDesc3Android?: string;
  ruleDesc3Ios?: string;
  sort?: number;
  title?: string;
  titleDesc?: string;
}

export class ApiResponse<T> {
  constructor(code: number, msg?: string) {
    this.code = code
    this.msg = msg
  }

  code: number = -1;
  data?: T;
  msg?: string;
}

export class ChecklistViewResponse<T> {
  code: number = -1;
  data?: T;
  finished?: number;
  msg?: string;
  page?: number;
  size?: number;
  total?: number;
}

export class Page<T> {
  current?: number;
  pages?: number;
  records: Array<T> = []
  searchCount?: boolean;
  size?: number;
  total?: number;
}

export class PaginableResponse<T> {
  code?: number;
  data?: T;
  msg?: string;
  page?: number;
  size?: number;
  total?: number;
}

export class RowData<T> {
  rows?: T;
}

export class RowResponse<T> {
  constructor(code: number, msg?: string) {
    this.code = code
    this.msg = msg
  }

  code: number = -1;
  data?: T
  msg?: string;
}

export class SummaryPage<T> {
  errorMsg?: string;
  pageNumber?: number;
  pageSize?: number;
  rows?: Array<T>;
  total?: number;
  totalPages?: number;
}

export class SyncRowResponse<T> {
  constructor(code: number, msg?: string) {
    this.code = code
    this.msg = msg
  }

  code: number = -1;
  data?: T
  msg?: string;
}

export class BugetHotBean {
  budgetHot?: string;
  budgetHotType?: string;
  systemBudgetHot?: string;
}
