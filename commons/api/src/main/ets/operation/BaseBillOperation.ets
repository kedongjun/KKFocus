import { get, post, put, remove, options, head, patch } from 'utils';
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
} from './../definition/BaseDefinition';
import { BaseBillDefinition } from './../definition/BaseBillDefinition';
import { BaseBillUrlConstant } from './../constant/BaseBillUrlConstant';
import { Endpoint } from 'utils/src/main/ets/common/NetConstants';

export namespace BaseBillOperation {
  export class BillGlobalAddController {
    static async baseBillApplethistoryPost(input: BaseBillDefinition.BillAppletHistoryInput, userId: number):Promise<RowResponse<Array<BaseBillDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseBillDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseBillDefinition.AppletHistoryResponse>>>(
        BaseBillUrlConstant.BASE_BILL_APPLET_HISTORY,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class BillTransferController {
    static async baseBillV1ExportdataPost(condition: BaseBillDefinition.BillTransferConditionV2, userId: number):Promise<ApiResponse<BaseBillDefinition.BillExportData> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BillExportData> | null | undefined = await post<ApiResponse<BaseBillDefinition.BillExportData>>(
        BaseBillUrlConstant.BASE_BILL_V1_EXPORT_DATA,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        condition
      );

      return res;
    }

    static async baseBillV1ImportdataPost(data: BaseBillDefinition.BillExportData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V1_IMPORT_DATA,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        data
      );

      return res;
    }
  }


  export class AccountBookControllerV2 {
    static async baseBillV2AccountUBookUDeleteUAllPost(input: BaseBillDefinition.AccountBookDeleteInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V2_ACCOUNT_BOOK_DELETE_ALL_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }
  }


  export class AccountBookCurrentController {
    static async baseBillGetUAccountUBookUCurrentPost(channelType: string, userId?: number):Promise<ApiResponse<BaseBillDefinition.AccountBookDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountBookDetailOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountBookDetailOutput>>(
        BaseBillUrlConstant.BASE_BILL_GET_ACCOUNT_BOOK_CURRENT_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId
        },
      );

