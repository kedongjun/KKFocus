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
import { ArrayList } from '@kit.ArkTS';

export namespace BaseBillDefinition {
  export interface AccountBookAddInput {
    accountBookSysId?: string;
    budget?: string;
    budgetSwitch?: boolean;
    budgetType?: string;
    logo?: string;
    logoUrl?: string;
    name?: string;
    sort?: string;
  }

  export interface AccountBookAddOutput {
    accountBookSysId?: number;
    budget?: number;
    budgetSwitch?: boolean;
    budgetType?: string;
    id?: number;
    isDefault?: boolean;
    logo?: string;
    logoUrl?: string;
    mid?: number;
    name?: string;
    sort?: number;
  }

  export interface AccountBookAddV2Input {
    accountBookSysId?: string;
    name?: string;
    logo?:string;
    budgetType?:string
    logoUrl?:string
  }

  export interface AccountBookCurrentData {
    accountBookId?: number;
    accountBookName?: string;
    created?: Date;
    ip?: string;
  }

  export interface AccountBookCurrentInput {
    startDay?: string;
  }

  export interface AccountBookCurrentOutput {
    accountBookId?: number;
    accountBookName?: string;
    userId?: number;
  }

  export interface AccountBookCurrentUpdateInput {
    accountBookId?: string;
    accountBookName?: string;
  }

  export interface AccountBookData {
    accountBookSysId?: number;
    budget?: number;
    budgetType?: string;
    created?: Date;
    extend?: string;
    id?: number;
    ip?: string;
    isDefault?: boolean;
    logo?: string;
    logoSmall?: string;
    logoSmallUrl?: string;
    logoUrl?: string;
    name?: string;
    remark?: string;
    sort?: number;
  }

  export interface AccountBookDeleteInput {
    id?: string;
  }

  export interface AccountBookDeleteMoveInput {
    id?: string;
    newId?: string;
  }

  export interface AccountBookDetailInput {
    id?: number;
    startDay?: string;
  }

  export interface AccountBookDetailOutput {
    accountBookSysId?: string;
    budget?: string;
    budgetInfo?: BudgetInformations;
    budgetPercent?: string;
    budgetSwitch?: boolean;
    budgetType?: string;
    budgets?: AllBudgets;
    haveRecord?: boolean;
    id?: string;
    isAllData?: boolean;
    isDefault?: boolean;
    logo?: string;
    logoUrl?: string;
    mid?: string;
    name?: string;
    remainingBudget?: string;
    remainingBudgetSymbol?: string;
    sort?: number;
  }

  export interface AccountBookListByStartDayInput {
    showAllBook?: boolean;
    startDay?: string;
  }

  export interface AccountBookListInput {
    showAllBook?: boolean;
  }

  export interface AccountBookListOutput {
    accountBookList?: Array<AccountBookDetailOutput>;
  }

  export interface AccountBookSysDetailOutput {
    id?: string;
    logo?: string;
    logoUrl?: string;
    name?: string;
    selected?: boolean;
    sort?: string;
    type?: string;
  }

  export interface AccountBookSysListOutput {
    accountBookList?: Array<AccountBookSysDetailOutput>;
  }

  export interface AccountBookUpdateInput {
    accountBookSysId?: string;
    budget?: string;
    budgetSwitch?: boolean;
    budgetType?: string;
    id?: string;
    logo?: string;
    logoUrl?: string;
    name?: string;
    sort?: number;
    startDay?: string;
  }

  export interface AccountTypeAddInput {
    accountBookId?: string;
    accountTypeId?: string;
    color?: string;
    iconType?: string;
    name?: string;
    superFolderId?: string;
  }

  export interface AccountTypeColorOutput {
    color?: string;
    sort?: number;
  }

  export interface AccountTypeCustomizeListOutput {
    accountBookList?: Array<AccountTypeOutput>;
  }

  export interface AccountTypeCustomizeListOutputV2 {
    accountTypeList?: Array<AccountTypeOutputV2>;
  }

  export interface AccountTypeDeleteMoveInput {
    id?: string;
    newId?: string;
  }

  export interface AccountTypeDetailOutput {
    appLogo?: string;
    appLogoSelected?: string;
    appLogoSelectedUrl?: string;
    appLogoUrl?: string;
    canDelete?: number;
    classify?: string;
    iconType?: string;
    id: string;
    isDefault?: boolean;
    logo?: string;
    logoSelected?: string;
    logoSelectedUrl?: string;
    logoUrl?: string;
    name?: string;
    selected?: boolean;
    sort?: number;
    type?: string;
  }

  export interface AccountTypeIdInput {
    id?: string;
  }

  export interface AccountTypeListInput {
    accountBookId?: string;
    iconType?: string;
    startDay?: string;
  }

  export interface AccountTypeListOutput {
    accountBookList?: Array<AccountTypeDetailOutput>;
    accountTypeColorList?: Array<AccountTypeColorOutput>;
  }

  export interface AccountTypeOutput {
    accountBookId?: string;
    appLogo?: string;
    appLogoUrl?: string;
    appSelected?: string;
    appSelectedUrl?: string;
    budget?: number;
    budgetInfo?: BudgetInformations;
    budgetPercent?: string;
    budgetType?: string;
    canDelete?: number;
    color?: string;
    folderType?: string;
    iconId?: string;
    iconType?: string;
    id?: string;
    isDefault?: boolean;
    logo?: string;
    logoSelected?: string;
    logoSelectedUrl?: string;
    logoUrl?: string;
    mid?: number;
    name?: string;
    remainingBudget?: number;
    remainingBudgetSymbol?: string;
    remark?: string;
    selected?: boolean;
    sort?: number;
    superFolderId?: number;
    totalSpend?: number;
    type?: string;
  }

