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
import { BaseRunDefinition } from './../definition/BaseRunDefinition';
import { BaseRunUrlConstant } from './../constant/BaseRunUrlConstant';

export namespace BaseRunOperation {
  export class RunController {
    static async baseRunV1FinishPost(dto: BaseRunDefinition.RunFinishInput, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseRunUrlConstant.BASE_RUN_V1_FINISH,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async baseRunV1GetrunpersonalrecordPost(userId: number):Promise<ApiResponse<BaseRunDefinition.RunPersonalRecordOutput> | null | undefined> {
      let res: ApiResponse<BaseRunDefinition.RunPersonalRecordOutput> | null | undefined = await post<ApiResponse<BaseRunDefinition.RunPersonalRecordOutput>>(
        BaseRunUrlConstant.BASE_RUN_V1_GET_RUN_PERSONAL_RECORD,
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

    static async baseRunV1GetrunrecordPost(dto: BaseRunDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseRunDefinition.RunRecordOutput> | null | undefined> {
      let res: ApiResponse<BaseRunDefinition.RunRecordOutput> | null | undefined = await post<ApiResponse<BaseRunDefinition.RunRecordOutput>>(
        BaseRunUrlConstant.BASE_RUN_V1_GET_RUN_RECORD,
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

    static async baseRunV1GetrunrecordbydayPost(dto: BaseRunDefinition.RunRecordByDayInput, userId: number):Promise<RowResponse<Array<BaseRunDefinition.RunRecordByDayOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseRunDefinition.RunRecordByDayOutput>> | null | undefined = await post<RowResponse<Array<BaseRunDefinition.RunRecordByDayOutput>>>(
        BaseRunUrlConstant.BASE_RUN_V1_GET_RUN_RECORD_BY_DAY,
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

    static async baseRunV1GetrunrecordbyyearPost(dto: BaseRunDefinition.RunRecordByYearInput, userId: number):Promise<RowResponse<Array<BaseRunDefinition.RunRecordByMonthOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseRunDefinition.RunRecordByMonthOutput>> | null | undefined = await post<RowResponse<Array<BaseRunDefinition.RunRecordByMonthOutput>>>(
        BaseRunUrlConstant.BASE_RUN_V1_GET_RUN_RECORD_BY_YEAR,
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

    static async baseRunV1GetrunrecordsPost(dto: BaseRunDefinition.RunRecordsInput, userId: number):Promise<PaginableResponse<Array<BaseRunDefinition.RunRecordListItem>> | null | undefined> {
      let res: PaginableResponse<Array<BaseRunDefinition.RunRecordListItem>> | null | undefined = await post<PaginableResponse<Array<BaseRunDefinition.RunRecordListItem>>>(
        BaseRunUrlConstant.BASE_RUN_V1_GET_RUN_RECORDS,
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

    static async baseRunV1GetrunremindconfigPost(userId: number):Promise<ApiResponse<BaseRunDefinition.RunRemindConfigOutput> | null | undefined> {
      let res: ApiResponse<BaseRunDefinition.RunRemindConfigOutput> | null | undefined = await post<ApiResponse<BaseRunDefinition.RunRemindConfigOutput>>(
        BaseRunUrlConstant.BASE_RUN_V1_GET_RUN_REMIND_CONFIG,
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

    static async baseRunV1InitrunPost(dto: BaseRunDefinition.RunInitInput, ip: string, userId: number):Promise<ApiResponse<BaseRunDefinition.RunInitOutput> | null | undefined> {
      let res: ApiResponse<BaseRunDefinition.RunInitOutput> | null | undefined = await post<ApiResponse<BaseRunDefinition.RunInitOutput>>(
        BaseRunUrlConstant.BASE_RUN_V1_INIT_RUN,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async baseRunV1SaverunnotesPost(dto: BaseRunDefinition.RunRecordMoodInput, userId: number):Promise<ApiResponse<BaseRunDefinition.RunRecordMoodOutput> | null | undefined> {
      let res: ApiResponse<BaseRunDefinition.RunRecordMoodOutput> | null | undefined = await post<ApiResponse<BaseRunDefinition.RunRecordMoodOutput>>(
        BaseRunUrlConstant.BASE_RUN_V1_SAVE_RUN_NOTES,
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

    static async baseRunV1SaverunrecordPost(dto: BaseRunDefinition.RunRecordInput, ip: string, userId: number):Promise<ApiResponse<BaseRunDefinition.IdData> | null | undefined> {
      let res: ApiResponse<BaseRunDefinition.IdData> | null | undefined = await post<ApiResponse<BaseRunDefinition.IdData>>(
        BaseRunUrlConstant.BASE_RUN_V1_SAVE_RUN_RECORD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async baseRunV1SaverunremindPost(dto: BaseRunDefinition.RunRemindInput, ip: string, userId: number):Promise<ApiResponse<BaseRunDefinition.RunRemindOutput> | null | undefined> {
      let res: ApiResponse<BaseRunDefinition.RunRemindOutput> | null | undefined = await post<ApiResponse<BaseRunDefinition.RunRemindOutput>>(
        BaseRunUrlConstant.BASE_RUN_V1_SAVE_RUN_REMIND,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async baseRunV1SaveruntargetPost(dto: BaseRunDefinition.RunTargetInput, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseRunUrlConstant.BASE_RUN_V1_SAVE_RUN_TARGET,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async baseRunV1SaverunvoicetipsPost(dto: BaseRunDefinition.RunVoiceTipsInput, ip: string, userId: number):Promise<ApiResponse<BaseRunDefinition.RunVoiceTipsOutput> | null | undefined> {
      let res: ApiResponse<BaseRunDefinition.RunVoiceTipsOutput> | null | undefined = await post<ApiResponse<BaseRunDefinition.RunVoiceTipsOutput>>(
        BaseRunUrlConstant.BASE_RUN_V1_SAVE_RUN_VOICE_TIPS,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async baseRunV1SyncUDataPost(dto: BaseRunDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseRunDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseRunDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseRunDefinition.SyncDataAppletResponse>>>(
        BaseRunUrlConstant.BASE_RUN_V1_SYNC_DATA_URL,
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

    static async baseRunV1SyncUFinishedUDataPost(dto: BaseRunDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseRunDefinition.RunFinishedOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseRunDefinition.RunFinishedOutput>> | null | undefined = await post<RowResponse<Array<BaseRunDefinition.RunFinishedOutput>>>(
        BaseRunUrlConstant.BASE_RUN_V1_SYNC_FINISHED_DATA_URL,
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

    static async baseRunV1TodoUViewUListPost(input: BaseRunDefinition.RunTodoViewInput, userId: number):Promise<ApiResponse<BaseRunDefinition.RunTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseRunDefinition.RunTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseRunDefinition.RunTodoViewListOutput>>(
        BaseRunUrlConstant.BASE_RUN_V1_TODO_VIEW_LIST_URL,
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


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseRunUrlConstant.CHECKALIVE,
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
