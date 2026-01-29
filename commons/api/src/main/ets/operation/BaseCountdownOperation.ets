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
import { BaseCountdownDefinition } from './../definition/BaseCountdownDefinition';
import { BaseCountdownUrlConstant } from './../constant/BaseCountdownUrlConstant';

export namespace BaseCountdownOperation {
  export class CountdownControllerV2 {
    static async baseCountdownV1DaterangecountPost(input: BaseCountdownDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseCountdownDefinition.CountResponse> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountResponse> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountResponse>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V1_DATE_RANGE_COUNT,
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

    static async baseCountdownV1GetcountdownguidetemplatePost(userId: number):Promise<RowResponse<Array<BaseCountdownDefinition.CountdownOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseCountdownDefinition.CountdownOutputV2>> | null | undefined = await post<RowResponse<Array<BaseCountdownDefinition.CountdownOutputV2>>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V1_GET_COUNTDOWN_GUIDE_TEMPLATE,
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

    static async baseCountdownV1SearchbytitlePost(input: BaseCountdownDefinition.KeywordRequest, userId: number):Promise<RowResponse<Array<BaseCountdownDefinition.CountdownOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseCountdownDefinition.CountdownOutputV2>> | null | undefined = await post<RowResponse<Array<BaseCountdownDefinition.CountdownOutputV2>>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V1_SEARCH_BY_TITLE,
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

    static async baseCountdownV1UpdatetimestylePost(input: BaseCountdownDefinition.UpdateTimeStyleInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V1_UPDATE_TIME_STYLE,
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

    static async baseCountdownV2AddPost(input: BaseCountdownDefinition.CountdownInputV2, ip: string, userId: number):Promise<ApiResponse<BaseCountdownDefinition.CountdownOutputV2> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownOutputV2> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownOutputV2>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_ADD,
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

    static async baseCountdownV2BatchaddPost(inputs: Array<BaseCountdownDefinition.CountdownInputV2>, ip: string, userId: number):Promise<BaseCountdownDefinition.IdsResponse | null | undefined> {
      let res: BaseCountdownDefinition.IdsResponse | null | undefined = await post<BaseCountdownDefinition.IdsResponse>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_BATCH_ADD,
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

    static async baseCountdownV2DelcountdownbyidPost(input: BaseCountdownDefinition.IdRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_DEL_COUNTDOWN_BY_ID,
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

    static async baseCountdownV2FuzzyquerycountdownbynamePost(input: BaseCountdownDefinition.CountdownNameInput, userId: number):Promise<RowResponse<Array<BaseCountdownDefinition.CountdownOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseCountdownDefinition.CountdownOutputV2>> | null | undefined = await post<RowResponse<Array<BaseCountdownDefinition.CountdownOutputV2>>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_FUZZY_QUERY_COUNTDOWN_BY_NAME,
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

    static async baseCountdownV2GetcountPost(userId: number):Promise<ApiResponse<BaseCountdownDefinition.CountResponse> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountResponse> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountResponse>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_GET_COUNT,
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

    static async baseCountdownV2GetcountdownbyidPost(input: BaseCountdownDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseCountdownDefinition.CountdownOutputV2> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownOutputV2> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownOutputV2>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_GET_COUNTDOWN_BY_ID,
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

    static async baseCountdownV2GetuserallcountdownPost(userId: number):Promise<RowResponse<Array<BaseCountdownDefinition.CountdownOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseCountdownDefinition.CountdownOutputV2>> | null | undefined = await post<RowResponse<Array<BaseCountdownDefinition.CountdownOutputV2>>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_GET_USER_ALL_COUNTDOWN,
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

    static async baseCountdownV2ImportdataPost(data: BaseCountdownDefinition.CountdownExportData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_IMPORT_DATA,
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

    static async baseCountdownV2TododailyviewlistPost(input: BaseCountdownDefinition.CountdownTodoViewInput, userId: number):Promise<ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_TODO_DAILY_VIEW_LIST,
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

    static async baseCountdownV2TodoviewlistPost(input: BaseCountdownDefinition.CountdownTodoViewInput, userId: number):Promise<ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_TODO_VIEW_LIST,
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

    static async baseCountdownV2UpdatePost(input: BaseCountdownDefinition.CountdownInputV2):Promise<ApiResponse<BaseCountdownDefinition.CountdownOutputV2> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownOutputV2> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownOutputV2>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_UPDATE,
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

    static async baseCountdownV2UpdatebackgroundPost(input: BaseCountdownDefinition.BackgroundInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_UPDATE_BACKGROUND,
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

    static async baseCountdownV2UpdatedisplayPost(input: BaseCountdownDefinition.UpdateDisplayInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_UPDATE_DISPLAY,
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

    static async baseCountdownV3AddPost(input: BaseCountdownDefinition.CountdownInputV2):Promise<ApiResponse<BaseCountdownDefinition.CountdownOutputV2> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownOutputV2> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownOutputV2>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V3_ADD,
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

    static async baseCountdownV3GetcountdownbyidPost(input: BaseCountdownDefinition.IdRequest, userId?: number):Promise<ApiResponse<BaseCountdownDefinition.CountdownOutputV2> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownOutputV2> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownOutputV2>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V3_GET_COUNTDOWN_BY_ID,
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

    static async baseCountdownV3GetuserallcountdownPost(userId: number):Promise<RowResponse<Array<BaseCountdownDefinition.CountdownOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseCountdownDefinition.CountdownOutputV2>> | null | undefined = await post<RowResponse<Array<BaseCountdownDefinition.CountdownOutputV2>>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V3_GET_USER_ALL_COUNTDOWN,
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

    static async nativeBaseCountdownV2BatchupdateremindtimePost(input: BaseCountdownDefinition.BatchUpdateRemindTimeInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseCountdownUrlConstant.NATIVE_BASE_COUNTDOWN_V2_BATCH_UPDATE_REMIND_TIME,
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
        BaseCountdownUrlConstant.CHECKALIVE,
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


  export class CountdownController {
    static async baseCountdownAddorupdatePost(input: BaseCountdownDefinition.UpdateCountdownUsingPOSTRequestBody, ip: string, userId: number):Promise<ApiResponse<BaseCountdownDefinition.AddOrUpdateCountdownOutput> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.AddOrUpdateCountdownOutput> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.AddOrUpdateCountdownOutput>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_ADD_OR_UPDATE,
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

    static async baseCountdownDeletePost(input: BaseCountdownDefinition.CountdownIdInput):Promise<ApiResponse<BaseCountdownDefinition.CountdownDeleteOutput> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownDeleteOutput> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownDeleteOutput>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_DELETE,
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

    static async baseCountdownFinishPost(input: BaseCountdownDefinition.CountdownFinishedInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_FINISH,
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

    static async baseCountdownFinishSyncUDataPost(syncDataInput: BaseCountdownDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseCountdownDefinition.SyncDataAppletFinishResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseCountdownDefinition.SyncDataAppletFinishResponse>> | null | undefined = await post<RowResponse<Array<BaseCountdownDefinition.SyncDataAppletFinishResponse>>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_FINISH_SYNC_DATA_URL,
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

    static async baseCountdownGetcountdownPost(input: BaseCountdownDefinition.CountdownIdInput, userId: number):Promise<ApiResponse<BaseCountdownDefinition.GetCountdownUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.GetCountdownUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.GetCountdownUsingPOSTRsp>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_GET_COUNTDOWN,
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

    static async baseCountdownGetcountdownlistPost(userId: number):Promise<ApiResponse<BaseCountdownDefinition.CountdownListOutput> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownListOutput> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownListOutput>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_GET_COUNTDOWN_LIST,
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

    static async baseCountdownGetremindelementsPost(input: BaseCountdownDefinition.CountdownTodoViewInput, userId: number):Promise<ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_GETREMINDELEMENTS,
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

    static async baseCountdownSortcountdownPost(input: BaseCountdownDefinition.CountdownIdsInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_SORT_COUNTDOWN,
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

    static async baseCountdownSyncUDataPost(syncDataInput: BaseCountdownDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseCountdownDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseCountdownDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseCountdownDefinition.SyncDataAppletResponse>>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_SYNC_DATA_URL,
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

    static async baseCountdownTodoUViewUListPost(input: BaseCountdownDefinition.CountdownTodoViewInput, userId: number):Promise<ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_TODO_VIEW_LIST_URL,
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

    static async baseCountdownV1CountdowntemplatePost():Promise<RowResponse<Array<BaseCountdownDefinition.CountDownTemplateItem>> | null | undefined> {
      let res: RowResponse<Array<BaseCountdownDefinition.CountDownTemplateItem>> | null | undefined = await post<RowResponse<Array<BaseCountdownDefinition.CountDownTemplateItem>>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V1_COUNTDOWN_TEMPLATE,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseCountdownV1GetcountdownidPost(input: BaseCountdownDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseCountdownDefinition.IdResponse> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.IdResponse> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.IdResponse>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V1_GET_COUNTDOWN_ID,
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

    static async baseCountdownV1ImportdataPost(data: BaseCountdownDefinition.CountdownExportData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V1_IMPORT_DATA,
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

    static async baseCountdownV1MyappletPost(userId: number):Promise<ApiResponse<BaseCountdownDefinition.MyAppletUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.MyAppletUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.MyAppletUsingPOSTRsp>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V1_MY_APPLET,
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

    static async baseCountdownV1SelectMByMIdsPost(ids: BaseCountdownDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BaseCountdownDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseCountdownDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseCountdownDefinition.AppletHistoryResponse>>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V1_SELECT_BY_IDS_URL,
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

    static async baseCountdownV1ShortcutappletPost(userId: number):Promise<RowResponse<Array<BaseCountdownDefinition.ShortcutAppletUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseCountdownDefinition.ShortcutAppletUsingPOSTRsp>> | null | undefined = await post<RowResponse<Array<BaseCountdownDefinition.ShortcutAppletUsingPOSTRsp>>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V1_SHORTCUT_APPLET,
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

    static async baseCountdownV2AddorupdatePost(input: BaseCountdownDefinition.UpdateCountdownUsingPOSTRequestBody, ip: string, userId: number):Promise<ApiResponse<BaseCountdownDefinition.AddOrUpdateCountdownOutput> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.AddOrUpdateCountdownOutput> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.AddOrUpdateCountdownOutput>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_ADD_OR_UPDATE,
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

    static async baseCountdownV2GetapplethistoryPost(idsRequest: BaseCountdownDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BaseCountdownDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseCountdownDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseCountdownDefinition.AppletHistoryResponse>>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_GET_APPLET_HISTORY,
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

    static async baseCountdownV2GetremindelementsPost(input: BaseCountdownDefinition.CountdownTodoViewInput, userId: number):Promise<ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_GETREMINDELEMENTS,
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

    static async baseCountdownV2TodoUViewUListPost(input: BaseCountdownDefinition.CountdownTodoViewInput, userId: number):Promise<ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_TODO_VIEW_LIST_URL,
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

    static async baseCountdownV2ViewReciprocalPost(input: BaseCountdownDefinition.ReciprocalViewRequest, userId: number):Promise<ApiResponse<BaseCountdownDefinition.CountdownReciprocalViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownReciprocalViewListOutput> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownReciprocalViewListOutput>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V2_VIEW_RECIPROCAL,
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

    static async baseCountdownV3BatchaddPost(inputList: Array<BaseCountdownDefinition.UpdateCountdownUsingPOSTRequestBody>, ip: string, userId: number):Promise<ApiResponse<BaseCountdownDefinition.CountdownOutputIds> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownOutputIds> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownOutputIds>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V3_BATCH_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        inputList
      );

      return res;
    }

    static async baseCountdownV3TodoUViewUListPost(input: BaseCountdownDefinition.CountdownTodoViewInput, userId: number):Promise<ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownTodoViewListOutput>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_V3_TODO_VIEW_LIST_URL,
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

    static async baseCountdownViewReciprocalPost(input: BaseCountdownDefinition.PaginableRequest, userId: number):Promise<ApiResponse<BaseCountdownDefinition.CountdownReciprocalViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseCountdownDefinition.CountdownReciprocalViewListOutput> | null | undefined = await post<ApiResponse<BaseCountdownDefinition.CountdownReciprocalViewListOutput>>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN_VIEW_RECIPROCAL,
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

    static async baseCountdownIdGet(id: number):Promise<string | null | undefined> {
      let res: string | null | undefined = await get<string>(
        BaseCountdownUrlConstant.BASE_COUNTDOWN__ID,
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
}