  export interface AccountTypeOutputV2 {
    accountBookId?: string;
    appLogo?: string;
    appLogoUrl?: string;
    appSelected?: string;
    appSelectedUrl?: string;
    budgetInfo?: BudgetInformations;
    canDelete?: number;
    color?: string;
    folderType?: string;
    iconId?: string;
    iconType?: string;
    id?: string;
    linkedType?: string;
    isDefault?: boolean;
    logo?: string;
    logoSelected?: string;
    logoSelectedUrl?: string;
    logoUrl?: string;
    mid?: number;
    name?: string;
    remark?: string;
    selected?: boolean;
    sort?: number;
    subClassifyList?: Array<AccountTypeOutputV2>;
    superFolderId?: number;
    type?: string;
    groupName?: string;
    subItem?: AccountTypeOutputV2
  }

  export interface AccountTypeUpdateInput {
    accountTypeId?: string;
    budget?: number;
    color?: string;
    iconType?: string;
    id?: string;
    name?: string;
    superFolderId?: string;
  }

  export interface AddFinishedInput {
    finishDay?: Date;
    finishState?: boolean;
  }

  export interface AppletHistoryResponse {
    created?: Date;
    id?: number;
    params?: object;
    subTitle?: string;
    title?: string;
  }

  export interface BankListOutput {
    bankOutput?: Array<BankOutput>;
  }

  export interface BankOutput {
    bankCode?: string;
    bankName?: string;
    id?: number;
    logo?: string;
    logoWhite?: string;
    type?: string;
  }

  export interface BatchAddInput {
    billList?: Array<BookkeepingBillInput>;
  }

  export interface BatchMoveInOrOutTrashInput {
    ids?: Array<string>;
    inTrash?: boolean;
  }

  export interface BillAppletHistoryInput {
    params?: Array<Map<string, object>>;
  }

  export interface BillBankCardListOutput {
    list?: Array<BillBankCardOutput>;
  }

  export interface BillBankCardOutput {
    accountName?: string;
    aheadDay?: string;
    aheadDayNum?: number;
    bankId?: number;
    bankName?: string;
    betweenRepaymentDay?: number;
    billDay?: number;
    cardNo?: string;
    cardType?: string;
    color1?: string;
    color2?: string;
    created?: Date;
    id?: number;
    logo?: string;
    pushState?: boolean;
    repaymentDay?: number;
    userId?: number;
  }

  export interface BillBatchDeleteInput {
    batchDeleteIds?: Array<IdRequest>;
  }

  export interface BillBatchUpdateAccountBookInput {
    batchUpdateIds?: Array<IdRequest>;
    needNew: boolean;
    updateClassifyId?: string;
    updateId?: string;
  }

  export interface BillBatchUpdateInput {
    batchUpdateIds?: Array<IdRequest>;
    updateId?: string;
  }

  export interface BillCountOutput {
    bookkeeping_page1?: BookKeepingPageOne;
    bookkeeping_page2?: BookKeepingPageTwo;
    bookkeeping_page3?: BookKeepingPageThree;
  }

  export interface BillDataFixInput {
    id?: number;
    type?: string;
    userId?: number;
  }

  export interface BillExportData {
    accountBookCurrentData?: AccountBookCurrentData;
    accountBookDataList?: Array<AccountBookData>;
    bookkeepingBillDataList?: Array<BookkeepingBillData>;
    bookkeepingConfigData?: BookkeepingConfigData;
    finishedList?: Array<BookkeepingFinishedOutput>;
    walletCurrentData?: WalletCurrentData;
    walletDataList?: Array<WalletData>;
  }

  export interface BillExportDataOutput {
    beginTime?: string;
    endTime?: string;
  }

  export interface BillIdInput {
    id?: number;
  }

  export interface BillInitInput {
    billBankCardListOutput?: BillBankCardListOutput;
  }

  export interface BillQueryIntentInput {
    startTime?: string;
    type?: string;
  }

  export interface BillQueryIntentOutput {
    accountBookName?: string;
    content?: string;
    date?: string;
    expend?: number;
    income?: number;
    surplus?: number;
  }

  export interface BillTodoViewInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface BillTodoViewListOutput {
    list?: Array<BillTodoViewOutput>;
  }

  export interface BillTodoViewOutput {
    created?: Date;
    finishState?: number;
    id?: number;
    importance?: number;
    intervalType?: number;
    shortTitle?: string;
    title?: string;
    todoClassifyId?: number;
    todoTime?: Date;
    todoType?: number;
    updated?: Date;
    version?: number;
    widgetSubTitle?: string;
  }

  export interface BillTransferConditionV2 {
    begin?: Date;
    end?: Date;
    futureUserId?: number;
    livelihoodUserId?: number;
    transferId?: number;
    userPhone?: string;
  }

  export interface BookkeepingBillAddInput {
    accountBookId?: string;
    accountTypeId?: string;
    id?: string;
    imgList?: Array<string>;
    money?: number;
    remark?: string;
    showMinute?: boolean;
    symbol?: string;
    title?: string;
    useTime?: string;
    walletId?: string;
    importBillDataType?: string;
  }

  export interface BookkeepingBillAsyncAccountBookInput {
    budget?: number;
    budgetType?: string;
    current?: boolean;
    deleted?: boolean;
    extend?: string;
    idType?: string;
    isDefault?: boolean;
    logo?: string;
    logoSmall?: string;
    mid?: number;
    name?: string;
    sort?: number;
  }

  export interface BookkeepingBillAsyncAccountTypeCustomizeInput {
    appLogo?: string;
    appLogoUrl?: string;
    appSelected?: string;
    appSelectedUrl?: string;
    canDelete?: boolean;
    classifyType?: string;
    deleted?: boolean;
    iconId?: number;
    idType?: string;
    isDefault?: boolean;
    logo?: string;
    logoSelected?: string;
    logoSelectedUrl?: string;
    logoUrl?: string;
    mid?: number;
    name?: string;
    remark?: string;
    selected?: boolean;
    sort?: number;
    type?: string;
  }

