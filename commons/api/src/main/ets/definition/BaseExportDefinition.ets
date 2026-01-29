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

export namespace BaseExportDefinition {
  export interface AccountTypeOutput {
    iconColor?: string;
    iconUrl?: string;
    name?: string;
  }

  export interface AccountTypeOutputV2 {
    appLogo?: string;
    appLogoUrl?: string;
    appSelected?: string;
    appSelectedUrl?: string;
    color?: string;
    folderType?: string;
    iconId?: number;
    iconType?: string;
    id?: string;
    linkedType?: string;
    logo?: string;
    logoSelected?: string;
    logoSelectedUrl?: string;
    logoUrl?: string;
    name?: string;
    superClassifyList?: AccountTypeOutputV2;
    superFolderId?: number;

  }

  export interface AccountTypePreviewOutput {
    expendAccountTypeCount?: number;
    expendAccountTypes?: Array<AccountTypeOutputV2>;
    incomeAccountTypeCount?: number;
    incomeAccountTypes?: Array<AccountTypeOutputV2>;
    totalAccountTypeCount?: number;
  }

  export interface AddRelationInput {
    accountBookId: string;
    accountTypeCustomizeId: string;
    keyword: string;
    source: string;
  }

  export interface BatchUpdateAccountTypeInput {
    accountTypeList?: Array<ImportLinkedInput>;
    importBillLogId?: string;
    newAccountTypeId?: string   ;
  }

  export interface BatchUpdateBillAccountTypeInput {
    billIdList?: Array<string>;
    importBillLogId?: string;
    newAccountTypeId?: string;
  }

  export interface BatchUpdateBillWalletInput {
    billIdList?: Array<string>;
    importBillLogId?: string;
    newWalletId?: string;
  }

  export interface BatchUpdateExceptionBillInput {
    accountType?: string;
    accountTypeId?: number;
    ids?: Array<string>;
    importBillLogId?: string;
  }

  export interface BatchUpdateWalletInput {
    importBillLogId?: string;
    newWalletId?: string;
    walletList?: Array<ImportLinkedInput>;
  }

  export interface BillCheckInput {
    check: boolean;
    id?: string;
  }

  export interface BillItemOutput {
    iconColor?: string;
    iconUrl?: string;
    money?: number;
    subTitle?: string;
    title?: string;
  }

  export interface BooleanResponse {
    flag?: boolean;
  }

  export interface ExportDataOutput {
    beginTime?: string;
    endTime?: string;
  }

  export interface GetConfirmPreviewOutput {
    billCount?: number;
    billEndTime?: string;
    billExceptionCount?: number;
    billSeletedCount?: number;
    billStartTime?: string;
  }

  export interface GetImportAccountTypeMappingOutput {
    importAccountTypeMappings?: Array<ImportBillClassifyRelationOutput>;
    source?: string;
  }

  export interface GetImportBillDetailInput {
    id?: string;
    importBillDataType?: string;
  }

  export interface GetImportBillPageInput {
    currentPage: number;
    importBillLogId?: string;
    keyword?: string;
    linkedId?: string;
    linkedType?: string;
    pageSize: number;
    stage?: number;
  }

  export interface GetImportPreviewDataOutput {
    billItems?: Array<BillItemOutput>;
    expendAccountTypeCount?: number;
    expendAccountTypes?: Array<AccountTypeOutput>;
    expendCount?: number;
    incomeAccountTypeCount?: number;
    incomeAccountTypes?: Array<AccountTypeOutput>;
    incomeCount?: number;
    walletCount?: number;
    wallets?: Array<WalletOutput>;
  }

  export interface GetImportSummaryOutput {
    billCount?: number;
    billEndTime?: string;
    billStartTime?: string;
    expendAccountTypeCount?: number;
    incomeAccountTypeCount?: number;
    walletCount?: number;
  }

