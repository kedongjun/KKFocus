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

export namespace BaseAuntDefinition {
  export interface AddAdvanceDayInput {
    advanceDay?: number;
  }

  export interface AddAuntRecordInput {
    day?: string;
  }

  export interface AddFinishedInput {
    finishDay?: number;
    finishState?: boolean;
    id?: string;
  }

  export interface AuntConfigOutput {
    advanceDayList?: Array<AuntRemindAdvanceDayOutput>;
    age?: number;
    beginRemindSwitch?: boolean;
    beginRemindTime?: string;
    cycle?: number;
    firstTime?: boolean;
    id?: number;
    length?: number;
    monthDisplaySwitch?: boolean;
    userId?: number;
  }

  export interface AuntDayOrdinalOutput {
    auntDay?: string;
    auntDayOrdinal?: number;
  }

  export interface AuntFinishedSyncDataOutput {
    auntConfigId?: number;
    created?: Date;
    deleted?: boolean;
    finishDay?: Date;
    finishState?: boolean;
    finishType?: string;
    id?: number;
    ip?: string;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface AuntImportExportData {
    auntConfig?: AuntSettingDataSync;
    extList?: Array<AuntExtraDataSync>;
    finishedList?: Array<AuntFinishedSyncDataOutput>;
    loveList?: Array<AuntLoveSyncDataOutput>;
    recordList?: Array<AuntDataSync>;
  }

  export interface AuntIntentOutput {
    content?: string;
  }

  export interface AuntListOutput {
    auntDayList?: Array<AuntDayOrdinalOutput>;
    eggDayList?: Array<EggDayOutput>;
    eggDayOrdinalList?: Array<EggDayOrdinalOutput>;
    list?: Array<AuntOutput>;
  }

  export interface AuntLoveSyncDataOutput {
    created?: Date;
    deleted?: boolean;
    id?: number;
    ip?: string;
    loveDay?: Date;
    loveType?: string;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface AuntOutput {
    auntDayOrdinal?: number;
    auntStartDate?: string;
    button?: string;
    day?: string;
    dayType?: string;
    dysmenorrhea?: number;
    eggDayOrdinal?: number;
    eggType?: string;
    flow?: number;
    id?: number;
    litLogo?: string;
    loveType?: string;
    onOff?: string;
    remark?: string;
    temperature?: string;
    webInterface?: string;
  }

  export interface AuntPageOutput {
    physiologicalPeriod_page1?: PhysiologicalPeriodPage1;
    physiologicalPeriod_page2?: PhysiologicalPeriodPage2;
  }

  export interface AuntReciprocalViewListOutput {
    list?: Array<AuntReciprocalViewOutput>;
  }

  export interface AuntReciprocalViewOutput {
    auntType?: string;
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

  export interface AuntRemindAdvanceDayOutput {
    advanceDay?: number;
    id?: string;
    selected?: boolean;
  }

  export interface AuntRemindOutput {
    auntConfig?: AuntConfigOutput;
    auntTissueConifg?: AuntTissueConifgOutput;
  }

  export interface AuntRemindViewInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface AuntStatisticsDetailOutput {
    cycle?: string;
    days?: number;
    startDate?: Date;
  }

  export interface AuntStatisticsInput {
    year?: number;
  }

  export interface AuntStatisticsOutput {
    auntStatisticsDetails?: Array<AuntStatisticsDetailOutput>;
    average?: string;
    fromLastTime?: string;
    maxCycle?: string;
    maxPeriod?: string;
    minCycle?: string;
    minPeriod?: string;
    periodState?: string;
  }

  export interface AuntTemperatureListOutput {
    day?: Date;
    temperature?: string;
  }

  export interface AuntTemperatureOutput {
    temperature?: string;
  }

  export interface AuntTissueConifgOutput {
    firstRemindTime?: string;
    isRemind?: boolean;
    lastRemindTime?: string;
    pushContent?: string;
    remindInterval?: number;
    remindType?: string;
    timingRemindTimes?: Array<string>;
  }

  export interface AuntTodoViewInput {
    monthView?: boolean;
  }

  export interface AuntTodoViewListOutput {
    list?: Array<AuntTodoViewOutput>;
  }

  export interface AuntTodoViewOutput {
    auntType?: string;
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
    widgetSubTitle?: string;
  }

  export interface AuntTransferConditionV3 {
    begin?: Date;
    end?: Date;
    futureUserId?: number;
    livelihoodUserId?: number;
    transferId?: number;
    userPhone?: string;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DelAdvanceDayInput {
    id?: string;
  }

