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
import { BaseFestivalDefinition } from './../definition/BaseFestivalDefinition';
import { BaseFestivalUrlConstant } from './../constant/BaseFestivalUrlConstant';

export namespace BaseFestivalOperation {
  export class FestivalCustomController {
    static async baseFestivalV1CustomAddPost(input: BaseFestivalDefinition.FestivalCustomInput, ip: string, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalCustomOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalCustomOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalCustomOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_CUSTOM_ADD,
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

    static async baseFestivalV1CustomBatchaddfestivalbytemplatePost(input: BaseFestivalDefinition.FestivalCustomAddByTemplateInput, ip: string, userId: number):Promise<BaseFestivalDefinition.IdsResponse | null | undefined> {
      let res: BaseFestivalDefinition.IdsResponse | null | undefined = await post<BaseFestivalDefinition.IdsResponse>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_CUSTOM_BATCH_ADD_FESTIVAL_BY_TEMPLATE,
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

    static async baseFestivalV1CustomDelfestivalcustombyidPost(input: BaseFestivalDefinition.IdRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_CUSTOM_DEL_FESTIVAL_CUSTOM_BY_ID,
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

    static async baseFestivalV1CustomFinishPost(input: BaseFestivalDefinition.FestivalCustomFinishedInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_CUSTOM_FINISH,
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

    static async baseFestivalV1CustomFuzzyqueryfestivalcustombynamePost(input: BaseFestivalDefinition.FestivalCustomNameInput, userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutput>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutput>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_CUSTOM_FUZZY_QUERY_FESTIVAL_CUSTOM_BY_NAME,
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

    static async baseFestivalV1CustomGetfestivalcustombyidPost(input: BaseFestivalDefinition.IdRequest, userId?: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalCustomOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalCustomOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalCustomOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_CUSTOM_GET_FESTIVAL_CUSTOM_BY_ID,
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

    static async baseFestivalV1CustomGetuserallfestivalcustomPost(ip: string, userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutput>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutput>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_CUSTOM_GET_USER_ALL_FESTIVAL_CUSTOM,
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

    static async baseFestivalV1CustomGetwebremindlistPost(input: BaseFestivalDefinition.FestivalTodoViewInput, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalTodoViewListOuput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalTodoViewListOuput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalTodoViewListOuput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_CUSTOM_GET_WEB_REMIND_LIST,
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

    static async baseFestivalV1CustomSyncfinishdataPost(input: BaseFestivalDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.SyncDataAppletFinishResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.SyncDataAppletFinishResponse>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.SyncDataAppletFinishResponse>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_CUSTOM_SYNC_FINISH_DATA,
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

    static async baseFestivalV1CustomSyncuserdataPost(syncDataInput: BaseFestivalDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.SyncDataAppletResponse>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_CUSTOM_SYNC_USER_DATA,
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

    static async baseFestivalV1CustomUpdatePost(input: BaseFestivalDefinition.FestivalCustomInput, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalCustomOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalCustomOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalCustomOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_CUSTOM_UPDATE,
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

    static async baseFestivalV1CustomUpdatebackgroundPost(input: BaseFestivalDefinition.BackgroundInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_CUSTOM_UPDATE_BACKGROUND,
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

    static async baseFestivalV1GetdatabyidPost(idRequest: BaseFestivalDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseFestivalDefinition.IdResponse> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.IdResponse> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.IdResponse>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_GET_DATA_BY_ID,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        idRequest
      );

      return res;
    }

    static async baseFestivalV1SystemSyncsystemdataPost(userId: number, version: BaseFestivalDefinition.FestivalVersion):Promise<ApiResponse<BaseFestivalDefinition.FestivalSystemSyncOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalSystemSyncOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalSystemSyncOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_SYSTEM_SYNC_SYSTEM_DATA,
        {
        },
        {
        },
        {
            "user_id": userId,
        },
        version
      );

      return res;
    }

    static async baseFestivalV2CustomAddPost(input: BaseFestivalDefinition.FestivalCustomInput, ip: string, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalCustomOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalCustomOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalCustomOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V2_CUSTOM_ADD,
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

    static async baseFestivalV2CustomBatchaddfestivalbytemplatePost(input: BaseFestivalDefinition.FestivalCustomAddByTemplateInput, ip: string, userId: number):Promise<BaseFestivalDefinition.IdsResponse | null | undefined> {
      let res: BaseFestivalDefinition.IdsResponse | null | undefined = await post<BaseFestivalDefinition.IdsResponse>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V2_CUSTOM_BATCH_ADD_FESTIVAL_BY_TEMPLATE,
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

    static async baseFestivalV2CustomGetfestivalcustombyidPost(input: BaseFestivalDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalCustomOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalCustomOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalCustomOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V2_CUSTOM_GET_FESTIVAL_CUSTOM_BY_ID,
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

    static async baseFestivalV2CustomGetuserallfestivalcustomPost(ip: string, userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutput>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutput>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V2_CUSTOM_GET_USER_ALL_FESTIVAL_CUSTOM,
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

    static async baseFestivalV2CustomSyncuserdataPost(syncDataInput: BaseFestivalDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.SyncDataAppletResponse>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V2_CUSTOM_SYNC_USER_DATA,
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

    static async baseFestivalV2GetapplethistorybyidsPost(ids: BaseFestivalDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.AppletHistoryResponse>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V2_GET_APPLET_HISTORY_BY_IDS,
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

    static async baseFestivalV2SystemGetfestivalselectlistPost():Promise<ApiResponse<BaseFestivalDefinition.FestivalSelectOutputList> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalSelectOutputList> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalSelectOutputList>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V2_SYSTEM_GET_FESTIVAL_SELECT_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseFestivalV2SystemSyncsystemdataPost(userId: number, version: BaseFestivalDefinition.FestivalVersion):Promise<ApiResponse<BaseFestivalDefinition.FestivalSystemSyncOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalSystemSyncOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalSystemSyncOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V2_SYSTEM_SYNC_SYSTEM_DATA,
        {
        },
        {
        },
        {
            "user_id": userId,
        },
        version
      );

      return res;
    }

    static async baseFestivalV3CustomBatchaddfestivalbytemplatePost(input: BaseFestivalDefinition.FestivalCustomAddByTemplateInput, ip: string, userId: number):Promise<BaseFestivalDefinition.IdsResponse | null | undefined> {
      let res: BaseFestivalDefinition.IdsResponse | null | undefined = await post<BaseFestivalDefinition.IdsResponse>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V3_CUSTOM_BATCH_ADD_FESTIVAL_BY_TEMPLATE,
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

    static async baseFestivalV3GetapplethistoryPost(idsRequest: BaseFestivalDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.AppletHistoryResponse>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V3_GET_APPLET_HISTORY,
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

    static async baseFestivalV3TodoUViewUListPost(input: BaseFestivalDefinition.FestivalTodoViewInput, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalTodoViewListOuput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalTodoViewListOuput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalTodoViewListOuput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V3_TODO_VIEW_LIST_URL,
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

    static async baseFestivalV4CustomBatchaddfestivalbytemplatePost(input: BaseFestivalDefinition.FestivalCustomAddByTemplateInput, ip: string, userId: number):Promise<BaseFestivalDefinition.IdsResponse | null | undefined> {
      let res: BaseFestivalDefinition.IdsResponse | null | undefined = await post<BaseFestivalDefinition.IdsResponse>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V4_CUSTOM_BATCH_ADD_FESTIVAL_BY_TEMPLATE,
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

    static async nativeBaseFestivalV1CustomBatchupdateremindtimePost(input: BaseFestivalDefinition.BatchUpdateRemindTimeInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFestivalUrlConstant.NATIVE_BASE_FESTIVAL_V1_CUSTOM_BATCH_UPDATE_REMIND_TIME,
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


  export class FestivalFinishController {
    static async baseFestivalFinishPost(input: BaseFestivalDefinition.FestivalFinishedInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_FINISH,
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


  export class FestivalCustomControllerV6 {
    static async baseFestivalV1CustomGetfestivalguidetemplatePost(userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutputV6>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutputV6>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutputV6>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_CUSTOM_GET_FESTIVAL_GUIDE_TEMPLATE,
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

    static async baseFestivalV1CustomUpdatetimestylePost(input: BaseFestivalDefinition.UpdateTimeStyleInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_CUSTOM_UPDATE_TIME_STYLE,
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

    static async baseFestivalV1DaterangecountPost(input: BaseFestivalDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseFestivalDefinition.CountResponse> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.CountResponse> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.CountResponse>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_DATE_RANGE_COUNT,
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

    static async baseFestivalV1SearchbytitlePost(input: BaseFestivalDefinition.KeywordRequest, userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutputV6>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutputV6>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutputV6>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_SEARCH_BY_TITLE,
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

    static async baseFestivalV5CustomBatchaddfestivalbytemplatePost(input: BaseFestivalDefinition.FestivalCustomAddByTemplateInput):Promise<ApiResponse<BaseFestivalDefinition.BatchFestivalOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.BatchFestivalOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.BatchFestivalOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V5_CUSTOM_BATCH_ADD_FESTIVAL_BY_TEMPLATE,
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

    static async baseFestivalV6CustomAddPost(input: BaseFestivalDefinition.FestivalCustomInputV6):Promise<ApiResponse<BaseFestivalDefinition.FestivalCustomOutputV6> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalCustomOutputV6> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalCustomOutputV6>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V6_CUSTOM_ADD,
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

    static async baseFestivalV6CustomBatchaddPost(inputs: Array<BaseFestivalDefinition.FestivalCustomInputV6>, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V6_CUSTOM_BATCH_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        inputs
      );

      return res;
    }

    static async baseFestivalV6CustomFuzzyqueryfestivalcustombynamePost(input: BaseFestivalDefinition.FestivalCustomNameInput, userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutputV6>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutputV6>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutputV6>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V6_CUSTOM_FUZZY_QUERY_FESTIVAL_CUSTOM_BY_NAME,
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

    static async baseFestivalV6CustomGetcountPost(userId: number):Promise<ApiResponse<BaseFestivalDefinition.CountResponse> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.CountResponse> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.CountResponse>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V6_CUSTOM_GET_COUNT,
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

    static async baseFestivalV6CustomGetfestivalcustombyidPost(input: BaseFestivalDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalCustomOutputV6> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalCustomOutputV6> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalCustomOutputV6>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V6_CUSTOM_GET_FESTIVAL_CUSTOM_BY_ID,
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

    static async baseFestivalV6CustomGetuserallfestivalcustomPost(ip: string, userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutputV6>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutputV6>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutputV6>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V6_CUSTOM_GET_USER_ALL_FESTIVAL_CUSTOM,
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

    static async baseFestivalV6CustomUpdatePost(input: BaseFestivalDefinition.FestivalCustomInputV6):Promise<ApiResponse<BaseFestivalDefinition.FestivalCustomOutputV6> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalCustomOutputV6> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalCustomOutputV6>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V6_CUSTOM_UPDATE,
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

    static async baseFestivalV7CustomGetuserallfestivalcustomPost(ip: string, userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutputV6>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutputV6>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.FestivalCustomOutputV6>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V7_CUSTOM_GET_USER_ALL_FESTIVAL_CUSTOM,
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
  }


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseFestivalUrlConstant.CHECKALIVE,
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


  export class FestivalFollowController {
    static async baseFestivalFollowDeletePost(input: BaseFestivalDefinition.FestivalFollowIdInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_FOLLOW_DELETE,
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

    static async baseFestivalFollowDeletefollowfestivalbyidPost(input: BaseFestivalDefinition.FestivalDeleteIdInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_FOLLOW_DELETE_FOLLOW_FESTIVAL_BY_ID,
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

    static async baseFestivalFollowFollowfestivalbyfestivalidPost(input: BaseFestivalDefinition.FestivalDeleteIdInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_FOLLOW_FOLLOW_FESTIVAL_BY_FESTIVAL_ID,
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

    static async baseFestivalFollowGetfestivalfollowlistPost(ip: string, userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.FestivalRuleOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.FestivalRuleOutput>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.FestivalRuleOutput>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_FOLLOW_GET_FESTIVAL_FOLLOW_LIST,
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

    static async baseFestivalFollowGetfestivalselectlistPost(userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalSelectOutputList> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalSelectOutputList> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalSelectOutputList>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_FOLLOW_GET_FESTIVAL_SELECT_LIST,
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

    static async baseFestivalFollowInsertorupdatePost(input: BaseFestivalDefinition.FestivalFollowInsertOrUpdateInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_FOLLOW_INSERT_OR_UPDATE,
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

    static async baseFestivalV1ExportPost(input: BaseFestivalDefinition.FestivalTransferCondition, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalTransferData> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalTransferData> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalTransferData>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_EXPORT,
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

    static async baseFestivalV1ImportPost(input: BaseFestivalDefinition.FestivalTransferData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_IMPORT,
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

    static async baseFestivalV2ImportPost(input: BaseFestivalDefinition.FestivalTransferData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V2_IMPORT,
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


  export class FestivalController {
    static async baseFestivalFinishSyncUDataPost(input: BaseFestivalDefinition.SyncDataRequest, ip: string, userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.SyncDataAppletFinishResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.SyncDataAppletFinishResponse>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.SyncDataAppletFinishResponse>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_FINISH_SYNC_DATA_URL,
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

    static async baseFestivalGetcalendarPost(input: BaseFestivalDefinition.FestivalCalendarInput):Promise<ApiResponse<BaseFestivalDefinition.CalendarMonthOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.CalendarMonthOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.CalendarMonthOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_GET_CALENDAR,
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

    static async baseFestivalHistorytodaysPost(input: BaseFestivalDefinition.HistoryTodayInput):Promise<ApiResponse<BaseFestivalDefinition.HistoryTodayListOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.HistoryTodayListOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.HistoryTodayListOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_HISTORYTODAYS,
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

    static async baseFestivalTodoUViewUListPost(input: BaseFestivalDefinition.FestivalTodoViewInput, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalTodoViewListOuput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalTodoViewListOuput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalTodoViewListOuput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_TODO_VIEW_LIST_URL,
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

    static async baseFestivalV1HistorytodaydetailPost(input: BaseFestivalDefinition.HistoryTodayDetailInput):Promise<ApiResponse<BaseFestivalDefinition.HistoryTodayDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.HistoryTodayDetailOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.HistoryTodayDetailOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_HISTORY_TODAY_DETAIL,
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

    static async baseFestivalV1InitFestivalruleGet():Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await get<ApiResponse<object>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_INIT_FESTIVAL_RULE,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseFestivalV1InitRestYearGet(year: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await get<ApiResponse<object>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_INIT_REST__YEAR,
        {
            "year": year
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseFestivalV2TodoUViewUListPost(input: BaseFestivalDefinition.FestivalTodoViewInput, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalTodoViewListOuput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalTodoViewListOuput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalTodoViewListOuput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V2_TODO_VIEW_LIST_URL,
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

    static async baseFestivalViewReciprocalPost(input: BaseFestivalDefinition.PaginableRequest, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalReciprocalViewListOuput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalReciprocalViewListOuput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalReciprocalViewListOuput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_VIEW_RECIPROCAL,
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

    static async baseFestivalViewV1GetperpetualcalendarviewPost(input: BaseFestivalDefinition.PerpetualCalendarViewInput, userId: number):Promise<ApiResponse<BaseFestivalDefinition.PerpetualCalendarViewOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.PerpetualCalendarViewOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.PerpetualCalendarViewOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_VIEW_V1_GET_PERPETUAL_CALENDAR_VIEW,
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

    static async baseFestivalViewV2ReciprocalPost(input: BaseFestivalDefinition.PaginableRequest, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalReciprocalViewListOuput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalReciprocalViewListOuput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalReciprocalViewListOuput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_VIEW_V2_RECIPROCAL,
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

    static async baseFestivalViewV3ReciprocalPost(input: BaseFestivalDefinition.PaginableRequest, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalReciprocalViewListOuput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalReciprocalViewListOuput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalReciprocalViewListOuput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_VIEW_V3_RECIPROCAL,
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

    static async baseFestivalViewV4ReciprocalPost(input: BaseFestivalDefinition.ReciprocalViewRequest, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalReciprocalViewListOuput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalReciprocalViewListOuput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalReciprocalViewListOuput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_VIEW_V4_RECIPROCAL,
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

    static async baseFestivalIdGet(id: number):Promise<string | null | undefined> {
      let res: string | null | undefined = await get<string>(
        BaseFestivalUrlConstant.BASE_FESTIVAL__ID,
        {
            "id": id
        },
        {
        },
        {
        },
      );

      return res;
    }
  }


  export class PerpetualCalendarController {
    static async baseFestivalPerpetualcalendarGetbydatePost(input: BaseFestivalDefinition.PerpetualCalendarInput):Promise<ApiResponse<BaseFestivalDefinition.PerpetualCalendarListOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.PerpetualCalendarListOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.PerpetualCalendarListOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_PERPETUAL_CALENDAR_GET_BY_DATE,
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

    static async baseFestivalV1GetperpetualcalendardetailPost(input: BaseFestivalDefinition.PerpetualCalendarDetailInput):Promise<ApiResponse<BaseFestivalDefinition.PerpetualCalendarDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.PerpetualCalendarDetailOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.PerpetualCalendarDetailOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_V1_GET_PERPETUAL_CALENDAR_DETAIL,
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


  export class FestivalRuleController {
    static async baseFestivalGetdefaultfestivalPost():Promise<RowResponse<Array<BaseFestivalDefinition.FestivalRuleOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.FestivalRuleOutput>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.FestivalRuleOutput>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_GET_DEFAULT_FESTIVAL,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseFestivalGetfestivalbydatescopePost(input: BaseFestivalDefinition.FestivalRuleDateScopeInput, userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.FestivalRuleOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.FestivalRuleOutput>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.FestivalRuleOutput>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_GET_FESTIVAL_BY_DATE_SCOPE,
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

    static async baseFestivalGetfestivalbyidPost(input: BaseFestivalDefinition.FestivalOutputByIdInput, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalRuleOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalRuleOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalRuleOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_GET_FESTIVAL_BY_ID,
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

    static async baseFestivalGetfestivalbynamePost(input: BaseFestivalDefinition.FestivalSingleInput, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalRuleOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalRuleOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalRuleOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_GET_FESTIVAL_BY_NAME,
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

    static async baseFestivalGetfestivallistPost(input: BaseFestivalDefinition.FestivalRuleInput):Promise<ApiResponse<BaseFestivalDefinition.CalendarMonthOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.CalendarMonthOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.CalendarMonthOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_GET_FESTIVAL_LIST,
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

    static async baseFestivalGetfestivallistsimplePost(input: BaseFestivalDefinition.FestivalRuleInput):Promise<ApiResponse<BaseFestivalDefinition.CalendarMonthOutput> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.CalendarMonthOutput> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.CalendarMonthOutput>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_GET_FESTIVAL_LIST_SIMPLE,
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

    static async baseFestivalGetfestivalnamelistPost(userId: number):Promise<RowResponse<Array<string>> | null | undefined> {
      let res: RowResponse<Array<string>> | null | undefined = await post<RowResponse<Array<string>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_GET_FESTIVAL_NAME_LIST,
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

    static async baseFestivalSyncUFestivalUFollowUDataPost(syncDataInput: BaseFestivalDefinition.SyncDataRequest, userId: number):Promise<ApiResponse<BaseFestivalDefinition.FestivalFollowForSync> | null | undefined> {
      let res: ApiResponse<BaseFestivalDefinition.FestivalFollowForSync> | null | undefined = await post<ApiResponse<BaseFestivalDefinition.FestivalFollowForSync>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_SYNC_FESTIVAL_FOLLOW_DATA_URL,
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

    static async baseFestivalSyncUUserUFestivalUDataPost(syncDataInput: BaseFestivalDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseFestivalDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseFestivalDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseFestivalDefinition.SyncDataAppletResponse>>>(
        BaseFestivalUrlConstant.BASE_FESTIVAL_SYNC_USER_FESTIVAL_DATA_URL,
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
}
