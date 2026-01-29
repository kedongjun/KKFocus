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

export namespace BaseLoanDefinition {
  export interface AddFinishedInput {
    finishDay?: number;
    finishState?: boolean;
    id?: string;
  }

  export interface AddOrUpdateBankCardInput {
    accountName?: string;
    aheadDayNum?: number;
    // aheadTypeList?: Array<AheadTypeTimeInput>;
    bankId?: number;
    bankName?: string;
    billDay?: number;
    billPushState?: boolean;
    cardNo?: string;
    id?: number;
    pushState?: boolean;
    remark?: string;
    remindTime?: string;
    repaymentDay?: number;
    repaymentDayType?: string;
  }

  export interface AddOrUpdateBankCardOutput {
    bankCardOutput?: BankCardOutput;
    finishedList?: Array<BankCardFinishedOutput>;
  }

  export interface AddOrUpdateLoanInput {
    aheadDayNum?: number;
    aheadTypeList?: Array<AheadTypeTimeInput>;
    id?: number;
    loanClassifyId?: number;
    loanName?: string;
    pushState?: boolean;
    remark?: string;
    remindTime?: string;
    repaymentDay?: number;
  }

  export interface AddOrUpdateLoanOutput {
    finishedList?: Array<LoanFinishedOutput>;
    loan?: LoanOutput;
  }

  export interface AheadTypeTimeInput {
    offset?: number;
    checked?: boolean
  }

  export interface AppletHistoryResponse {
    created?: Date;
    id?: number;
    params?: object;
    subTitle?: string;
    title?: string;
  }

  export interface BankCardAndLoanListInput {
    searchKey?: string;
  }

  export interface BankCardAndLoanListOutput {
    bankAndLoanList?: Array<BankCardAndLoanOutput>;
  }

  export interface BankCardAndLoanListV2Output {
    bankAndLoanList?: Array<BankCardAndLoanV2Output>;
  }

  export interface BankCardAndLoanOutput {
    accountName?: string;
    aheadDay?: string;
    aheadDayNum?: number;
    aheadTypeList?: Array<AheadTypeTimeInput>;
    bankId?: number;
    bankName?: string;
    betweenRepaymentDay?: number;
    billDay?: number;
    billPushState?: boolean;
    cardNo?: string;
    cardType?: string;
    color1?: string;
    color2?: string;
    created?: Date;
    id?: number;
    loanClassifyId?: number;
    loanName?: string;
    logo?: string;
    logoWhite?: string;
    name?: string;
    pushState?: boolean;
    remark?: string;
    remindTime?: string;
    repaymentDay?: number;
    repaymentDayType?: string;
    shortCardNo?: string;
    type?: string;
    userId?: number;
  }

  export interface BankCardAndLoanV2Output {
    bankCardOutput?: BankCardAndLoanOutput;
    loanOutput?: BankCardAndLoanOutput;
    type?: string;
    isDemo?: boolean;
    loanType?:string;
  }

  export interface BankCardDto {
    accountName?: string;
    aheadDay?: string;
    aheadDayNum?: number;
    bankId?: number;
    bankName?: string;
    billDay?: number;
    cardNo?: string;
    cardType?: string;
    created?: Date;
    finishedList?: Array<BankCardFinishedDto>;
    id?: number;
    ip?: string;
    nextTime?: Date;
    pushState?: boolean;
    remindTime?: string;
    repaymentDay?: number;
  }

  export interface BankCardFinishedDto {
    bankCardId?: number;
    created?: Date;
    finishDay?: Date;
    finishState?: boolean;
    ip?: string;
  }

  export interface BankCardFinishedOutput {
    bankCardId?: number;
    created?: Date;
    finishDay?: Date;
    finishState?: boolean;
    id?: number;
    updated?: Date;
    userId?: number;
  }

  export interface BankCardIdInput {
    id?: number;
  }

  export interface BankCardListInput {
    searchKey?: string;
  }

  export interface BankCardListOutput {
    list?: Array<BankCardOutput>;
  }

  export interface BankCardOutput {
    accountName?: string;
    aheadDay?: string;
    aheadDayNum?: number;
    aheadTypeList?: Array<AheadTypeTimeInput>;
    bankId?: number;
    bankName?: string;
    betweenRepaymentDay?: number;
    billDay?: number;
    billPushState?: boolean;
    cardNo?: string;
    cardType?: string;
    color1?: string;
    color2?: string;
    created?: Date;
    id?: number;
    logo?: string;
    logoWhite?: string;
    pushState?: boolean;
    remark?: string;
    remindTime?: string;
    repaymentDay?: number;
    repaymentDayType?: string;
    userId?: number;
  }