  export interface DeleteAuntRecordInput {
    id?: number;
  }

  export interface EggDayOrdinalOutput {
    eggDay?: Date;
    eggDayOrdinal?: number;
  }

  export interface EggDayOutput {
    eggDay?: Date;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface NextAuntVoBeginOutput {
    nextAuntVoBeginDayDesc?: string;
    nowDayType?: string;
    nowDesc?: string;
  }

  export interface PaginableRequest {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface PhysiologicalPeriodPage1 {
    count?: number;
  }

  export interface PhysiologicalPeriodPage2 {
    stable?: boolean;
    statistics?: AuntStatisticsOutput;
    year?: number;
  }

  export interface ReciprocalViewRequest {
    currentPage: number;
    isHiddenFinish?: boolean;
    keyword?: string;
    pageSize: number;
    refYear?: number;
  }

  export interface RemindAdvanceDayListOutput {
    list?: Array<AuntRemindAdvanceDayOutput>;
  }

  export interface Rule {
    expression?: string;
    repeatValue?: number;
    type?: string;
  }

  export interface SearchUserAuntRecordByMonthInput {
    month?: number;
    year?: number;
  }

  export interface SearchUserAuntRecordByRangeInput {
    endDate?: string;
    startDate?: string;
  }

  export interface SearchUserAuntRecordByWeekCustomInput {
    currentDate?: Date;
    weekStartDay?: string;
  }

  export interface SearchUserAuntRecordByWeekInput {
    currentDate?: Date;
  }

  export interface SyncDataAppletFinishResponse {
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
    fromId: number;
    fromVersion: number;
    pageSize: number;
    toVersion: number;
  }

  export interface UpdateAdvanceDayInput {
    advanceDay?: number;
    id?: number;
  }

  export interface UpdateAdvanceDaySelectedInput {
    idList?: Array<string>;
  }

  export interface UpdateAuntRecordEndInput {
    auntEnd?: string;
    id?: number;
  }

  export interface UpdateAuntRecordStartInput {
    auntStart?: string;
    id?: number;
  }

  export interface UpdateBeginRemindSwitch {
    beginRemindSwitch?: boolean;
  }

  export interface UpdateConfigInput {
    age?: number;
    cycle?: number;
    length?: number;
    monthDisplaySwitch?: boolean;
    endRemindSwitch?: boolean;
    beginRemindSwitch?: boolean;
    nearlyDate?: string;
  }

  export interface UpdateDysmenorrheaInput {
    day?: string;
    dysmenorrhea?: number;
  }

  export interface UpdateFlowInput {
    day?: string;
    flow?: number;
  }

  export interface UpdateIsRemindInput {
    isRemind?: boolean;
  }

  export interface UpdateLoveInput {
    day?: string;
    loveType?: string;
  }

  export interface UpdatePushContentInput {
    pushContent?: string;
  }

  export interface UpdateRemarkInput {
    day?: string;
    remark?: string;
  }

  export interface UpdateRemindInfoInput {
    beginRemindTime?: string;
  }

  export interface UpdateRemindTimeInput {
    firstRemindTime?: string;
    lastRemindTime?: string;
    remindInterval?: number;
    remindType?: string;
    timingRemindTimes?: Array<string>;
  }

  export interface UpdateTemperatureInput {
    day?: string;
    temperature?: number;
  }

  export interface AuntDataSync {
    auntEnd?: Date;
    auntStart?: Date;
    created?: Date;
    deleted?: boolean;
    id?: number;
    ip?: string;
    oldUserCode?: number;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface AuntSettingDataSync {
    age?: number;
    beginRemindSwitch?: boolean;
    created?: Date;
    cycle?: number;
    deleted?: boolean;
    endDate?: Date;
    endRemindSwitch?: boolean;
    id?: number;
    ip?: string;
    length?: number;
    monthDisplaySwitch?: boolean;
    nearlyDate?: Date;
    nextTime?: Date;
    nextType?: string;
    oldUserCode?: number;
    pushEndTime?: Date;
    pushStartTime?: Date;
    recordMaxStartDate?: Date;
    recordMinStartDate?: Date;
    startDate?: Date;
    updated?: Date;
    userId?: number;
    version?: number;
  }

  export interface AuntExtraDataSync {
    created?: Date;
    deleted?: boolean;
    id?: number;
    infoDay?: Date;
    ip?: string;
    oldUserCode?: number;
    remark?: string;
    updated?: Date;
    userId?: number;
    version?: number;
  }
}
