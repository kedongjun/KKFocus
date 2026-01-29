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
import { BaseExportDefinition } from './../definition/BaseExportDefinition';
import { BaseExportUrlConstant } from './../constant/BaseExportUrlConstant';

export namespace BaseExportOperation {
  export class DailySummaryController {
    static async baseExportV1DailyRecommendMSectionMSummaryMDataPost(userId?: number):Promise<ApiResponse<BaseExportDefinition.RecommendSectionData> | null | undefined> {
      let res: ApiResponse<BaseExportDefinition.RecommendSectionData> | null | undefined = await post<ApiResponse<BaseExportDefinition.RecommendSectionData>>(
        BaseExportUrlConstant.BASE_EXPORT_V1_DAILY_RECOMMEND_SECTION_SUMMARY_DATA_URL,
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
  }


  export class ImportBillClassifyRelationController {
    static async baseExportV1BillAddrelationPost(input: BaseExportDefinition.AddRelationInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseExportUrlConstant.BASE_EXPORT_V1_BILL_ADD_RELATION,
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

    static async baseExportV1BillDeleterelationPost(input: BaseExportDefinition.IdRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseExportUrlConstant.BASE_EXPORT_V1_BILL_DELETE_RELATION,
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

    static async baseExportV1BillQueryrelationlistPost(input: BaseExportDefinition.RelationInput):Promise<RowResponse<Array<BaseExportDefinition.ImportBillClassifyRelationOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseExportDefinition.ImportBillClassifyRelationOutput>> | null | undefined = await post<RowResponse<Array<BaseExportDefinition.ImportBillClassifyRelationOutput>>>(
        BaseExportUrlConstant.BASE_EXPORT_V1_BILL_QUERY_RELATION_LIST,
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

    static async baseExportV1BillUpdaterelationPost(input: BaseExportDefinition.UpdateRelationInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseExportUrlConstant.BASE_EXPORT_V1_BILL_UPDATE_RELATION,
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


  export class ImportBillController {
    static async baseExportBillBatchupdateaccounttypePost(input: BaseExportDefinition.BatchUpdateAccountTypeInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_BATCH_UPDATE_ACCOUNT_TYPE,
        {
        },
        {
        },
        {
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseExportBillBatchupdatebillaccounttypePost(input: BaseExportDefinition.BatchUpdateBillAccountTypeInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_BATCH_UPDATE_BILL_ACCOUNT_TYPE,
        {
        },
        {
        },
        {
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseExportBillBatchupdatebillwalletPost(input: BaseExportDefinition.BatchUpdateBillWalletInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_BATCH_UPDATE_BILL_WALLET,
        {
        },
        {
        },
        {
            // "ip": ip,
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseExportBillBatchupdateexceptionbillPost(input: BaseExportDefinition.BatchUpdateExceptionBillInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_BATCH_UPDATE_EXCEPTION_BILL,
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

    static async baseExportBillBatchupdatewalletPost(input: BaseExportDefinition.BatchUpdateWalletInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_BATCH_UPDATE_WALLET,
        {
        },
        {
        },
        {
            // "ip": ip,
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseExportBillCheckPost(input: BaseExportDefinition.BillCheckInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_CHECK,
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

    static async baseExportBillConfirmimportbillPost(input: BaseExportDefinition.IdRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_CONFIRM_IMPORT_BILL,
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

    static async baseExportBillDelimporthistoryPost(input: BaseExportDefinition.IdRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_DEL_IMPORT_HISTORY,
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

    static async baseExportBillGetaccounttypepreviewPost(input: BaseExportDefinition.IdRequest):Promise<ApiResponse<BaseExportDefinition.AccountTypePreviewOutput> | null | undefined> {
      let res: ApiResponse<BaseExportDefinition.AccountTypePreviewOutput> | null | undefined = await post<ApiResponse<BaseExportDefinition.AccountTypePreviewOutput>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_GET_ACCOUNT_TYPE_PREVIEW,
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

    static async baseExportBillGetconfirmpreviewPost(input: BaseExportDefinition.IdRequest):Promise<ApiResponse<BaseExportDefinition.GetConfirmPreviewOutput> | null | undefined> {
      let res: ApiResponse<BaseExportDefinition.GetConfirmPreviewOutput> | null | undefined = await post<ApiResponse<BaseExportDefinition.GetConfirmPreviewOutput>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_GET_CONFIRM_PREVIEW,
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

    static async baseExportBillGetconfirmstatusPost(input: BaseExportDefinition.IdRequest):Promise<ApiResponse<BaseExportDefinition.BooleanResponse> | null | undefined> {
      let res: ApiResponse<BaseExportDefinition.BooleanResponse> | null | undefined = await post<ApiResponse<BaseExportDefinition.BooleanResponse>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_GET_CONFIRM_STATUS,
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

    static async baseExportBillGetconfirmsummaryPost(input: BaseExportDefinition.IdRequest):Promise<ApiResponse<BaseExportDefinition.GetImportSummaryOutput> | null | undefined> {
      let res: ApiResponse<BaseExportDefinition.GetImportSummaryOutput> | null | undefined = await post<ApiResponse<BaseExportDefinition.GetImportSummaryOutput>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_GET_CONFIRM_SUMMARY,
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

    static async baseExportBillGetimportaccounttypemappingPost(input: BaseExportDefinition.IdRequest, userId?: number):Promise<ApiResponse<BaseExportDefinition.GetImportAccountTypeMappingOutput> | null | undefined> {
      let res: ApiResponse<BaseExportDefinition.GetImportAccountTypeMappingOutput> | null | undefined = await post<ApiResponse<BaseExportDefinition.GetImportAccountTypeMappingOutput>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_GET_IMPORT_ACCOUNT_TYPE_MAPPING,
        {
        },
        {
        },
        {
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseExportBillGetimportbilldetailPost(input: BaseExportDefinition.GetImportBillDetailInput):Promise<ApiResponse<BaseExportDefinition.ImportBillDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseExportDefinition.ImportBillDetailOutput> | null | undefined = await post<ApiResponse<BaseExportDefinition.ImportBillDetailOutput>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_GET_IMPORT_BILL_DETAIL,
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

    static async baseExportBillGetimportbillexceptionitemPost(input: BaseExportDefinition.IdRequest):Promise<RowResponse<Array<BaseExportDefinition.ImportBillOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseExportDefinition.ImportBillOutput>> | null | undefined = await post<RowResponse<Array<BaseExportDefinition.ImportBillOutput>>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_GET_IMPORT_BILL_EXCEPTION_ITEM,
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

    static async baseExportBillGetimportbillpagePost(input: BaseExportDefinition.GetImportBillPageInput):Promise<PaginableResponse<RowData<Array<BaseExportDefinition.ImportBillOutput>>> | null | undefined> {
      let res: PaginableResponse<RowData<Array<BaseExportDefinition.ImportBillOutput>>> | null | undefined = await post<PaginableResponse<RowData<Array<BaseExportDefinition.ImportBillOutput>>>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_GET_IMPORT_BILL_PAGE,
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

    static async baseExportBillGetimporthistoryPost(input: BaseExportDefinition.PaginableRequest):Promise<ApiResponse<RowData<Array<BaseExportDefinition.ImportHistoryOutput>>> | null | undefined> {
      let res: ApiResponse<RowData<Array<BaseExportDefinition.ImportHistoryOutput>>> | null | undefined = await post<ApiResponse<RowData<Array<BaseExportDefinition.ImportHistoryOutput>>>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_GET_IMPORT_HISTORY,
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

    static async baseExportBillGetimportpreviewstatusPost(input: BaseExportDefinition.IdRequest):Promise<ApiResponse<BaseExportDefinition.BooleanResponse> | null | undefined> {
      let res: ApiResponse<BaseExportDefinition.BooleanResponse> | null | undefined = await post<ApiResponse<BaseExportDefinition.BooleanResponse>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_GET_IMPORT_PREVIEW_STATUS,
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

    static async baseExportBillGetimportsourcetypePost():Promise<ApiResponse<RowData<Array<BaseExportDefinition.ImportSourceTypeOutput>>> | null | undefined> {
      let res: ApiResponse<RowData<Array<BaseExportDefinition.ImportSourceTypeOutput>>> | null | undefined = await post<ApiResponse<RowData<Array<BaseExportDefinition.ImportSourceTypeOutput>>>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_GET_IMPORT_SOURCE_TYPE,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseExportBillGetimportsummaryPost(input: BaseExportDefinition.IdRequest):Promise<ApiResponse<BaseExportDefinition.GetImportSummaryOutput> | null | undefined> {
      let res: ApiResponse<BaseExportDefinition.GetImportSummaryOutput> | null | undefined = await post<ApiResponse<BaseExportDefinition.GetImportSummaryOutput>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_GET_IMPORT_SUMMARY,
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

    static async baseExportBillGetimportwalletmappingPost(input: BaseExportDefinition.IdRequest, userId?: number):Promise<ApiResponse<BaseExportDefinition.GetImportWalletMappingOutput> | null | undefined> {
      let res: ApiResponse<BaseExportDefinition.GetImportWalletMappingOutput> | null | undefined = await post<ApiResponse<BaseExportDefinition.GetImportWalletMappingOutput>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_GET_IMPORT_WALLET_MAPPING,
        {
        },
        {
        },
        {
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseExportBillGetwalletpreviewPost(input: BaseExportDefinition.IdRequest):Promise<ApiResponse<BaseExportDefinition.WalletPreviewOutput> | null | undefined> {
      let res: ApiResponse<BaseExportDefinition.WalletPreviewOutput> | null | undefined = await post<ApiResponse<BaseExportDefinition.WalletPreviewOutput>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_GET_WALLET_PREVIEW,
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

    static async baseExportBillImportbillPost(input: BaseExportDefinition.ImportBillInput, ip: string, userId: number):Promise<BaseExportDefinition.IdResponse | null | undefined> {
      let res: BaseExportDefinition.IdResponse | null | undefined = await post<BaseExportDefinition.IdResponse>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_IMPORT_BILL,
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

    static async baseExportBillUpdateimportaccounttypemappingPost(input: BaseExportDefinition.UpdateImportAccountTypeMappingInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_UPDATE_IMPORT_ACCOUNT_TYPE_MAPPING,
        {
        },
        {
        },
        {
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseExportBillUpdateimportbilldetailPost(input: BaseExportDefinition.UpdateImportBillDetailInput):Promise<ApiResponse<BaseExportDefinition.ImportBillDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseExportDefinition.ImportBillDetailOutput> | null | undefined = await post<ApiResponse<BaseExportDefinition.ImportBillDetailOutput>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_UPDATE_IMPORT_BILL_DETAIL,
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

    static async baseExportBillUpdateimportwalletmappingPost(input: BaseExportDefinition.UpdateImportWalletMappingInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_UPDATE_IMPORT_WALLET_MAPPING,
        {
        },
        {
        },
        {
            // "ip": ip,
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseExportBillUpdateimportwallettypePost(input: BaseExportDefinition.UpdateImportWalletTypeInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseExportUrlConstant.BASE_EXPORT_BILL_UPDATE_IMPORT_WALLET_TYPE,
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

    static async baseExportV2BillImportbillPost(input: BaseExportDefinition.ImportBillInput):Promise<BaseExportDefinition.IdResponse | null | undefined> {
      let res: BaseExportDefinition.IdResponse | null | undefined = await post<BaseExportDefinition.IdResponse>(
        BaseExportUrlConstant.BASE_EXPORT_V2_BILL_IMPORT_BILL,
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


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseExportUrlConstant.CHECKALIVE,
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
}