      return res;
    }

    static async baseBillUpdateaccountbookcurrentPost(input: BaseBillDefinition.AccountBookCurrentUpdateInput, userId?: number):Promise<ApiResponse<BaseBillDefinition.AccountBookCurrentOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountBookCurrentOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountBookCurrentOutput>>(
        BaseBillUrlConstant.BASE_BILL_UPDATE_ACCOUNT_BOOK_CURRENT,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2GetUAccountUBookUCurrentPost( input: BaseBillDefinition.AccountBookCurrentInput):Promise<ApiResponse<BaseBillDefinition.AccountBookDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountBookDetailOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountBookDetailOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_GET_ACCOUNT_BOOK_CURRENT_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }
  }


  export class WalletBorrowLendV2Controller {
    static async baseBillV2BillgroupdeletePost(input: BaseBillDefinition.IdRequest, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V2_BILL_GROUP_DELETE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2BillgroupupdatePost(input: BaseBillDefinition.WalletBillGroupUpdateInput, ip?: string, userId?: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseBillUrlConstant.BASE_BILL_V2_BILL_GROUP_UPDATE,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2BorrowlendaddPost(input: BaseBillDefinition.WalletBorrowLendAddInput, ip?: string, userId?: number):Promise<ApiResponse<BaseBillDefinition.WalletBorrowLendAddOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletBorrowLendAddOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletBorrowLendAddOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_BORROW_LEND_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2BorrowlenddeletePost(input: BaseBillDefinition.IdRequest, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V2_BORROW_LEND_DELETE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2BorrowlendupdatePost(input: BaseBillDefinition.WalletBorrowLendUpdateInput, userId?: number):Promise<ApiResponse<BaseBillDefinition.WalletBorrowLendAddOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletBorrowLendAddOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletBorrowLendAddOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_BORROW_LEND_UPDATE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2GetborrowlistPost(input: BaseBillDefinition.WalletBorrowLendListInput, userId?: number):Promise<ApiResponse<BaseBillDefinition.WalletBillGroupListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletBillGroupListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletBillGroupListOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_GET_BORROW_LIST,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2GetgroupborrowlistPost(input: BaseBillDefinition.WalletBillGroupListInput, userId?: number):Promise<ApiResponse<BaseBillDefinition.BorrowLendListV2Output> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BorrowLendListV2Output> | null | undefined = await post<ApiResponse<BaseBillDefinition.BorrowLendListV2Output>>(
        BaseBillUrlConstant.BASE_BILL_V2_GET_GROUP_BORROW_LIST,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class AccountBookController {
    static async baseBillAccountUBookUAddPost(input: BaseBillDefinition.AccountBookAddInput):Promise<ApiResponse<BaseBillDefinition.AccountBookAddOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountBookAddOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountBookAddOutput>>(
        BaseBillUrlConstant.BASE_BILL_ACCOUNT_BOOK_ADD_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillAccountUBookUDeleteUAllPost(input: BaseBillDefinition.AccountBookDeleteInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_ACCOUNT_BOOK_DELETE_ALL_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillAccountUBookUDeleteURemovePost(input: BaseBillDefinition.AccountBookDeleteMoveInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_ACCOUNT_BOOK_DELETE_REMOVE_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillAccountUBookUDetailPost(input: BaseBillDefinition.AccountBookDetailInput, userId: number):Promise<ApiResponse<BaseBillDefinition.AccountBookDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountBookDetailOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountBookDetailOutput>>(
        BaseBillUrlConstant.BASE_BILL_ACCOUNT_BOOK_DETAIL_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillAccountUBookUGetURepeatPost(input: BaseBillDefinition.RepeatInput, userId: number):Promise<ApiResponse<BaseBillDefinition.RepeatOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.RepeatOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.RepeatOutput>>(
        BaseBillUrlConstant.BASE_BILL_ACCOUNT_BOOK_GET_REPEAT_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillAccountUBookUListPost(userId: number):Promise<ApiResponse<BaseBillDefinition.AccountBookListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountBookListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountBookListOutput>>(
        BaseBillUrlConstant.BASE_BILL_ACCOUNT_BOOK_LIST_URL,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseBillAccountUBookUUpdatePost(input: BaseBillDefinition.AccountBookUpdateInput):Promise<ApiResponse<BaseBillDefinition.AccountBookDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountBookDetailOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountBookDetailOutput>>(
        BaseBillUrlConstant.BASE_BILL_ACCOUNT_BOOK_UPDATE_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillSortUAccountUBookPost(input: BaseBillDefinition.SortInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_SORT_ACCOUNT_BOOK_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV2AccountUBookUAddPost(input: BaseBillDefinition.AccountBookAddV2Input):Promise<ApiResponse<BaseBillDefinition.AccountBookAddOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountBookAddOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountBookAddOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_ACCOUNT_BOOK_ADD_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV2AccountUBookUListPost(channelType: string, input: BaseBillDefinition.AccountBookListInput, userId: number):Promise<ApiResponse<BaseBillDefinition.AccountBookListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountBookListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountBookListOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_ACCOUNT_BOOK_LIST_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV3AccountUBookUListPost(input: BaseBillDefinition.AccountBookListByStartDayInput):Promise<ApiResponse<BaseBillDefinition.AccountBookListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountBookListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountBookListOutput>>(
        BaseBillUrlConstant.BASE_BILL_V3_ACCOUNT_BOOK_LIST_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }
  }


  export class BillStatisticsV3Controller {
    static async baseBillV3ReportSuperUFolderPost(input: BaseBillDefinition.BookkeepingBillReportDetailV2Input, userId: number):Promise<ApiResponse<BaseBillDefinition.SuperFolderReportListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.SuperFolderReportListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.SuperFolderReportListOutput>>(
        BaseBillUrlConstant.BASE_BILL_V3_REPORT_SUPER_FOLDER_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV3ReportbyaccounttypePost(input: BaseBillDefinition.BookkeepingBillReportByCustomizeTypeV3Input):Promise<ApiResponse<BaseBillDefinition.CustomizeTypeReportListV3Output> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.CustomizeTypeReportListV3Output> | null | undefined = await post<ApiResponse<BaseBillDefinition.CustomizeTypeReportListV3Output>>(
        BaseBillUrlConstant.BASE_BILL_V3_REPORT_BY_ACCOUNT_TYPE,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV3ReportUDataPost(input: BaseBillDefinition.BookkeepingBillReportV3Input):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillReportV3Output> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillReportV3Output> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillReportV3Output>>(
        BaseBillUrlConstant.BASE_BILL_V3_REPORT_DATA_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV3ReportUDataUDetailPost(input: BaseBillDefinition.BookkeepingBillReportDetailV3Input):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillReportDetailByMonthListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillReportDetailByMonthListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillReportDetailByMonthListOutput>>(
        BaseBillUrlConstant.BASE_BILL_V3_REPORT_DATA_DETAIL_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }
  }


  export class BookkeepingController {
    static async baseBillAddbillbyintentPost(channelType: string, input: BaseBillDefinition.BookkeepingBillIntentInput, ip: string, userId: number):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillIntendOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillIntendOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillIntendOutput>>(
        BaseBillUrlConstant.BASE_BILL_ADD_BILL_BY_INTENT,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillAddUBookkeepingUBillPost( input: BaseBillDefinition.BookkeepingBillInput):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillOutput>>(
        BaseBillUrlConstant.BASE_BILL_ADD_BOOKKEEPING_BILL_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillAddUFinishPost(input: BaseBillDefinition.AddFinishedInput, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseBillUrlConstant.BASE_BILL_ADD_FINISH_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillBatchaddbookkeepingbillPost(channelType: string, input: BaseBillDefinition.BatchAddInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_BATCH_ADD_BOOKKEEPING_BILL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillBillsubtitlePost(channelType: string, userId: number):Promise<ApiResponse<BaseBillDefinition.BillQueryIntentOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BillQueryIntentOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BillQueryIntentOutput>>(
        BaseBillUrlConstant.BASE_BILL_BILL_SUB_TITLE,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId
        },
      );

      return res;
    }

    static async baseBillDeleteUBookkeepingUBillPost(input: BaseBillDefinition.DeleteBookkeepingBillInput):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseBillUrlConstant.BASE_BILL_DELETE_BOOKKEEPING_BILL_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillGetbilldetailbyidPost(input: BaseBillDefinition.BillIdInput, userId: number):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillOutput>>(
        BaseBillUrlConstant.BASE_BILL_GET_BILL_DETAIL_BY_ID,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillGetUConfigUInfoPost():Promise<ApiResponse<BaseBillDefinition.BookkeepingInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingInfoOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingInfoOutput>>(
        BaseBillUrlConstant.BASE_BILL_GET_CONFIG_INFO_URL,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseBillHascompleteimportlogPost(userId: number):Promise<ApiResponse<BaseBillDefinition.HasCompleteImportLogOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.HasCompleteImportLogOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.HasCompleteImportLogOutput>>(
        BaseBillUrlConstant.BASE_BILL_HAS_COMPLETE_IMPORT_LOG,
        {
        },
        {
        },
        {
            "user_id": userId
        },
      );

      return res;
    }

    static async baseBillIsexistbillPost(channelType: string, input: BaseBillDefinition.IsExistBillInput, userId: number):Promise<ApiResponse<BaseBillDefinition.IsExistBillOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.IsExistBillOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.IsExistBillOutput>>(
        BaseBillUrlConstant.BASE_BILL_IS_EXIST_BILL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillQueryintentPost(intentInput: BaseBillDefinition.BillQueryIntentInput):Promise<ApiResponse<BaseBillDefinition.BillQueryIntentOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BillQueryIntentOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BillQueryIntentOutput>>(
        BaseBillUrlConstant.BASE_BILL_QUERY_INTENT,
        {
        },
        {
        },
        {
        },
        intentInput
      );

      return res;
    }

    static async baseBillReportUDataPost(input: BaseBillDefinition.BookkeepingBillReportInput, ip: string, userId: number):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillReportOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillReportOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillReportOutput>>(
        BaseBillUrlConstant.BASE_BILL_REPORT_DATA_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillReportUDataUDetailPost(input: BaseBillDefinition.BookkeepingBillReportDetailInput, userId: number):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillReportDetailWithDayListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillReportDetailWithDayListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillReportDetailWithDayListOutput>>(
        BaseBillUrlConstant.BASE_BILL_REPORT_DATA_DETAIL_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillSearchUBookkeepingUBillUByUMonthPost(input: BaseBillDefinition.SearchBookkeepingBillByMonthInput, ip: string, userId: number):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillByMonthResponse> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillByMonthResponse> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillByMonthResponse>>(
        BaseBillUrlConstant.BASE_BILL_SEARCH_BOOKKEEPING_BILL_BY_MONTH_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillSearchUBookkeepingUBillUByUMonthv2Post(channelType: string, input: BaseBillDefinition.SearchBookkeepingBillByMonthWithBankCardInput, ip: string, userId: number):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillByMonthResponse> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillByMonthResponse> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillByMonthResponse>>(
        BaseBillUrlConstant.BASE_BILL_SEARCH_BOOKKEEPING_BILL_BY_MONTH_V2_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillSearchUIsUInitUWalletPost(ip: string, userId: number):Promise<ApiResponse<BaseBillDefinition.SearchIsInitWalletOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.SearchIsInitWalletOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.SearchIsInitWalletOutput>>(
        BaseBillUrlConstant.BASE_BILL_SEARCH_IS_INIT_WALLET_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
      );

      return res;
    }

    static async baseBillSetUBudgetUByUMonthPost(input: BaseBillDefinition.SetBudgetByMonthInput, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseBillUrlConstant.BASE_BILL_SET_BUDGET_BY_MONTH_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillSyncUConfigUDataPost(input: BaseBillDefinition.SyncDataRequest):Promise<RowResponse<Array<BaseBillDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseBillDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseBillDefinition.SyncDataAppletResponse>>>(
        BaseBillUrlConstant.BASE_BILL_SYNC_CONFIG_DATA_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillSyncUDataPost(input: BaseBillDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseBillDefinition.BookkeepingBillSyncOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseBillDefinition.BookkeepingBillSyncOutput>> | null | undefined = await post<RowResponse<Array<BaseBillDefinition.BookkeepingBillSyncOutput>>>(
        BaseBillUrlConstant.BASE_BILL_SYNC_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillSyncUFinishUDataPost(input: BaseBillDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseBillDefinition.SyncDataAppletFinishResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseBillDefinition.SyncDataAppletFinishResponse>> | null | undefined = await post<RowResponse<Array<BaseBillDefinition.SyncDataAppletFinishResponse>>>(
        BaseBillUrlConstant.BASE_BILL_SYNC_FINISH_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillTodoUViewUListPost(input: BaseBillDefinition.BillTodoViewInput, userId: number):Promise<ApiResponse<BaseBillDefinition.BillTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BillTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BillTodoViewListOutput>>(
        BaseBillUrlConstant.BASE_BILL_TODO_VIEW_LIST_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillUpdateUBookkeepingUBillPost(input: BaseBillDefinition.BookkeepingBillAddInput):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillOutput>>(
        BaseBillUrlConstant.BASE_BILL_UPDATE_BOOKKEEPING_BILL_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillUpdateUConfigPost(input: BaseBillDefinition.BookkeepingConfigInput):Promise<ApiResponse<BaseBillDefinition.UpdateBookkeepingConfigOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.UpdateBookkeepingConfigOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.UpdateBookkeepingConfigOutput>>(
        BaseBillUrlConstant.BASE_BILL_UPDATE_CONFIG_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV1DaterangecountPost(input: BaseBillDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseBillDefinition.BillCountOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BillCountOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BillCountOutput>>(
        BaseBillUrlConstant.BASE_BILL_V1_DATE_RANGE_COUNT,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV1ExportHasMBillMDataPost(dto: BaseBillDefinition.BookkeepingBillExportDataInput, userId: number):Promise<ApiResponse<BaseBillDefinition.BooleanDataOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BooleanDataOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BooleanDataOutput>>(
        BaseBillUrlConstant.BASE_BILL_V1_EXPORT_HAS_BILL_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async baseBillV1ExportRecommendMSectionMBillMDataPost(userId?: number):Promise<ApiResponse<BaseBillDefinition.RecommendSectionBillData> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.RecommendSectionBillData> | null | undefined = await post<ApiResponse<BaseBillDefinition.RecommendSectionBillData>>(
        BaseBillUrlConstant.BASE_BILL_V1_EXPORT_RECOMMEND_SECTION_BILL_DATA_URL,
        {
        },
        {
        },
        {
            // "user_id": userId
        },
      );

      return res;
    }

    static async baseBillV1GetbookkeepingbillcountPost(userId: number):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillCountOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillCountOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillCountOutput>>(
        BaseBillUrlConstant.BASE_BILL_V1_GET_BOOKKEEPING_BILL_COUNT,
        {
        },
        {
        },
        {
            "user_id": userId
        },
      );

      return res;
    }

    static async baseBillV1GetremindelementsPost(input: BaseBillDefinition.BillTodoViewInput, userId: number):Promise<ApiResponse<BaseBillDefinition.BillTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BillTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BillTodoViewListOutput>>(
        BaseBillUrlConstant.BASE_BILL_V1_GET_REMIND_ELEMENTS,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV1HistorydatacountPost(userId: number):Promise<ApiResponse<Map<string, number>> | null | undefined> {
      let res: ApiResponse<Map<string, number>> | null | undefined = await post<ApiResponse<Map<string, number>>>(
        BaseBillUrlConstant.BASE_BILL_V1_HISTORY_DATA_COUNT,
        {
        },
        {
        },
        {
            "user_id": userId
        },
      );

      return res;
    }

    static async baseBillV1SelectMByMIdsPost(ids: BaseBillDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BaseBillDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseBillDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseBillDefinition.AppletHistoryResponse>>>(
        BaseBillUrlConstant.BASE_BILL_V1_SELECT_BY_IDS_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        ids
      );

      return res;
    }

    static async baseBillV1SelectMByMKeywordPost(input: BaseBillDefinition.BookkeepingBillSearchByKeywordInput, userId: number):Promise<RowResponse<Array<BaseBillDefinition.BookkeepingBillOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseBillDefinition.BookkeepingBillOutput>> | null | undefined = await post<RowResponse<Array<BaseBillDefinition.BookkeepingBillOutput>>>(
        BaseBillUrlConstant.BASE_BILL_V1_SELECT_BY_KEYWORD_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV2AddbillbyintentPost(input: BaseBillDefinition.BookkeepingBillIntentInput):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillIntendOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillIntendOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillIntendOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_ADD_BILL_BY_INTENT,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }
  }


  export class WalletTransferLogController {
    static async baseBillWallettransferlogaddPost(input: BaseBillDefinition.WalletTransferLogAddInput, ip?: string, userId?: number):Promise<ApiResponse<BaseBillDefinition.WalletTransferLogOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletTransferLogOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletTransferLogOutput>>(
        BaseBillUrlConstant.BASE_BILL_WALLET_TRANSFER_LOG_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillWallettransferlogdeletePost(input: BaseBillDefinition.IdRequest, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_WALLET_TRANSFER_LOG_DELETE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillWallettransferlogupdatePost(input: BaseBillDefinition.WalletTransferLogUpdateInput, userId: number):Promise<ApiResponse<BaseBillDefinition.WalletTransferLogOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletTransferLogOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletTransferLogOutput>>(
        BaseBillUrlConstant.BASE_BILL_WALLET_TRANSFER_LOG_UPDATE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class BankController {
    static async baseBillAccountUBankUListPost():Promise<ApiResponse<BaseBillDefinition.BankListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BankListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BankListOutput>>(
        BaseBillUrlConstant.BASE_BILL_ACCOUNT_BANK_LIST_URL,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }
  }


  export class WalletV2Controller {
    static async baseBillV2WalletdetaillistbymonthPost(input: BaseBillDefinition.WalletListDetailByMonthInput, ip: string, userId: number):Promise<ApiResponse<BaseBillDefinition.WalletListBalancePageOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletListBalancePageOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletListBalancePageOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_WALLET_DETAIL_LIST_BY_MONTH,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2WalletUAddPost(input: BaseBillDefinition.WalletAddInput, ip: string, userId: number):Promise<ApiResponse<BaseBillDefinition.WalletAddOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletAddOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletAddOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_WALLET_ADD_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2WalletUDeleteUAllPost(input: BaseBillDefinition.WalletDeleteInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V2_WALLET_DELETE_ALL_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV2WalletUListPost(channelType: string, ip: string, userId: number):Promise<ApiResponse<BaseBillDefinition.WalletListV2Output> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletListV2Output> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletListV2Output>>(
        BaseBillUrlConstant.BASE_BILL_V2_WALLET_LIST_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
      );

      return res;
    }

    static async baseBillV2WalletUUpdatePost(input: BaseBillDefinition.WalletUpdateInput, ip: string, userId: number):Promise<ApiResponse<BaseBillDefinition.WalletUpdateOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletUpdateOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletUpdateOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_WALLET_UPDATE_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class BillStatisticsController {
    static async baseBillBillstatementPost(input: BaseBillDefinition.BookkeepingBillStatementInput, userId: number):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillStatementOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillStatementOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillStatementOutput>>(
        BaseBillUrlConstant.BASE_BILL_BILL_STATEMENT,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillBillstatementdetailPost(input: BaseBillDefinition.BookkeepingBillStatementDetailInput, userId?: number):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillReportDetailByMonthListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillReportDetailByMonthListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillReportDetailByMonthListOutput>>(
        BaseBillUrlConstant.BASE_BILL_BILL_STATEMENT_DETAIL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2ReportUDataPost(input: BaseBillDefinition.BookkeepingBillReportV2Input, userId: number):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillReportOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillReportOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillReportOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_REPORT_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2ReportUDataUDetailPost(input: BaseBillDefinition.BookkeepingBillReportDetailV2Input, userId: number):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillReportDetailByMonthListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillReportDetailByMonthListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillReportDetailByMonthListOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_REPORT_DATA_DETAIL_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class WalletBorrowLendController {
    static async baseBillBorrowlendaddPost(input: BaseBillDefinition.WalletBorrowLendAddInput, ip: string, userId: number):Promise<ApiResponse<BaseBillDefinition.WalletBorrowLendAddOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletBorrowLendAddOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletBorrowLendAddOutput>>(
        BaseBillUrlConstant.BASE_BILL_BORROW_LEND_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillBorrowlenddeletePost(input: BaseBillDefinition.IdRequest, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_BORROW_LEND_DELETE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillBorrowlendupdatePost(input: BaseBillDefinition.WalletBorrowLendUpdateInput, ip: string, userId: number):Promise<ApiResponse<BaseBillDefinition.WalletBorrowLendAddOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletBorrowLendAddOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletBorrowLendAddOutput>>(
        BaseBillUrlConstant.BASE_BILL_BORROW_LEND_UPDATE,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillGetborrowlistPost(input: BaseBillDefinition.WalletBorrowLendListInput, userId: number):Promise<ApiResponse<BaseBillDefinition.BorrowLendListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BorrowLendListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BorrowLendListOutput>>(
        BaseBillUrlConstant.BASE_BILL_GET_BORROW_LIST,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class WalletController {
    static async baseBillGetUDefaultUWalletPost(userId: number):Promise<ApiResponse<BaseBillDefinition.WalletDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletDetailOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletDetailOutput>>(
        BaseBillUrlConstant.BASE_BILL_GET_DEFAULT_WALLET_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
      );

      return res;
    }

    static async baseBillSortUWalletPost(input: BaseBillDefinition.SortInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_SORT_WALLET_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillWalletUAddPost(input: BaseBillDefinition.WalletAddInput, ip: string, userId: number):Promise<ApiResponse<BaseBillDefinition.WalletAddOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletAddOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletAddOutput>>(
        BaseBillUrlConstant.BASE_BILL_WALLET_ADD_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillWalletUDeleteUAllPost(input: BaseBillDefinition.WalletDeleteInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_WALLET_DELETE_ALL_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillWalletUDeleteURemovePost(input: BaseBillDefinition.WalletDeleteMoveInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_WALLET_DELETE_REMOVE_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillWalletUDetailPost(input: BaseBillDefinition.WalletDetailInput):Promise<ApiResponse<BaseBillDefinition.WalletDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletDetailOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletDetailOutput>>(
        BaseBillUrlConstant.BASE_BILL_WALLET_DETAIL_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillWalletUGetURepeatPost(input: BaseBillDefinition.RepeatInput, userId: number):Promise<ApiResponse<BaseBillDefinition.RepeatOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.RepeatOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.RepeatOutput>>(
        BaseBillUrlConstant.BASE_BILL_WALLET_GET_REPEAT_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillWalletUListPost():Promise<ApiResponse<BaseBillDefinition.WalletListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletListOutput>>(
        BaseBillUrlConstant.BASE_BILL_WALLET_LIST_URL,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseBillWalletUUpdatePost(input: BaseBillDefinition.WalletUpdateInput, ip: string, userId: number):Promise<ApiResponse<BaseBillDefinition.WalletUpdateOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletUpdateOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletUpdateOutput>>(
        BaseBillUrlConstant.BASE_BILL_WALLET_UPDATE_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class BillFixDataController {
    static async baseBillFixdataPost(input: BaseBillDefinition.BillDataFixInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_FIX_DATA,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillInitdataPost(channelType: string, input: BaseBillDefinition.BillDataFixInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_INIT_DATA,
        {
        },
        {
        },
        {
            "channel_type": channelType,
        },
        input
      );

      return res;
    }
  }


  export class WalletBalanceLogController {
    static async baseBillWalletbalancelogdeletePost(input: BaseBillDefinition.IdRequest, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_WALLET_BALANCE_LOG_DELETE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillWalletbalancelogupdatePost(input: BaseBillDefinition.WalletBalanceLogUpdateInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_WALLET_BALANCE_LOG_UPDATE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class TrashController {
    static async baseBillBatchmoveinorouttrashPost(input: BaseBillDefinition.BatchMoveInOrOutTrashInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_BATCH_MOVE_IN_OR_OUT_TRASH,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillBatchrealdeletePost(input: BaseBillDefinition.IdsRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_BATCH_REAL_DELETE,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillTrashlistPost():Promise<ApiResponse<BaseBillDefinition.TrashListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.TrashListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.TrashListOutput>>(
        BaseBillUrlConstant.BASE_BILL_TRASH_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }
  }


  export class SuperFolderController {
    static async baseBillV2SuperFolderAddPost(input: BaseBillDefinition.AccountTypeAddInput):Promise<ApiResponse<BaseBillDefinition.AccountTypeOutputV2> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountTypeOutputV2> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountTypeOutputV2>>(
        BaseBillUrlConstant.BASE_BILL_V2_SUPER_FOLDER_ADD,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV2SuperFolderListPost( input: BaseBillDefinition.AccountTypeListInput):Promise<ApiResponse<BaseBillDefinition.AccountTypeCustomizeListOutputV2> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountTypeCustomizeListOutputV2> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountTypeCustomizeListOutputV2>>(
        BaseBillUrlConstant.BASE_BILL_V2_SUPER_FOLDER_LIST,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV2SuperFolderUpdatePost(input: BaseBillDefinition.AccountTypeUpdateInput):Promise<ApiResponse<BaseBillDefinition.AccountTypeOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountTypeOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountTypeOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_SUPER_FOLDER_UPDATE,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }
  }


  export class FastAppletController {
    static async baseBillGetappletdataPost(channelType: string, userId: number):Promise<ApiResponse<BaseBillDefinition.GetAppletDataOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.GetAppletDataOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.GetAppletDataOutput>>(
        BaseBillUrlConstant.BASE_BILL_GET_APPLET_DATA,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId
        },
      );

      return res;
    }
  }


  export class AccountBookSysController {
    static async baseBillAccountUBookUSysUListPost(userId: number):Promise<ApiResponse<BaseBillDefinition.AccountBookSysListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountBookSysListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountBookSysListOutput>>(
        BaseBillUrlConstant.BASE_BILL_ACCOUNT_BOOK_SYS_LIST_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
      );

      return res;
    }

    static async baseBillV2AccountUBookUSysUListPost():Promise<ApiResponse<BaseBillDefinition.AccountBookSysListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountBookSysListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountBookSysListOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_ACCOUNT_BOOK_SYS_LIST_URL,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }
  }


  export class AccountTypeCustomizeController {
    static async baseBillAccounttypeaddPost(input: BaseBillDefinition.AccountTypeAddInput):Promise<ApiResponse<BaseBillDefinition.AccountTypeOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountTypeOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountTypeOutput>>(
        BaseBillUrlConstant.BASE_BILL_ACCOUNT_TYPE_ADD,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillAccounttypedeletePost(input: BaseBillDefinition.AccountTypeIdInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_ACCOUNT_TYPE_DELETE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillAccounttypedetailPost(input: BaseBillDefinition.AccountTypeIdInput, userId: number):Promise<ApiResponse<BaseBillDefinition.AccountTypeOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountTypeOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountTypeOutput>>(
        BaseBillUrlConstant.BASE_BILL_ACCOUNT_TYPE_DETAIL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillAccounttypeupdatePost(input: BaseBillDefinition.AccountTypeUpdateInput):Promise<ApiResponse<BaseBillDefinition.AccountTypeOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountTypeOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountTypeOutput>>(
        BaseBillUrlConstant.BASE_BILL_ACCOUNT_TYPE_UPDATE,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillGetaccounttypelistPost(channelType: string, input: BaseBillDefinition.AccountTypeListInput, userId?: number):Promise<ApiResponse<BaseBillDefinition.AccountTypeCustomizeListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountTypeCustomizeListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountTypeCustomizeListOutput>>(
        BaseBillUrlConstant.BASE_BILL_GET_ACCOUNT_TYPE_LIST,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillSortaccounttypePost(input: BaseBillDefinition.SortInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_SORT_ACCOUNT_TYPE,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV2AccounttypeHasdataPost(input: BaseBillDefinition.AccountTypeIdInput):Promise<ApiResponse<BaseBillDefinition.BooleanResponse> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BooleanResponse> | null | undefined = await post<ApiResponse<BaseBillDefinition.BooleanResponse>>(
        BaseBillUrlConstant.BASE_BILL_V2_ACCOUNT_TYPE_HAS_DATA,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV2AccounttypedeleteallPost(input: BaseBillDefinition.AccountTypeIdInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V2_ACCOUNT_TYPE_DELETE_ALL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV2AccounttypedeletemovePost(input: BaseBillDefinition.AccountTypeDeleteMoveInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V2_ACCOUNT_TYPE_DELETE_MOVE,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV2GetaccounttypelistPost(input: BaseBillDefinition.AccountTypeListInput):Promise<ApiResponse<BaseBillDefinition.AccountTypeCustomizeListOutputV2> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountTypeCustomizeListOutputV2> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountTypeCustomizeListOutputV2>>(
        BaseBillUrlConstant.BASE_BILL_V2_GET_ACCOUNT_TYPE_LIST,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV3AccounttypedeleteallPost(input: BaseBillDefinition.AccountTypeIdInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V3_ACCOUNT_TYPE_DELETE_ALL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }
  }


  export class BudgetController {
    static async baseBillV1BudgetmanagementPost( input: BaseBillDefinition.BudgetManagementInput ):Promise<ApiResponse<BaseBillDefinition.BudgetManagementOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BudgetManagementOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BudgetManagementOutput>>(
        BaseBillUrlConstant.BASE_BILL_V1_BUDGET_MANAGEMENT,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV1UpdateaccountbookbudgetPost(input: BaseBillDefinition.UpdateBudgetInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V1_UPDATE_ACCOUNT_BOOK_BUDGET,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV1UpdateaccounttypecustomizebudgetPost( input: BaseBillDefinition.UpdateBudgetInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V1_UPDATE_ACCOUNT_TYPE_CUSTOMIZE_BUDGET,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }
  }


  export class WalletV3Controller {
    static async baseBillV3WalletdetaillistbymonthPost(input: BaseBillDefinition.WalletListDetailByMonthInput):Promise<ApiResponse<BaseBillDefinition.WalletListBalancePageOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletListBalancePageOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletListBalancePageOutput>>(
        BaseBillUrlConstant.BASE_BILL_V3_WALLET_DETAIL_LIST_BY_MONTH,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV3WalletUAddPost(input: BaseBillDefinition.WalletAddV3Input):Promise<ApiResponse<BaseBillDefinition.WalletAddOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletAddOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletAddOutput>>(
        BaseBillUrlConstant.BASE_BILL_V3_WALLET_ADD_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV3WalletUListPost():Promise<ApiResponse<BaseBillDefinition.WalletListV3Output> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletListV3Output> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletListV3Output>>(
        BaseBillUrlConstant.BASE_BILL_V3_WALLET_LIST_URL,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseBillV3WalletUSortPost(input: BaseBillDefinition.WalletSortV3Input, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseBillUrlConstant.BASE_BILL_V3_WALLET_SORT_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV3WalletUUpdatePost(input: BaseBillDefinition.WalletUpdateV3Input):Promise<ApiResponse<BaseBillDefinition.WalletUpdateOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletUpdateOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletUpdateOutput>>(
        BaseBillUrlConstant.BASE_BILL_V3_WALLET_UPDATE_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }
  }


  export class WalletBorrowLendRepayV2Controller {
    static async baseBillV2BorrowlendrepayaddPost(input: BaseBillDefinition.WalletBorrowLendRepayAddV2Input, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V2_BORROW_LEND_REPAY_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2BorrowlendrepaydeletePost(input: BaseBillDefinition.IdRequest, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V2_BORROW_LEND_REPAY_DELETE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2BorrowlendrepayupdatePost(input: BaseBillDefinition.WalletBorrowLendRepayUpdateV2Input, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V2_BORROW_LEND_REPAY_UPDATE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2GetborrowdetailPost(input: BaseBillDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseBillDefinition.BorrowLendDetailListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BorrowLendDetailListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BorrowLendDetailListOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_GET_BORROW_DETAIL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2GetrepayreceivedetailPost(input: BaseBillDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseBillDefinition.RepayReceiveOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.RepayReceiveOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.RepayReceiveOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_GET_REPAY_RECEIVE_DETAIL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class CycleBillController {
    static async baseBillAddcyclebillPost(input: BaseBillDefinition.CycleBillAddInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_ADD_CYCLE_BILL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillCyclebillhistorylistPost(input: BaseBillDefinition.IdRequest):Promise<RowResponse<Array<BaseBillDefinition.BookkeepingBillOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseBillDefinition.BookkeepingBillOutput>> | null | undefined = await post<RowResponse<Array<BaseBillDefinition.BookkeepingBillOutput>>>(
        BaseBillUrlConstant.BASE_BILL_CYCLE_BILL_HISTORY_LIST,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillCyclebilllistPost(userId: number):Promise<RowResponse<Array<BaseBillDefinition.CycleBillOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseBillDefinition.CycleBillOutput>> | null | undefined = await post<RowResponse<Array<BaseBillDefinition.CycleBillOutput>>>(
        BaseBillUrlConstant.BASE_BILL_CYCLE_BILL_LIST,
        {
        },
        {
        },
        {
            "user_id": userId
        },
      );

      return res;
    }

    static async baseBillDeletecyclebillPost(input: BaseBillDefinition.IdRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_DELETE_CYCLE_BILL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillUpdatecyclebillPost(input: BaseBillDefinition.CycleBillUpdateInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_UPDATE_CYCLE_BILL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV2CyclebilllistPost():Promise<RowResponse<Array<BaseBillDefinition.CycleBillOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseBillDefinition.CycleBillOutput>> | null | undefined = await post<RowResponse<Array<BaseBillDefinition.CycleBillOutput>>>(
        BaseBillUrlConstant.BASE_BILL_V2_CYCLE_BILL_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }
  }


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseBillUrlConstant.CHECKALIVE,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }
  }


  export class WalletBorrowLendRepayController {
    static async baseBillBorrowlendrepayaddPost(input: BaseBillDefinition.WalletBorrowLendRepayAddInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_BORROW_LEND_REPAY_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillBorrowlendrepaydeletePost(input: BaseBillDefinition.IdRequest, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_BORROW_LEND_REPAY_DELETE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillBorrowlendrepayupdatePost(input: BaseBillDefinition.WalletBorrowLendRepayUpdateInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_BORROW_LEND_REPAY_UPDATE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillGetborrowdetailPost(input: BaseBillDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseBillDefinition.BorrowLendDetailListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BorrowLendDetailListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BorrowLendDetailListOutput>>(
        BaseBillUrlConstant.BASE_BILL_GET_BORROW_DETAIL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillGetrepayreceivedetailPost(input: BaseBillDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseBillDefinition.RepayReceiveOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.RepayReceiveOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.RepayReceiveOutput>>(
        BaseBillUrlConstant.BASE_BILL_GET_REPAY_RECEIVE_DETAIL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class BookkeepingV2Controller {
    static async baseBillV2BatchdeletebillPost(input: BaseBillDefinition.BillBatchDeleteInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V2_BATCH_DELETE_BILL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV2BatchupdateaccountbookPost(channelType: string, input: BaseBillDefinition.BillBatchUpdateAccountBookInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V2_BATCH_UPDATE_ACCOUNT_BOOK,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV2BatchupdatebillwalletPost(input: BaseBillDefinition.BillBatchUpdateInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V2_BATCH_UPDATE_BILL_WALLET,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2BatchupdateclassifyPost(channelType: string, input: BaseBillDefinition.BillBatchUpdateInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBillUrlConstant.BASE_BILL_V2_BATCH_UPDATE_CLASSIFY,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2HomepagePost(channelType: string, input: BaseBillDefinition.HomepageUsingPOSTRequestBody, ip: string, userId: number):Promise<ApiResponse<BaseBillDefinition.HomepageOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.HomepageOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.HomepageOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_HOMEPAGE,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2SearchbillbyrangedatePost( input: BaseBillDefinition.SearchBillByRangeDateInput):Promise<ApiResponse<BaseBillDefinition.HomepageOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.HomepageOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.HomepageOutput>>(
        BaseBillUrlConstant.BASE_BILL_V2_SEARCH_BILL_BY_RANGE_DATE,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV2SearchUBookkeepingUBillUByUMonthv3Post(channelType: string, input: BaseBillDefinition.SearchBookkeepingBillByMonthWithBankCardV2Input, ip: string, userId: number):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillByMonthResponse> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillByMonthResponse> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillByMonthResponse>>(
        BaseBillUrlConstant.BASE_BILL_V2_SEARCH_BOOKKEEPING_BILL_BY_MONTH_V3_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillV2SearchUBookkeepingUBillUByUMonthv4Post(input: BaseBillDefinition.SearchBookkeepingBillByMonthWithBankCardV2Input):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillByMonthResponse> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillByMonthResponse> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillByMonthResponse>>(
        BaseBillUrlConstant.BASE_BILL_V2_SEARCH_BOOKKEEPING_BILL_BY_MONTH_V4_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }

    static async baseBillV2SelectMByMKeywordPost(input: BaseBillDefinition.BookkeepingBillSearchByKeywordInput, userId: number):Promise<ApiResponse<BaseBillDefinition.BookkeepingBilleSearchOutpupt> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBilleSearchOutpupt> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBilleSearchOutpupt>>(
        BaseBillUrlConstant.BASE_BILL_V2_SELECT_BY_KEYWORD_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }
  }


  export class AccountTypeController {
    static async baseBillAccountUTypeUListPost(input: BaseBillDefinition.AccountTypeListInput, userId: number):Promise<ApiResponse<BaseBillDefinition.AccountTypeListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountTypeListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountTypeListOutput>>(
        BaseBillUrlConstant.BASE_BILL_ACCOUNT_TYPE_LIST_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillAccountUTypeUListUAllPost(input: BaseBillDefinition.AccountTypeListInput):Promise<ApiResponse<BaseBillDefinition.AccountTypeListOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.AccountTypeListOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.AccountTypeListOutput>>(
        BaseBillUrlConstant.BASE_BILL_ACCOUNT_TYPE_LIST_ALL_URL,
        {
        },
        {
        },
        {
        },
        input
      );

      return res;
    }
  }


  export class BookkeepingAsyncController {
    static async baseBillAsyncDownloadPost(input: BaseBillDefinition.BookkeepingBillAsyncDownloadInput, userId: number):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillAsyncDataInput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillAsyncDataInput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillAsyncDataInput>>(
        BaseBillUrlConstant.BASE_BILL_ASYNC_DOWNLOAD,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBillAsyncUploadPost(input: BaseBillDefinition.BookkeepingBillAsyncDataInput, ip: string, userId: number, version: number):Promise<ApiResponse<BaseBillDefinition.BookkeepingBillAsyncUploadOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.BookkeepingBillAsyncUploadOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.BookkeepingBillAsyncUploadOutput>>(
        BaseBillUrlConstant.BASE_BILL_ASYNC_UPLOAD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId,
            "version": version
        },
        input
      );

      return res;
    }
  }


  export class WalletCurrentController {
    static async baseBillGetUWalletUCurrentPost(channelType: string, userId?: number):Promise<ApiResponse<BaseBillDefinition.WalletDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseBillDefinition.WalletDetailOutput> | null | undefined = await post<ApiResponse<BaseBillDefinition.WalletDetailOutput>>(
        BaseBillUrlConstant.BASE_BILL_GET_WALLET_CURRENT_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId
        },
      );

      return res;
    }
  }
}