  export interface BookkeepingBillAsyncBillInput {
    accountBookId?: number;
    accountTypeId?: number;
    created?: number;
    deleted?: boolean;
    idType?: string;
    mid?: number;
    money?: number;
    remark?: string;
    symbol?: string;
    title?: string;
    useTime?: Date;
    walletId?: number;
  }

  export interface BookkeepingBillAsyncConfigInput {
    idType?: string;
    mid?: number;
    remindSwitch?: boolean;
    ruleList?: string;
    todoTime?: LocalTime;
  }

  export interface BookkeepingBillAsyncDataInput {
    BookkeepingBillAsyncAccountBookInput?: Array<BookkeepingBillAsyncAccountBookInput>;
    BookkeepingBillAsyncAccountTypeCustomizeInput?: Array<BookkeepingBillAsyncAccountTypeCustomizeInput>;
    BookkeepingBillAsyncBillInput?: Array<BookkeepingBillAsyncBillInput>;
    BookkeepingBillAsyncConfigInput?: Array<BookkeepingBillAsyncConfigInput>;
    BookkeepingBillAsyncFinishedInput?: Array<BookkeepingBillAsyncFinishedInput>;
    BookkeepingBillAsyncWalletInput?: Array<BookkeepingBillAsyncWalletInput>;
  }

  export interface BookkeepingBillAsyncDownloadInput {
    fromVersion: number;
    toVersion: number;
  }

  export interface BookkeepingBillAsyncFinishedInput {
    finishDay?: Date;
    finishState?: boolean;
    idType?: string;
    mid?: number;
  }

  export interface BookkeepingBillAsyncUploadOutput {
    records?: Array<BookkeepingBillAsyncUploadResultOutput>;
  }

  export interface BookkeepingBillAsyncUploadResultOutput {
    desc?: string;
    errorCode?: number;
    idType?: string;
    mid?: number;
  }

  export interface BookkeepingBillAsyncWalletInput {
    balance?: number;
    bankCardNo?: string;
    bankName?: string;
    current?: boolean;
    deleted?: boolean;
    idType?: string;
    isDefault?: boolean;
    logo?: string;
    logoWhite?: string;
    mid?: number;
    name?: string;
    sort?: number;
    type?: string;
    updateTime?: number;
  }

  export interface BookkeepingBillCountOutput {
    count?: number;
  }

  export interface BookkeepingBillData {
    accountBookId?: number;
    accountTypeId?: number;
    created?: Date;
    ip?: string;
    money?: number;
    oldUserCode?: number;
    remark?: string;
    symbol?: string;
    title?: string;
    useTime?: Date;
    walletId?: number;
  }

  export interface BookkeepingBillExportDataInput {
    beginTime: Date;
    endTime: Date;
  }

  export interface BookkeepingBillInput {
    accountBookId?: string;
    accountTypeId?: string;
    imgList?: Array<string>;
    money?: string;
    remark?: string;
    showMinute?: boolean;
    symbol?: string;
    title?: string;
    useTime?: string;
    walletId?: string;
  }

  export interface BookkeepingBillIntendOutput {
    accountBookId?: number;
    accountBookName?: string;
    accountTypeId?: number;
    accountTypeLogo?: string;
    accountTypeLogoUrl?: string;
    accountTypeName?: string;
    billGlobalAddType?: string;
    billRecordType?: string;
    billRecordTypeDesc?: string;
    borrowTime?: Date;
    color?: string;
    created?: Date;
    dataType?: string;
    id?: string;
    imgList?: Array<string>;
    importRemark?: string;
    logoUrl?: string;
    mid?: number;
    money?: number | string;
    name?: string;
    remark?: string;
    repayTime?: Date;
    symbol?: string;
    title?: string;
    type?: string;
    useTime?: string;
    userId?: number;
    walletBillGroupId?: number;
    walletId?: number;
    walletLogo?: string;
    walletLogoUrl?: string;
    walletName?: string;

    date?:string;
    income?:string;
    expend?:string;
    surplus?:string;
    isModify?:boolean;


  }

  export interface BookkeepingBillIntentInput {
    bookType?: string;
    content?: string;
    date?: string;
    price?: string;
    remark?: string;
  }

  export interface BookkeepingBillOutput {
    accountBookId?: string;
    accountBookName?: string;
    accountTypeId?: string;
    accountTypeLogo?: string;
    accountTypeLogoUrl?: string;
    accountTypeName?: string;
    billGlobalAddType?: string;
    billRecordType?: string;
    billRecordTypeDesc?: string;
    color?: string;
    created?: Date;
    dataType?: string;
    id?: string;
    imgList?: Array<string>;
    importRemark?: string;
    mid?: number;
    money?: number;
    remark?: string;
    showMinute?: boolean;
    symbol?: string;
    title?: string;
    useTime?: string;
    userId?: number;
    walletId?: string;
    walletLogo?: string;
    walletLogoUrl?: string;
    walletName?: string;
    isSelect?: boolean;
    isModify?: boolean;
    importBillDataType?: string;
    fromWalletName?: string;
    toWalletName?: string;
  }

  export interface BookkeepingBillReportByCustomizeTypeV3Input {
    accountBookId?: string;
    endDate?: string;
    groupType?: string;
    id?: string;
    startDate?: string;
    type?: string;
  }

  export interface BookkeepingBillReportChartOutput {
    pieColor?: string;
    pieName?: string;
    piePercentage?: string;
  }

  export interface BookkeepingBillReportDetailByMonthListOutput {
    monthList?: Array<BookkeepingBillReportMonthDetailListOutput>;
  }

  export interface BookkeepingBillReportDetailInput {
    accountBookId?: number;
    id?: number;
    month?: number;
    type?: string;
    year?: number;
  }