  export interface GetImportWalletMappingOutput {
    importWalletMappings?: Array<ImportWalletMapping>;
    source?: string;
    unknowBanks?: Array<WalletOutputV2>;
  }

  export interface IdData {
    id?: string;
  }

  export interface IdRequest {
    id: string;
  }

  export interface IdResponse {
    code?: number;
    data?: IdData;
    msg?: string;
  }

  export interface ImportBillClassifyRelationOutput {
    accountType?: string;
    classify?: AccountTypeOutputV2;
    id?: string;
    keyword?: string;
    source?: string;
  }

  export interface ImportBillDetailOutput {
    accountTypeId?: string;
    accountTypeLinkedType?: string;
    accountTypeLogo?: string;
    accountTypeLogoUrl?: string;
    accountTypeName?: string;
    billRecordType?: string;
    billRecordTypeDesc?: string;
    check?: boolean;
    color?: string;
    dataType?: string;
    duplicated?: boolean;
    id?: string;
    importBillDataType?: string;
    importRemark?: string;
    money?: number;
    remark?: string;
    showMinute?: boolean;
    symbol?: string;
    title?: string;
    useTime?: string;
    userId?: number;
    walletId?: string;
    walletLinkedType?: string;
    walletLogoUrl?: string;
    walletName?: string;
    walletType?: string;
  }

  export interface ImportBillInput {
    accountBookId: string;
    fileName: string;
    fileUrl: string;
    fileUrlLastName?: string;
    importSourceType: string;
  }

  export interface ImportBillOutput {
    check?: boolean;
    color?: string;
    duplicated?: boolean;
    id?: string;
    importBillDataType?: string;
    logoSelectedUrl?: string;
    money?: number;
    subTitle?: string;
    title?: string;
    useTime?: string;
    walletName?: string;

    //自己添加的变量
    isSelect:boolean
  }

  export interface ImportHistoryOutput {
    id?: string;
    subTitle?: string;
    title?: string;
  }

  export interface ImportLinkedInput {
    id?: string;
    linkedType?: string;
  }

  export interface ImportSourceTypeOutput {
    iconUrl?: string | Resource;
    importSourceType?: string;
    name?: string;
  }

  export interface ImportWalletMapping {
    keyword?: string;
    toWallet?: WalletOutputV2;
  }

  export interface PaginableRequest {
    currentPage: number;
    keyword?: string;
    pageSize: number;
  }

  export interface RecommendSectionData {
    rows?: Array<ExportDataOutput>;
    useableTimes?: ExportDataOutput;
  }

  export interface RelationInput {
    accountBookId: string;
    source: string;
  }

  export interface UpdateImportAccountTypeMappingInput {
    id?: string;
    importBillLogId?: string;
    keyword?: string;
    linkedType?: string;
    newAccountTypeId?: string;
  }

  export interface UpdateImportBillDetailInput {
    accountTypeId?: string;
    id?: string;
    importBillDataType?: string;
    money?: number;
    remark?: string;
    showMinute?: boolean;
    useTime?: string;
    walletId?: string;
    symbol?: string;
    accountBookId?: string;
    title?: string;
  }

  export interface UpdateImportWalletMappingInput {
    id?: string;
    importBillLogId?: string;
    keyword?: string;
    linkedType?: string;
    newWalletId?: string;
  }

  export interface UpdateImportWalletTypeInput {
    id?: number;
    linkedType?: string;
    walletType?: string;
  }

  export interface UpdateRelationInput {
    accountTypeCustomizeId: string;
    id: string;
    keyword: string;
  }

  export interface WalletOutput {
    iconUrl?: string;
    name?: string;
  }

  export interface WalletOutputV2 {
    id?: string;
    linkedType?: string;
    logoUrl?: string;
    name?: string;
    type?: string;
  }

  export interface WalletPreviewOutput {
    totalWalletCount?: number;
    wallets?: Array<WalletOutputV2>;
  }
}