  export interface BankListOutput {
    list?: Array<BankOutput>;
  }

  export interface BankOutput {
    bankCode?: string;
    bankName?: string;
    color1?: string;
    color2?: string;
    id?: number;
    logo?: string;
    type?: string;
    loanType?:string;

  }

  export interface BatchAddInput {
    accountName?: string;
    aheadDayNum?: number;
    // aheadTypeList?: Array<AheadTypeTimeInput>;
    bankId?: number;
    bankName?: string;
    logo?: string;
    billDay?: number;
    cardNo?: string;
    pushState?: boolean;
    remark?: string;
    remindTime?: string;
    repaymentDay?: number;
    repaymentDayType?: string;
    type?: string;
  }

  export interface BatchAddInputs {
    batchAddInputs?: Array<BatchAddInput>;
  }

  export interface CheckBankCardBinOutput {
    bank?: BankOutput;
  }

  export interface CheckCardBinInput {
    cardNo?: string;
  }

  export interface DateRequest {
    theDay?: Date;
  }

  export interface DeleteLoanInput {
    id?: number;
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

  export interface LoanBankCardReciprocalViewListOutput {
    list?: Array<LoanBankCardReciprocalViewOutput>;
  }

  export interface LoanBankCardReciprocalViewOutput {
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

  export interface LoanBankCardTodoViewInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface LoanBankCardTodoViewListOutput {
    list?: Array<LoanBankCardTodoViewOutput>;
  }

  export interface LoanBankCardTodoViewOutput {
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

  export interface LoanDto {
    aheadDay?: string;
    aheadDayNum?: number;
    created?: Date;
    finishedList?: Array<LoanFinishedDto>;
    id?: number;
    ip?: string;
    loanClassifyId?: number;
    loanName?: string;
    nextTime?: Date;
    pushState?: boolean;
    remindTime?: string;
    repaymentDay?: number;
  }

  export interface LoanFinishedDto {
    created?: Date;
    finishDay?: Date;
    finishState?: boolean;
    ip?: string;
    loanId?: number;
  }

  export interface LoanFinishedOutput {
    created?: Date;
    finishDay?: Date;
    finishState?: boolean;
    id?: number;
    loanId?: number;
    updated?: Date;
    userId?: number;
  }

  export interface LoanGuideOutput {
    loanIcon?: string;
    loanId?: number;
    loanName?: string;
    selected?: boolean;
    sort?: number;
    type?: string;
  }

  export interface LoanImportExportData {
    bankCardList?: Array<BankCardDto>;
    loanList?: Array<LoanDto>;
  }

  export interface LoanInfoInput {
    id?: number;
  }

  export interface LoanOutput {
    aheadDay?: string;
    aheadDayNum?: number;
    aheadTypeList?: Array<AheadTypeTimeInput>;
    betweenRepaymentDay?: number;
    color1?: string;
    color2?: string;
    created?: Date;
    id?: number;
    loanClassifyId?: number;
    loanName?: string;
    logo?: string;
    logoWhite?: string;
    pushState?: boolean;
    remark?: string;
    remindTime?: string;
    repaymentDay?: number;
    userId?: number;
  }

  export interface LoanTransferCondition {
    begin?: Date;
    end?: Date;
    futureUserId?: number;
    livelihoodUserId?: number;
    transferId?: number;
    userPhone?: string;
  }

  export interface LoanTransferData {
    loanImportExportData?: LoanImportExportData;
    transferStatus?: TransferStatus;
    transferUser?: TransferUser;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface ReciprocalViewRequest {
    currentPage: number;
    isHiddenFinish?: boolean;
    keyword?: string;
    pageSize: number;
    refYear?: number;
  }

  export interface RemindDto {
    billDayPushState?: boolean;
    remindTime?: string;
    repaymentDayPushState?: boolean;
  }

  export interface Rule {
    expression?: string;
    repeatValue?: number;
    type?: string;
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

  export interface LoanShortcutAppletUsingPOST {
    cardNo?: string;
    count?: number;
    desc?: string;
    id?: number;
    logo?: string;
    remark?: string;
    shortCardNo?: string;
    title?: string;
    type?: string;
  }

  export interface LoanMyAppletUsingPOSTRsp {
    count?: number;
  }

  export interface DailySummaryUsingPOSTRsp {
    appletId?: number;
    dataList?: Array<object>;
    extendMap?: object;
    subTitle?: string;
    title?: string;
  }
}