  export interface BookkeepingBillReportDetailListOutput {
    month?: string;
    reportDetailList?: Array<BookkeepingBillReportDetailOutput>;
  }

  export interface BookkeepingBillReportDetailListV2Output {
    billDetailList?: Array<BookkeepingBillReportDetailOutput>;
    day?: string;
    dayStr?: string;
    expend?: number;
    income?: number;
    sumMoney?: string;
    surplus?: number;
  }

  export interface BookkeepingBillReportDetailOutput {
    accountBookId?: string;
    accountBookName?: string;
    accountTypeId?: string;
    billRecordType?: string;
    billRecordTypeDesc?: string;
    color?: string;
    coverRemark?: string;
    dataType?: string;
    day?: string;
    haveImg?: boolean;
    id?: string;
    imgList?: Array<string>;
    importRemark?: string;
    logoUrl?: string;
    money?: number;
    name?: string;
    remark?: string;
    showMinute?: boolean;
    symbol?: string;
    title?: string;
    useTime?: string;
    walletId?: string;
    walletLogo?: string;
    walletLogoUrl?: string;
    walletName?: string;
  }

  export interface BookkeepingBillReportDetailV2Input {
    accountBookId?: number;
    endDate?: Date;
    id?: number;
    startDate?: Date;
    type?: string;
  }

  export interface BookkeepingBillReportDetailV3Input {
    accountBookId?: string;
    date?: string
    endDate?: string;
    id?: string;
    startDate?: string;
    type?: string;
  }

  export interface BookkeepingBillReportDetailWithDayListOutput {
    detailName?: string;
    detailType?: string;
    logo?: string;
    logoUrl?: string;
    reportDetailList?: Array<BookkeepingBillReportDetailListOutput>;
    totalExpend?: string;
    totalIncome?: string;
  }

  export interface BookkeepingBillReportDiffOutput {
    currentMoney?: number;
    lastMoney?: number;
  }

  export interface BookkeepingBillReportElementOutput {
    accountBookId?: string;
    accountBookName?: string;
    color?: string;
    count?: string;
    folderType?: string;
    id?: string;
    logo?: string;
    logoUrl?: string;
    month?: string;
    name?: string;
    percentage?: string;
    sort?: number;
    totalMoney?: number;
    type?: string;
    year?: string;
  }

  export interface BookkeepingBillReportExpendListOutput {
    diff?: BookkeepingBillReportDiffOutput;
    expendChartList?: Array<BookkeepingBillReportChartOutput>;
    expendRankList?: Array<BookkeepingBillReportElementOutput>;
  }

  export interface BookkeepingBillReportIncomeListOutput {
    diff?: BookkeepingBillReportDiffOutput;
    incomeChartList?: Array<BookkeepingBillReportChartOutput>;
    incomeRankList?: Array<BookkeepingBillReportElementOutput>;
  }

  export interface BookkeepingBillReportInput {
    accountBookId?: number;
    month?: number;
    year?: number;
  }

  export interface BookkeepingBillReportMonthDetailListOutput {
    dayDetailList?: Array<BookkeepingBillReportDetailListV2Output>;
    monthDay?: string;
    totalExpend?: number;
    totalIncome?: number;
    totalSurplus?: number;
    isExpand?: boolean;
  }

  export interface BookkeepingBillReportOutput {
    accountBookId?: number;
    accountBookName?: string;
    billNum?: number;
    expend?: number;
    expendRank?: BookkeepingBillReportExpendListOutput;
    firstExpend?: BookkeepingBillReportElementOutput;
    firstIncome?: BookkeepingBillReportElementOutput;
    income?: number;
    incomeRank?: BookkeepingBillReportIncomeListOutput;
    surplus?: number;
    walletRank?: BookkeepingBillReportWalletListOutput;
  }

  export interface BookkeepingBillReportV2Input {
    accountBookId?: number;
    endDate?: Date;
    lastEndDate?: Date;
    lastStartDate?: Date;
    startDate?: Date;
  }

  export interface BookkeepingBillReportV3Input {
    accountBookId?: string;
    endDate?: string;
    lastEndDate?: string;
    lastStartDate?: string;
    startDate?: string;
    type?: string;
  }

  export interface BookkeepingBillReportV3Output {
    accountBookId?: number;
    accountBookName?: string;
    accountBookStatementList?: Array<BookkeepingBillStatementAccountBookOutput>;
    expend?: number;
    expendRank?: BookkeepingBillReportExpendListOutput;
    income?: number;
    incomeRank?: BookkeepingBillReportIncomeListOutput;
    statementList?: Array<BookkeepingBillStatementDetailOutput>;
    surplus?: number;
  }

  export interface BookkeepingBillReportWalletListOutput {
    walletRankList?: Array<BookkeepingBillReportElementOutput>;
  }

  export interface BookkeepingBillSearchByKeywordInput {
    billSearch?: boolean;
    keyword?: string;
  }

  export interface BookkeepingBillStatementAccountBookOutput {
    accountBookName?: string;
    expend?: number;
    income?: number;
    surplus?: number;
  }

  export interface BookkeepingBillStatementDetailInput {
    accountBookId?: string;
    endDate?: string;
    startDate?: string;
  }

  export interface BookkeepingBillStatementDetailOutput {
    day?: string;
    expend?: number;
    income?: number;
    surplus?: number;
  }

  export interface BookkeepingBillStatementDetailV3Output {
    day?: Date;
    sumMoney?: number;
  }

  export interface BookkeepingBillStatementInput {
    accountBookId?: number;
    endDate?: Date;
    startDate?: Date;
    type?: string;
  }

  export interface BookkeepingBillStatementOutput {
    accountBookStatementList?: Array<BookkeepingBillStatementAccountBookOutput>;
    statementList?: Array<BookkeepingBillStatementDetailOutput>;
    totalExpend?: number;
    totalIncome?: number;
    totalSurplus?: number;
  }

