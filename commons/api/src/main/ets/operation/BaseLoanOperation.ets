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
import { BaseLoanDefinition } from './../definition/BaseLoanDefinition';
import { BaseLoanUrlConstant } from './../constant/BaseLoanUrlConstant';

export namespace BaseLoanOperation {
  export class BankCardController {
    static async baseLoanAddUOrUUpdateUBankUCardPost(input: BaseLoanDefinition.AddOrUpdateBankCardInput, ip: string, userId: number):Promise<ApiResponse<BaseLoanDefinition.AddOrUpdateBankCardOutput> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.AddOrUpdateBankCardOutput> | null | undefined = await post<ApiResponse<BaseLoanDefinition.AddOrUpdateBankCardOutput>>(
        BaseLoanUrlConstant.BASE_LOAN_ADD_OR_UPDATE_BANK_CARD_URL,
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

    static async baseLoanBankcardglobaladdhistoryPost(idsRequest: BaseLoanDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BaseLoanDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseLoanDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseLoanDefinition.AppletHistoryResponse>>>(
        BaseLoanUrlConstant.BASE_LOAN_BANK_CARD_GLOBAL_ADD_HISTORY,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        idsRequest
      );

      return res;
    }

    static async baseLoanBankUAddUFinishPost(input: BaseLoanDefinition.AddFinishedInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseLoanUrlConstant.BASE_LOAN_BANK_ADD_FINISH_URL,
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

    static async baseLoanBankUCardUInfoPost(input: BaseLoanDefinition.BankCardIdInput, ip: string, userId: number):Promise<ApiResponse<BaseLoanDefinition.BankCardOutput> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.BankCardOutput> | null | undefined = await post<ApiResponse<BaseLoanDefinition.BankCardOutput>>(
        BaseLoanUrlConstant.BASE_LOAN_BANK_CARD_INFO_URL,
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

    static async baseLoanBankUCardUListPost(input: BaseLoanDefinition.BankCardListInput, ip: string, userId: number):Promise<ApiResponse<BaseLoanDefinition.BankCardListOutput> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.BankCardListOutput> | null | undefined = await post<ApiResponse<BaseLoanDefinition.BankCardListOutput>>(
        BaseLoanUrlConstant.BASE_LOAN_BANK_CARD_LIST_URL,
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

    static async baseLoanBankUCardUListv2Post(input: BaseLoanDefinition.BankCardListInput, ip: string, userId: number):Promise<ApiResponse<BaseLoanDefinition.BankCardListOutput> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.BankCardListOutput> | null | undefined = await post<ApiResponse<BaseLoanDefinition.BankCardListOutput>>(
        BaseLoanUrlConstant.BASE_LOAN_BANK_CARD_LIST_V2_URL,
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

    static async baseLoanBankUListPost():Promise<ApiResponse<BaseLoanDefinition.BankListOutput> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.BankListOutput> | null | undefined = await post<ApiResponse<BaseLoanDefinition.BankListOutput>>(
        BaseLoanUrlConstant.BASE_LOAN_BANK_LIST_URL,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseLoanCheckUBankUCardUBinPost(input: BaseLoanDefinition.CheckCardBinInput):Promise<ApiResponse<BaseLoanDefinition.CheckBankCardBinOutput> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.CheckBankCardBinOutput> | null | undefined = await post<ApiResponse<BaseLoanDefinition.CheckBankCardBinOutput>>(
        BaseLoanUrlConstant.BASE_LOAN_CHECK_BANK_CARD_BIN_URL,
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

    static async baseLoanDeleteUBankUInfoPost(input: BaseLoanDefinition.BankCardIdInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseLoanUrlConstant.BASE_LOAN_DELETE_BANK_INFO_URL,
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

    static async baseLoanV1GetbankcardidPost(input: BaseLoanDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseLoanDefinition.IdResponse> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.IdResponse> | null | undefined = await post<ApiResponse<BaseLoanDefinition.IdResponse>>(
        BaseLoanUrlConstant.BASE_LOAN_V1_GET_BANK_CARD_ID,
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


  export class LoanRemindController {
    static async baseLoanRemindAddPost(input: BaseLoanDefinition.RemindDto):Promise<ApiResponse<BaseLoanDefinition.RemindDto> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.RemindDto> | null | undefined = await post<ApiResponse<BaseLoanDefinition.RemindDto>>(
        BaseLoanUrlConstant.BASE_LOAN_REMIND_ADD,
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

    static async baseLoanRemindGetPost():Promise<ApiResponse<BaseLoanDefinition.RemindDto> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.RemindDto> | null | undefined = await post<ApiResponse<BaseLoanDefinition.RemindDto>>(
        BaseLoanUrlConstant.BASE_LOAN_REMIND_GET,
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
        BaseLoanUrlConstant.CHECKALIVE,
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


  export class LoanGuideController {
    static async baseLoanBatchaddPost(batchAddInputs: Array<BaseLoanDefinition.BatchAddInput>):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseLoanUrlConstant.BASE_LOAN_BATCH_ADD,
        {
        },
        {
        },
        {
        },
        batchAddInputs
      );

      return res;
    }

    static async baseLoanBatchaddloanPost(batchAddInputs: BaseLoanDefinition.BatchAddInputs, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseLoanUrlConstant.BASE_LOAN_BATCH_ADD_LOAN,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        batchAddInputs
      );

      return res;
    }

    static async baseLoanGuidePost():Promise<ApiResponse<RowData<Array<BaseLoanDefinition.LoanGuideOutput>>> | null | undefined> {
      let res: ApiResponse<RowData<Array<BaseLoanDefinition.LoanGuideOutput>>> | null | undefined = await post<ApiResponse<RowData<Array<BaseLoanDefinition.LoanGuideOutput>>>>(
        BaseLoanUrlConstant.BASE_LOAN_GUIDE,
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


  export class LoanSyncDataController {
    static async baseLoanSyncUCardUDataPost(syncDataInput: BaseLoanDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseLoanDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseLoanDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseLoanDefinition.SyncDataAppletResponse>>>(
        BaseLoanUrlConstant.BASE_LOAN_SYNC_CARD_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        syncDataInput
      );

      return res;
    }

    static async baseLoanSyncUCardUFinishUDataPost(syncDataInput: BaseLoanDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseLoanDefinition.SyncDataAppletFinishResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseLoanDefinition.SyncDataAppletFinishResponse>> | null | undefined = await post<RowResponse<Array<BaseLoanDefinition.SyncDataAppletFinishResponse>>>(
        BaseLoanUrlConstant.BASE_LOAN_SYNC_CARD_FINISH_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        syncDataInput
      );

      return res;
    }

    static async baseLoanSyncUDataPost(syncDataInput: BaseLoanDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseLoanDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseLoanDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseLoanDefinition.SyncDataAppletResponse>>>(
        BaseLoanUrlConstant.BASE_LOAN_SYNC_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        syncDataInput
      );

      return res;
    }

    static async baseLoanSyncUFinishUDataPost(syncDataInput: BaseLoanDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseLoanDefinition.SyncDataAppletFinishResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseLoanDefinition.SyncDataAppletFinishResponse>> | null | undefined = await post<RowResponse<Array<BaseLoanDefinition.SyncDataAppletFinishResponse>>>(
        BaseLoanUrlConstant.BASE_LOAN_SYNC_FINISH_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        syncDataInput
      );

      return res;
    }
  }


  export class LoanController {
    static async baseLoanAddUOrUUpdateULoanPost(input: BaseLoanDefinition.AddOrUpdateLoanInput):Promise<ApiResponse<BaseLoanDefinition.AddOrUpdateLoanOutput> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.AddOrUpdateLoanOutput> | null | undefined = await post<ApiResponse<BaseLoanDefinition.AddOrUpdateLoanOutput>>(
        BaseLoanUrlConstant.BASE_LOAN_ADD_OR_UPDATE_LOAN_URL,
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

    static async baseLoanBankUCardUAndULoanUListPost(input: BaseLoanDefinition.BankCardAndLoanListInput, ip: string, userId: number):Promise<ApiResponse<BaseLoanDefinition.BankCardAndLoanListOutput> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.BankCardAndLoanListOutput> | null | undefined = await post<ApiResponse<BaseLoanDefinition.BankCardAndLoanListOutput>>(
        BaseLoanUrlConstant.BASE_LOAN_BANK_CARD_AND_LOAN_LIST_URL,
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

    static async baseLoanBankUCardUAndULoanUListv2Post(input: BaseLoanDefinition.BankCardAndLoanListInput):Promise<ApiResponse<BaseLoanDefinition.BankCardAndLoanListV2Output> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.BankCardAndLoanListV2Output> | null | undefined = await post<ApiResponse<BaseLoanDefinition.BankCardAndLoanListV2Output>>(
        BaseLoanUrlConstant.BASE_LOAN_BANK_CARD_AND_LOAN_LIST_V2_URL,
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

    static async baseLoanDailysummaryPost(input: BaseLoanDefinition.DateRequest, userId: number):Promise<ApiResponse<BaseLoanDefinition.DailySummaryUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.DailySummaryUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseLoanDefinition.DailySummaryUsingPOSTRsp>>(
        BaseLoanUrlConstant.BASE_LOAN_DAILY_SUMMARY,
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

    static async baseLoanDeleteULoanPost(input: BaseLoanDefinition.DeleteLoanInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseLoanUrlConstant.BASE_LOAN_DELETE_LOAN_URL,
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

    static async baseLoanGetULoanPost(input: BaseLoanDefinition.LoanInfoInput, ip: string, userId: number):Promise<ApiResponse<BaseLoanDefinition.LoanOutput> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.LoanOutput> | null | undefined = await post<ApiResponse<BaseLoanDefinition.LoanOutput>>(
        BaseLoanUrlConstant.BASE_LOAN_GET_LOAN_URL,
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

    static async baseLoanGetremindelementsPost(input: BaseLoanDefinition.LoanBankCardTodoViewInput, userId: number):Promise<ApiResponse<BaseLoanDefinition.LoanBankCardTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.LoanBankCardTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseLoanDefinition.LoanBankCardTodoViewListOutput>>(
        BaseLoanUrlConstant.BASE_LOAN_GETREMINDELEMENTS,
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

    static async baseLoanJobElementsPost(input: BaseLoanDefinition.JobPullInput):Promise<Array<BaseLoanDefinition.JobPullOutput> | null | undefined> {
      let res: Array<BaseLoanDefinition.JobPullOutput> | null | undefined = await post<Array<BaseLoanDefinition.JobPullOutput>>(
        BaseLoanUrlConstant.BASE_LOAN_JOB_ELEMENTS,
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

    static async baseLoanLoanglobaladdhistoryPost(idsRequest: BaseLoanDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BaseLoanDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseLoanDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseLoanDefinition.AppletHistoryResponse>>>(
        BaseLoanUrlConstant.BASE_LOAN_LOAN_GLOBAL_ADD_HISTORY,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        idsRequest
      );

      return res;
    }

    static async baseLoanLoanUAddUFinishPost(input: BaseLoanDefinition.AddFinishedInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseLoanUrlConstant.BASE_LOAN_LOAN_ADD_FINISH_URL,
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

    static async baseLoanLoanULogoPost():Promise<ApiResponse<BaseLoanDefinition.BankListOutput> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.BankListOutput> | null | undefined = await post<ApiResponse<BaseLoanDefinition.BankListOutput>>(
        BaseLoanUrlConstant.BASE_LOAN_LOAN_LOGO_URL,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseLoanTodoUViewUListPost(input: BaseLoanDefinition.LoanBankCardTodoViewInput, userId: number):Promise<ApiResponse<BaseLoanDefinition.LoanBankCardTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.LoanBankCardTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseLoanDefinition.LoanBankCardTodoViewListOutput>>(
        BaseLoanUrlConstant.BASE_LOAN_TODO_VIEW_LIST_URL,
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

    static async baseLoanV1ExportPost(input: BaseLoanDefinition.LoanTransferCondition, userId: number):Promise<ApiResponse<BaseLoanDefinition.LoanTransferData> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.LoanTransferData> | null | undefined = await post<ApiResponse<BaseLoanDefinition.LoanTransferData>>(
        BaseLoanUrlConstant.BASE_LOAN_V1_EXPORT,
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

    static async baseLoanV1GetloanidPost(input: BaseLoanDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseLoanDefinition.IdResponse> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.IdResponse> | null | undefined = await post<ApiResponse<BaseLoanDefinition.IdResponse>>(
        BaseLoanUrlConstant.BASE_LOAN_V1_GET_LOAN_ID,
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

    static async baseLoanV1ImportPost(input: BaseLoanDefinition.LoanTransferData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseLoanUrlConstant.BASE_LOAN_V1_IMPORT,
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

    static async baseLoanV1MyappletPost(userId: number):Promise<ApiResponse<BaseLoanDefinition.LoanMyAppletUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.LoanMyAppletUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseLoanDefinition.LoanMyAppletUsingPOSTRsp>>(
        BaseLoanUrlConstant.BASE_LOAN_V1_MY_APPLET,
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

    static async baseLoanV1ShortcutappletPost(userId: number):Promise<RowResponse<Array<BaseLoanDefinition.LoanShortcutAppletUsingPOST>> | null | undefined> {
      let res: RowResponse<Array<BaseLoanDefinition.LoanShortcutAppletUsingPOST>> | null | undefined = await post<RowResponse<Array<BaseLoanDefinition.LoanShortcutAppletUsingPOST>>>(
        BaseLoanUrlConstant.BASE_LOAN_V1_SHORTCUT_APPLET,
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

    static async baseLoanViewReciprocalPost(input: BaseLoanDefinition.ReciprocalViewRequest, userId: number):Promise<ApiResponse<BaseLoanDefinition.LoanBankCardReciprocalViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseLoanDefinition.LoanBankCardReciprocalViewListOutput> | null | undefined = await post<ApiResponse<BaseLoanDefinition.LoanBankCardReciprocalViewListOutput>>(
        BaseLoanUrlConstant.BASE_LOAN_VIEW_RECIPROCAL,
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
}