  export interface BookkeepingBillSyncOutput {
    created?: Date;
    deleted?: boolean;
    id?: number;
    money?: number;
    symbol?: string;
    title?: string;
    updated?: Date;
    useTime?: Date;
    version?: number;
  }

  export interface BookkeepingBilleSearchOutpupt {
    expend?: number;
    income?: number;
    rows?: Array<BookkeepingBillOutput>;
    surplus?: number;
  }

  export interface BookkeepingConfigData {
    created?: Date;
    ip?: string;
    nextTime?: Date;
    oldUserCode?: number;
    remindSwitch?: boolean;
    todoTime?: LocalTime;
  }

  export interface BookkeepingConfigInput {
    remindSwitch?: boolean;
    todoTime?: string;
  }

  export interface BookkeepingConfigOutput {
    id?: number;
    todoTime?: LocalTime;
  }

  export interface BookkeepingFinishedOutput {
    bookkeepingConfigId?: number;
    finishDay?: Date;
    finishState?: boolean;
    id?: number;
    ip?: string;
    userId?: number;
  }

  export interface BookkeepingInfoOutput {
    mid?: number;
    remindSwitch?: boolean;
    sortTile?: string;
    todoTime?: string;
  }

  export interface BooleanDataOutput {
    hasData?: boolean;
  }

  export interface BooleanResponse {
    flag?: boolean;
  }

  export interface BorrowLendDetailListOutput {
    borrowTime?: Date;
    id?: number;
    imgList?: Array<string>;
    list?: Array<BorrowLendOutput>;
    name?: string;
    remark?: string;
    repay?: number;
    repayTime?: Date;
    total?: number;
    walletId?: number;
    walletName?: string;
  }

  export interface BorrowLendListOutput {
    list?: Array<BorrowLendOutput>;
    pending?: number;
    returned?: number;
    total?: number;
  }

  export interface BorrowLendListV2Output {
    countBalance?: boolean;
    list?: Array<BorrowLendV2Output>;
    pending?: number;
    returned?: number;
    total?: number;
    walletBillGroupId?: string;
    walletBillGroupName?: string;
  }

  export interface BorrowLendOutput {
    borrowTime?: Date;
    coverRemark?: string;
    dateTime?: Date;
    haveImg?: boolean;
    id?: number;
    imgList?: Array<string>;
    logoUrl?: string;
    money?: number;
    name?: string;
    pending?: number;
    remark?: string;
    repayTime?: Date;
    returned?: number;
    type?: string;
    walletBillGroupId?: number;
    walletId?: number;
    walletName?: string;
  }

  export interface BorrowLendV2Output {
    borrowTime?: string;
    coverRemark?: string;
    haveImg?: boolean;
    id?: string;
    imgList?: Array<string>;
    logoUrl?: string;
    money?: number;
    pending?: number;
    remark?: string;
    repayTime?: string;
    returned?: number;
    type?: string;
    walletId?: string;
    walletName?: string;
  }

  export interface BudgetManagementInput {
    budgetType?: string;
    id?: string;
    startDate?: string;
  }

  export interface BudgetManagementOutput {
    accountBookBudgetInfo?: BudgetInformations;
    accountTypeList?: Array<AccountTypeOutputV2>;
    budgetTrendList?: Array<BudgetTrend>;
    budgetType?: string;
  }

  export interface CustomizeTypeReportListV3Output {
    avgByCount?: number;
    avgByDate?: number;
    count?: number;
    groupList?: Array<BookkeepingBillStatementDetailV3Output>;
    rankList?: Array<BookkeepingBillReportElementOutput>;
    sumMoney?: number;
  }

  export interface CycleBillAddInput {
    accountBookId?: string;
    accountTypeId?: string;
    cycleCount?: string;
    endDatetime?: string;
    imgList?: Array<string>;
    money?: number;
    remark?: string;
    repeatType?: number;
    startDatetime?: string;
    symbol?: string;
    title?: string;
    useTime?: string;
    walletId?: string;
  }

  export interface CycleBillOutput {
    accountBookId?: string;
    accountBookName?: string;
    accountTypeId?: string;
    accountTypeLogoUrl?: string;
    accountTypeName?: string;
    color?: string;
    coverName?: string;
    cycleCount?: number;
    endDatetime?: string;
    id?: string;
    imgList?: Array<string>;
    money?: number;
    nextCycleTime?: string;
    recordCount?: number;
    remark?: string;
    repeatType?: number;
    repeatValue?: number;
    startDatetime?: string;
    symbol?: string;
    title?: string;
    useTime?: string;
    walletId?: string;
    walletName?: string;
  }

  export interface CycleBillUpdateInput {
    accountBookId?: string;
    accountTypeId?: string;
    cycleCount?: string;
    endDatetime?: string;
    id?: string;
    imgList?: Array<string>;
    money?: number;
    remark?: string;
    repeatType?: number;
    startDatetime?: string;
    symbol?: string;
    title?: string;
    useTime?: string;
    walletId?: string;
  }

  export interface DateRangeRequest {
    endDate?: Date;
    startDate?: Date;
  }

  export interface DeleteBookkeepingBillInput {
    id?: string;
  }

  export interface GetAppletDataOutput {
    accountTypeList?: AccountTypeListOutput;
    walletDetail?: WalletDetailOutput;
  }

  export interface HasCompleteImportLogOutput {
    has?: boolean;
  }

  export interface HomepageOutput {
    monthList?: Array<BookkeepingBillByMonthResponse>;
  }

  export interface IdRequest {
    id: string;
  }

  export interface IdsRequest {
    ids: Array<string>;
  }

  export interface IsExistBillInput {
    accountBookId?: number;
    accountTypeId?: number;
    money?: number;
    symbol?: string;
    useTime?: Date;
    walletId?: number;
  }

  export interface IsExistBillOutput {
    isExist?: number;
  }

  export interface LocalTime {
    hour?: number;
    minute?: number;
    nano?: number;
    second?: number;
  }

  export interface RecommendSectionBillData {
    rows?: Array<BillExportDataOutput>;
    useableTimes?: BillExportDataOutput;
  }

  export interface RepayReceiveOutput {
    borrowLendId?: number;
    dateTime?: Date;
    id?: number;
    imgList?: Array<string>;
    money?: number;
    remark?: string;
    repay?: number;
    sort?: number;
    total?: number;
    type?: string;
    walletId?: number;
    walletName?: string;
  }

  export interface RepeatInput {
    name?: string;
    type?: string;
  }

  export interface RepeatOutput {
    isRepeat?: boolean;
  }

  export interface Rule {
    expression?: string;
    repeatValue?: number;
    type?: string;
  }

  export interface SearchBillByRangeDateInput {
    accountBookId?: string;
    isAllData?: boolean;
    queryBeginDate?: string;
    queryEndDate?: string;
    startDay?: string;
  }

  export interface SearchBookkeepingBillByMonthInput {
    accountBookId?: number;
    month?: number;
    year?: number;
  }

  export interface SearchBookkeepingBillByMonthOutput {
    date?: string;
    day?: string;
    dayList?: Array<BookkeepingBillOutput>;
    expend?: number;
    income?: number;
    surplus?: number;
    week?: string;
  }

  export interface SearchBookkeepingBillByMonthWithBankCardInput {
    accountBookId?: number;
    bankCardListOutput?: BillBankCardListOutput;
    month?: number;
    year?: number;
  }

  export interface SearchBookkeepingBillByMonthWithBankCardV2Input {
    accountBookId?: string;
    bankCardListOutput?: BillBankCardListOutput;
    isAllData?: boolean;
    month?: string;
    startDay?: string;
    year?: string;
  }

  export interface SearchIsInitWalletOutput {
    needInitWallet?: boolean;
  }

  export interface SetBudgetByMonthInput {
    money?: number;
    month?: number;
    year?: number;
  }

  export interface SortInput {
    ids?: Array<string>;
  }

  export interface SuperFolderReportListOutput {
    rankList?: Array<BookkeepingBillReportElementOutput>;
    sumMoney?: number;
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
    fromId?: number;
    fromVersion?: number;
    pageSize?: number;
    toVersion?: number;
  }

  export interface TrashListOutput {
    list?: Array<SearchBookkeepingBillByMonthOutput>;
  }

  export interface UpdateBookkeepingConfigOutput {
    config?: BookkeepingConfigOutput;
    finishedList?: Array<BookkeepingFinishedOutput>;
  }

  export interface UpdateBudgetInput {
    budget?: number;
    budgetType?: string;
    id?: string;
    startDate?: string;
  }

  export interface WalletAccountTypeOutput {
    balance?: number;
    walletAccountType?: string;
    walletList?: Array<WalletDetailV2Output>;
    isExpand?:boolean;
  }

  export interface WalletAddInput {
    balance?: number;
    bankCardNo?: string;
    bankName?: string;
    countBalance?: boolean;
    hidden?: boolean;
    name?: string;
    remark?: string;
    sort?: number;
    totalQuota?: number;
    type?: string;
  }

  export interface WalletAddOutput {
    balance?: number;
    bankCardId?: number;
    bankCardNo?: string;
    bankName?: string;
    billDay?: number;
    billPushState?: boolean;
    countBalance?: boolean;
    coverName?: string;
    hidden?: boolean;
    id?: number;
    isBankCard?: boolean;
    isDefault?: boolean;
    logoUrl?: string;
    mid?: number;
    name?: string;
    remark?: string;
    remindOffses?: Array<number>;
    remindTime?: string;
    repaymentDay?: number;
    repaymentDayType?: string;
    repaymentPushState?: boolean;
    sort?: number;
    totalQuota?: number;
    type?: string;
  }

  export interface WalletAddV3Input {
    balance?: string;
    bankCardNo?: string;
    bankName?: string;
    billDay?: number;
    billPushState?: boolean;
    countBalance?: boolean;
    hidden?: boolean;
    name?: string;
    remark?: string;
    remindOffses?: Array<number>;
    remindTime?: string;
    repaymentDay?: number;
    repaymentDayType?: string;
    repaymentPushState?: boolean;
    sort?: number;
    totalQuota?: string;
    type?: string;
  }

  export interface WalletBalanceLogUpdateInput {
    id: string;
    money?: string;
  }

  export interface WalletBillGroupListInput {
    state?: string;
    type?: string;
    walletBillGroupId?: string;
  }

  export interface WalletBillGroupListOutput {
    list?: Array<WalletBillGroupOutput>;
    pending?: number;
    returned?: number;
    total?: number;
  }

  export interface WalletBillGroupOutput {
    countBalance?: boolean;
    coverRemark?: string;
    id?: string;
    logoUrl?: string;
    money?: number;
    name?: string;
    pending?: number;
    remark?: string;
    returned?: number;
    type?: string;
    walletId?: string;
    walletName?: string;
  }

  export interface WalletBillGroupUpdateInput {
    countBalance?: boolean;
    id?: string;
    name?: string;
    remark?: string;
  }

  export interface WalletBorrowLendAddInput {
    borrowTime?: string;
    countBalance?: boolean;
    imgList?: Array<string>;
    money?: string;
    name?: string;
    remark?: string;
    repayTime?: string;
    type?: string;
    walletBillGroupId?: string;
    walletId?: string;
  }

  export interface WalletBorrowLendAddOutput {
    billGlobalAddType?: string;
    borrowTime?: Date;
    created?: Date;
    id?: number;
    imgList?: Array<string>;
    logoUrl?: string;
    money?: number;
    name?: string;
    remark?: string;
    repayTime?: Date;
    type?: string;
    userId?: number;
    walletBillGroupId?: number;
    walletId?: number;
    walletName?: string;
  }

  export interface WalletBorrowLendListInput {
    state?: string;
    type?: string;
  }

  export interface WalletBorrowLendOutput {
    balance?: number;
    logoUrl?: string;
    name?: string;
    type?: string;
  }
  export interface WalletBorrowLendDeleteOutput {
    hasBillGroup?: boolean;
  }

  export interface WalletBorrowLendRepayAddInput {
    borrowLendId?: number;
    imgList?: Array<string>;
    money?: number;
    remark?: string;
    repayTime?: Date;
    type?: string;
    walletId?: number;
  }

  export interface WalletBorrowLendRepayAddV2Input {
    imgList?: Array<string>;
    money?: string;
    remark?: string;
    repayTime?: string;
    type?: string;
    walletBillGroupId?: string;
    borrowLendId?: string;
    walletId?: string;
  }

  export interface WalletBorrowLendRepayUpdateInput {
    borrowLendId?: number;
    id?: string;
    imgList?: Array<string>;
    money?: string;
    remark?: string;
    repayTime?: string;
    type?: string;
    walletId?: string;
  }

  export interface WalletBorrowLendRepayUpdateV2Input {
    id?: string;
    imgList?: Array<string>;
    money?: string;
    remark?: string;
    repayTime?: string;
    type?: string;
    walletBillGroupId?: string;
    walletId?: string;
    countBalance?: boolean;
    name?: string;
  }

  export interface WalletBorrowLendUpdateInput {
    borrowTime?: string;
    id?: string;
    walletBillGroupId?: string;
    imgList?: Array<string>;
    money?: string;
    name?: string;
    remark?: string;
    repayTime?: string;
    type?: string;
    walletId?: string;
    countBalance?: boolean;
  }

  export interface WalletCurrentData {
    created?: Date;
    ip?: string;
    walletId?: number;
    walletName?: string;
  }

  export interface WalletData {
    balance?: number;
    bankCardId?: number;
    bankCardNo?: string;
    bankName?: string;
    created?: Date;
    id?: number;
    ip?: string;
    isBankCard?: boolean;
    isDefault?: boolean;
    logo?: string;
    logoUrl?: string;
    logoWhite?: string;
    logoWhiteUrl?: string;
    name?: string;
    remark?: string;
    sort?: number;
    type?: string;
    updated?: Date;
  }

  export interface WalletDeleteInput {
    id?: string;
  }

  export interface WalletDeleteMoveInput {
    id?: string;
    newId?: string;
  }

  export interface WalletDetailInput {
    id?: string;
  }

  export interface WalletDetailOutput {
    balance?: number;
    bankCardId?: number;
    bankCardNo?: string;
    bankName?: string;
    countBalance?: boolean;
    coverName?: string;
    haveRecord?: boolean;
    id?: string;
    isBankCard?: boolean;
    isDefault?: boolean;
    logo?: string;
    logoUrl?: string;
    logoWhite?: string;
    logoWhiteUrl?: string;
    mid?: number;
    name?: string;
    remark?: string;
    sort?: number;
    type?: string;
  }

  export interface WalletDetailV2Output {
    allExpend?: number;
    allIncome?: number;
    balance?: number;
    bankCardId?: number;
    bankCardNo?: string;
    bankName?: string;
    billDay?: number;
    billPushState?: boolean;
    cost?: number;
    countBalance?: boolean;
    coverName?: string;
    haveRecord?: boolean;
    hidden?: boolean;
    id?: string;
    isBankCard?: boolean;
    isDefault?: boolean;
    logo?: string;
    logoUrl?: string;
    logoWhite?: string;
    logoWhiteUrl?: string;
    mid?: number;
    name?: string;
    quota?: number;
    remark?: string;
    remindOffses?: Array<number>;
    remindTime?: number;
    repaymentDay?: number;
    repaymentDayType?: string;
    repaymentPushState?: boolean;
    sort?: number;
    totalQuota?: number;
    type?: string;
    walletType?: number;
    isSelect?: boolean;
  }

  export interface WalletListBalancePageOutput {
    id?: number;
    leftBalance?: number;
    monthList?: Array<WalletListByMonthOutput>;
    rightBalance?: number;
    totalBalance?: number;
    walletName?: string;
  }

  export interface WalletListByDayOutput {
    date?: string;
    day?: Date;
    dayList?: Array<WalletListItemOutput>;
    expend?: number;
    income?: number;
    surplus?: number;
    week?: string;
  }

  export interface WalletListByMonthOutput {
    day?: string;
    expend?: number;
    income?: number;
    list?: Array<WalletListByDayOutput>;
    surplus?: number;
    isExpand?: boolean;
  }

  export interface WalletListDetailByMonthInput {
    date?: Date;
    walletId?: string;
  }

  export interface WalletListItemOutput {
    accountBookId?: string;
    accountBookName?: string;
    accountTypeId?: string;
    accountTypeLogo?: string;
    accountTypeLogoUrl?: string;
    accountTypeName?: string;
    billRecordType?: string;
    billRecordTypeDesc?: string;
    borrowLendId?: string;
    borrowTime?: string;
    canEdit?: boolean;
    color?: string;
    created?: Date;
    dataType?: string;
    fromWalletId?: string;
    fromWalletLogoUrl?: string;
    fromWalletName?: string;
    id?: string;
    imgList?: Array<string>;
    importRemark?: string;
    mid?: number;
    money?: number;
    remark?: string;
    repayTime?: string;
    showMinute?: boolean;
    symbol?: string;
    title?: string;
    toWalletId?: string;
    toWalletLogoUrl?: string;
    toWalletName?: string;
    useTime?: string;
    userId?: number;
    walletBillGroupId?: string;
    walletBillGroupName?: string;
    walletId?: string;
    walletLogo?: string;
    walletLogoUrl?: string;
    walletName?: string;
    importBillDataType?: string;
    countBalance?: boolean;
  }

  export interface WalletListOutput {
    totalAssets?: number;
    walletList?: Array<WalletDetailOutput>;
  }

  export interface WalletListV2Output {
    asset?: number;
    availableAsset?: number;
    borrow?: WalletBorrowLendOutput;
    debt?: number;
    lend?: WalletBorrowLendOutput;
    totalAssets?: number;
    walletList?: Array<WalletDetailV2Output>;
  }

  export interface WalletListV3Output {
    asset?: number;
    availableAsset?: number;
    borrow?: WalletBorrowLendOutput;
    debt?: number;
    lend?: WalletBorrowLendOutput;
    totalAssets?: number;
    walletTypeList?: Array<WalletAccountTypeOutput>;
  }

  export interface WalletSortV3Input {
    sort?: Array<number>;
  }

  export interface WalletTransferLogAddInput {
    fromWalletId?: string;
    imgList?: Array<string>;
    money?: number;
    remark?: string;
    title?: string;
    toWalletId?: string;
    useTime?: string;
  }

  export interface WalletTransferLogOutput {
    created?: Date;
    fromWalletId?: number;
    fromWalletName?: string;
    id?: number;
    imgList?: Array<string>;
    money?: number;
    remark?: string;
    title?: string;
    toWalletId?: number;
    toWalletName?: string;
    useTime?: Date;
    userId?: number;
  }

  export interface WalletTransferLogUpdateInput {
    fromWalletId?: number;
    id?: number;
    imgList?: Array<string>;
    money?: number;
    remark?: string;
    title?: string;
    toWalletId?: number;
    useTime?: Date;
  }

  export interface WalletUpdateInput {
    balance?: number;
    bankCardNo?: string;
    bankName?: string;
    billDay?: number;
    billPushState?: boolean;
    countBalance?: boolean;
    hidden?: boolean;
    id?: number;
    name?: string;
    remark?: string;
    remindOffses?: Array<number>;
    remindTime?: string;
    repaymentDay?: number;
    repaymentDayType?: string;
    repaymentPushState?: boolean;
    sort?: number;
    totalQuota?: number;
    type?: string;
  }

  export interface WalletUpdateOutput {
    balance?: number;
    bankCardId?: number;
    bankCardNo?: string;
    bankName?: string;
    billDay?: number;
    billPushState?: boolean;
    cost?: number;
    countBalance?: boolean;
    coverName?: string;
    haveRecord?: boolean;
    hidden?: boolean;
    id?: number;
    isBankCard?: boolean;
    isDefault?: boolean;
    logo?: string;
    logoUrl?: string;
    logoWhite?: string;
    logoWhiteUrl?: string;
    mid?: number;
    name?: string;
    quota?: number;
    remark?: string;
    remindOffses?: Array<number>;
    remindTime?: string;
    repaymentDay?: number;
    repaymentDayType?: string;
    repaymentPushState?: boolean;
    sort?: number;
    totalQuota?: number;
    type?: string;
    walletType?: number;
  }

  export interface WalletUpdateV3Input {
    balance?: string;
    bankCardNo?: string;
    bankName?: string;
    billDay?: number;
    billPushState?: boolean;
    countBalance?: boolean;
    hidden?: boolean;
    id?: string;
    name?: string;
    remark?: string;
    remindOffses?: Array<number>;
    remindTime?: string;
    repaymentDay?: number;
    repaymentDayType?: string;
    repaymentPushState?: boolean;
    sort?: number;
    totalQuota?: string;
    type?: string;
  }

  export interface AllBudgets {
    monthBudget?: number;
    quarterBudget?: number;
    weekBudget?: number;
    yearBudget?: number;
  }

  export interface BookkeepingBillByMonthResponse {
    bookId?: number;
    bookImageUrl?: string;
    bookName?: string;
    bookNameBgColor?: string;
    bookNameBgColorAlpha?: string;
    bookNameTextColor?: string;
    expend?: number;
    firstDayOfMonth?: Date;
    income?: number;
    list?: Array<SearchBookkeepingBillByMonthOutput>;
    monthBudget?: BugetDetail;
    surplus?: number;
  }

  export interface HomepageUsingPOSTRequestBody {
    accountBookId?: number;
    bankCardListOutput?: BillBankCardListOutput;
    currentPage: number;
    isAllData?: boolean;
    month?: number;
    pageSize: number;
    pageType?: string;
    startDay?: string;
    year?: number;
  }

  export interface BookKeepingPageOne {
    billCount?: number;
    billDayCount?: number;
  }

  export interface BookKeepingPageTwo {
    expend?: number;
    firstExpendClassifyAmount?: number;
    firstExpendClassifyName?: string;
    firstIncomeClassifyName?: string;
    income?: number;
    lend?: number;
  }

  export interface BookKeepingPageThree {
    firstExpendDay?: Date;
    firstExpendDayAmount?: number;
    firstExpendMonth?: Date;
    firstExpendMonthAmount?: number;
    top5ClassifyName?: Array<string>;
  }

  export interface BudgetInformations {
    budget?: number;
    budgetPercent?: string;
    budgetType?: string;
    expend?: number;
    remainingBudget?: number;
    remainingBudgetSymbol?: string;
    spendQuantity?: number;
  }

  export interface BugetDetail {
    budget?: number;
    budgetInfo?: BudgetInformations;
    budgetType?: string;
    money?: number;
    symbol?: string;
  }

  export interface BudgetTrend {
    date?: string;
    expend?: number;
    remainingBudget?: number;
    totalExpend?: number;
  }
}
