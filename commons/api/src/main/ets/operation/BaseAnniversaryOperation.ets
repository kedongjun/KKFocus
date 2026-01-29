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
import { BaseAnniversaryDefinition } from './../definition/BaseAnniversaryDefinition';
import { BaseAnniversaryUrlConstant } from './../constant/BaseAnniversaryUrlConstant';

export namespace BaseAnniversaryOperation {
  export class AnniversaryControllerV2 {
    static async baseAnniversaryV1BatchaddPost(inputs: Array<BaseAnniversaryDefinition.AnniversaryInputV2>, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V1_BATCH_ADD,
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

    static async baseAnniversaryV1DaterangecountPost(input: BaseAnniversaryDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseAnniversaryDefinition.AnniversaryCountOutput> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.AnniversaryCountOutput> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.AnniversaryCountOutput>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V1_DATE_RANGE_COUNT,
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

    static async baseAnniversaryV1GetanniversaryguidetemplatePost(channelType: string, userId: number):Promise<RowResponse<Array<BaseAnniversaryDefinition.AnniversaryOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseAnniversaryDefinition.AnniversaryOutputV2>> | null | undefined = await post<RowResponse<Array<BaseAnniversaryDefinition.AnniversaryOutputV2>>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V1_GET_ANNIVERSARY_GUIDE_TEMPLATE,
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

    static async baseAnniversaryV1GetapplethistoryPost(idsRequest: BaseAnniversaryDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BaseAnniversaryDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseAnniversaryDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseAnniversaryDefinition.AppletHistoryResponse>>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V1_GET_APPLET_HISTORY,
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

    static async baseAnniversaryV1SearchbytitlePost(input: BaseAnniversaryDefinition.KeywordRequest, userId: number):Promise<RowResponse<Array<BaseAnniversaryDefinition.AnniversaryOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseAnniversaryDefinition.AnniversaryOutputV2>> | null | undefined = await post<RowResponse<Array<BaseAnniversaryDefinition.AnniversaryOutputV2>>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V1_SEARCH_BY_TITLE,
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

    static async baseAnniversaryV1UpdatetimestylePost(input: BaseAnniversaryDefinition.UpdateTimeStyleInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V1_UPDATE_TIME_STYLE,
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

    static async baseAnniversaryV2AddPost(input: BaseAnniversaryDefinition.AnniversaryInputV2, ip: string, userId: number):Promise<ApiResponse<BaseAnniversaryDefinition.AnniversaryOutputV2> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.AnniversaryOutputV2> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.AnniversaryOutputV2>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V2_ADD,
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

    static async baseAnniversaryV2DelanniversarybyidPost(input: BaseAnniversaryDefinition.IdRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V2_DEL_ANNIVERSARY_BY_ID,
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

    static async baseAnniversaryV2FuzzyqueryanniversarybynamePost(input: BaseAnniversaryDefinition.AnniversaryNameInput, userId: number):Promise<RowResponse<Array<BaseAnniversaryDefinition.AnniversaryOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseAnniversaryDefinition.AnniversaryOutputV2>> | null | undefined = await post<RowResponse<Array<BaseAnniversaryDefinition.AnniversaryOutputV2>>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V2_FUZZY_QUERY_ANNIVERSARY_BY_NAME,
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

    static async baseAnniversaryV2GetanniversarybyidPost(input: BaseAnniversaryDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseAnniversaryDefinition.AnniversaryOutputV2> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.AnniversaryOutputV2> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.AnniversaryOutputV2>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V2_GET_ANNIVERSARY_BY_ID,
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

    static async baseAnniversaryV2GetcountPost(userId: number):Promise<ApiResponse<BaseAnniversaryDefinition.CountResponse> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.CountResponse> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.CountResponse>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V2_GET_COUNT,
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

    static async baseAnniversaryV2GetuserallanniversaryPost(userId: number):Promise<RowResponse<Array<BaseAnniversaryDefinition.AnniversaryOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseAnniversaryDefinition.AnniversaryOutputV2>> | null | undefined = await post<RowResponse<Array<BaseAnniversaryDefinition.AnniversaryOutputV2>>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V2_GET_USER_ALL_ANNIVERSARY,
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

    static async baseAnniversaryV2ImportdataPost(data: BaseAnniversaryDefinition.AnniversaryExportData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V2_IMPORT_DATA,
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

    static async baseAnniversaryV2SyncdataPost(syncDataInput: BaseAnniversaryDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseAnniversaryDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseAnniversaryDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseAnniversaryDefinition.SyncDataAppletResponse>>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V2_SYNC_DATA,
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

    static async baseAnniversaryV2TodoviewlistPost(input: BaseAnniversaryDefinition.AnniversaryTodoViewInput, userId: number):Promise<ApiResponse<BaseAnniversaryDefinition.AnniversaryTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.AnniversaryTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.AnniversaryTodoViewListOutput>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V2_TODO_VIEW_LIST,
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

    static async baseAnniversaryV2UpdatePost(input: BaseAnniversaryDefinition.AnniversaryInputV2):Promise<ApiResponse<BaseAnniversaryDefinition.AnniversaryOutputV2> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.AnniversaryOutputV2> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.AnniversaryOutputV2>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V2_UPDATE,
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

    static async baseAnniversaryV2UpdatebackgroundPost(input: BaseAnniversaryDefinition.BackgroundInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V2_UPDATE_BACKGROUND,
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

    static async baseAnniversaryV3AddPost(input: BaseAnniversaryDefinition.AnniversaryInputV2):Promise<ApiResponse<BaseAnniversaryDefinition.AnniversaryOutputV2> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.AnniversaryOutputV2> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.AnniversaryOutputV2>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V3_ADD,
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

    static async baseAnniversaryV3GetanniversarybyidPost(input: BaseAnniversaryDefinition.IdRequest, userId?: number):Promise<ApiResponse<BaseAnniversaryDefinition.AnniversaryOutputV2> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.AnniversaryOutputV2> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.AnniversaryOutputV2>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V3_GET_ANNIVERSARY_BY_ID,
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

    static async baseAnniversaryV3GetuserallanniversaryPost(userId: number):Promise<RowResponse<Array<BaseAnniversaryDefinition.AnniversaryOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseAnniversaryDefinition.AnniversaryOutputV2>> | null | undefined = await post<RowResponse<Array<BaseAnniversaryDefinition.AnniversaryOutputV2>>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V3_GET_USER_ALL_ANNIVERSARY,
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

    static async nativeBaseAnniversaryV2BatchupdateremindtimePost(input: BaseAnniversaryDefinition.BatchUpdateRemindTimeInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAnniversaryUrlConstant.NATIVE_BASE_ANNIVERSARY_V2_BATCH_UPDATE_REMIND_TIME,
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

    static async nativeBaseAnniversaryV2InitanniversaryGet(appVersion: string, channelType: string, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await get<ApiResponse<object>>(
        BaseAnniversaryUrlConstant.NATIVE_BASE_ANNIVERSARY_V2_INIT_ANNIVERSARY,
        {
        },
        {
            "appVersion": appVersion,
            "channelType": channelType,
            "ip": ip,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeBaseAnniversaryV2InitanniversaryPost(appVersion: string, channelType: string, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAnniversaryUrlConstant.NATIVE_BASE_ANNIVERSARY_V2_INIT_ANNIVERSARY,
        {
        },
        {
            "appVersion": appVersion,
            "channelType": channelType,
            "ip": ip,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeBaseAnniversaryV2InitanniversaryHead(appVersion: string, channelType: string, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await head<ApiResponse<object>>(
        BaseAnniversaryUrlConstant.NATIVE_BASE_ANNIVERSARY_V2_INIT_ANNIVERSARY,
        {
        },
        {
            "appVersion": appVersion,
            "channelType": channelType,
            "ip": ip,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeBaseAnniversaryV2InitanniversaryRemove(appVersion: string, channelType: string, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await remove<ApiResponse<object>>(
        BaseAnniversaryUrlConstant.NATIVE_BASE_ANNIVERSARY_V2_INIT_ANNIVERSARY,
        {
        },
        {
            "appVersion": appVersion,
            "channelType": channelType,
            "ip": ip,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeBaseAnniversaryV2InitanniversaryPut(appVersion: string, channelType: string, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await put<ApiResponse<object>>(
        BaseAnniversaryUrlConstant.NATIVE_BASE_ANNIVERSARY_V2_INIT_ANNIVERSARY,
        {
        },
        {
            "appVersion": appVersion,
            "channelType": channelType,
            "ip": ip,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeBaseAnniversaryV2InitanniversaryOptions(appVersion: string, channelType: string, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await options<ApiResponse<object>>(
        BaseAnniversaryUrlConstant.NATIVE_BASE_ANNIVERSARY_V2_INIT_ANNIVERSARY,
        {
        },
        {
            "appVersion": appVersion,
            "channelType": channelType,
            "ip": ip,
            "userId": userId
        },
        {
        },
      );

      return res;
    }

    static async nativeBaseAnniversaryV2InitanniversaryPatch(appVersion: string, channelType: string, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await patch<ApiResponse<object>>(
        BaseAnniversaryUrlConstant.NATIVE_BASE_ANNIVERSARY_V2_INIT_ANNIVERSARY,
        {
        },
        {
            "appVersion": appVersion,
            "channelType": channelType,
            "ip": ip,
            "userId": userId
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
        BaseAnniversaryUrlConstant.CHECKALIVE,
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


  export class AnniversaryController {
    static async baseAnniversaryAddPost(input: BaseAnniversaryDefinition.AnniversaryInput, ip: string, userId: number):Promise<ApiResponse<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_ADD,
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

    static async baseAnniversaryDeletePost(input: BaseAnniversaryDefinition.AnniversaryDeleteInput, userId: number):Promise<ApiResponse<BaseAnniversaryDefinition.AnniversaryDeleteOutput> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.AnniversaryDeleteOutput> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.AnniversaryDeleteOutput>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_DELETE,
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

    static async baseAnniversaryFinishPost(input: BaseAnniversaryDefinition.AnniversaryFinishedInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_FINISH,
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

    static async baseAnniversaryGetanniversaryaheadlistPost(userId: number):Promise<RowResponse<Array<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse>> | null | undefined = await post<RowResponse<Array<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse>>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_GET_ANNIVERSARY_AHEAD_LIST,
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

    static async baseAnniversaryGetanniversarylistPost(userId: number):Promise<RowResponse<Array<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse>> | null | undefined = await post<RowResponse<Array<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse>>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_GET_ANNIVERSARY_LIST,
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

    static async baseAnniversaryGetanniversarylistv2Post(instant: string, ip: string, userId: number):Promise<RowResponse<Array<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse>> | null | undefined = await post<RowResponse<Array<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse>>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_GET_ANNIVERSARY_LIST_V2,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        instant
      );

      return res;
    }

    static async baseAnniversaryGetremindelementsPost(input: BaseAnniversaryDefinition.AnniversaryTodoViewInput, userId: number):Promise<ApiResponse<BaseAnniversaryDefinition.AnniversaryTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.AnniversaryTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.AnniversaryTodoViewListOutput>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_GETREMINDELEMENTS,
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

    static async baseAnniversaryGlobaladdhistoryPost(idsRequest: BaseAnniversaryDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BaseAnniversaryDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseAnniversaryDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseAnniversaryDefinition.AppletHistoryResponse>>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_GLOBAL_ADD_HISTORY,
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

    static async baseAnniversarySelectbyidPost(input: BaseAnniversaryDefinition.AnniversaryQueryInput, userId: number):Promise<ApiResponse<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_SELECT_BY_ID,
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

    static async baseAnniversarySyncUDataPost(syncDataInput: BaseAnniversaryDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseAnniversaryDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseAnniversaryDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseAnniversaryDefinition.SyncDataAppletResponse>>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_SYNC_DATA_URL,
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

    static async baseAnniversarySyncUFinishUDataPost(input: BaseAnniversaryDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseAnniversaryDefinition.SyncDataAppletFinishResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseAnniversaryDefinition.SyncDataAppletFinishResponse>> | null | undefined = await post<RowResponse<Array<BaseAnniversaryDefinition.SyncDataAppletFinishResponse>>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_SYNC_FINISH_DATA_URL,
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

    static async baseAnniversaryTodoUViewUListPost(input: BaseAnniversaryDefinition.AnniversaryTodoViewInput, userId: number):Promise<ApiResponse<BaseAnniversaryDefinition.AnniversaryTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.AnniversaryTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.AnniversaryTodoViewListOutput>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_TODO_VIEW_LIST_URL,
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

    static async baseAnniversaryUpdatePost(input: BaseAnniversaryDefinition.AnniversaryUpdateInput, userId: number):Promise<ApiResponse<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_UPDATE,
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

    static async baseAnniversaryV1AnniversarytemplatePost():Promise<RowResponse<Array<BaseAnniversaryDefinition.AnniversaryTemplate>> | null | undefined> {
      let res: RowResponse<Array<BaseAnniversaryDefinition.AnniversaryTemplate>> | null | undefined = await post<RowResponse<Array<BaseAnniversaryDefinition.AnniversaryTemplate>>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V1_ANNIVERSARY_TEMPLATE,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseAnniversaryV1GetanniversaryidPost(input: BaseAnniversaryDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseAnniversaryDefinition.IdResponse> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.IdResponse> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.IdResponse>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V1_GET_ANNIVERSARY_ID,
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

    static async baseAnniversaryV1ImportdataPost(data: BaseAnniversaryDefinition.AnniversaryExportData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V1_IMPORT_DATA,
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

    static async baseAnniversaryV1MyappletPost(userId: number):Promise<ApiResponse<BaseAnniversaryDefinition.MyAppOutput> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.MyAppOutput> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.MyAppOutput>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V1_MY_APPLET,
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

    static async baseAnniversaryV1ShortcutappletPost(input: BaseAnniversaryDefinition.PaginableRequest, userId: number):Promise<RowResponse<Array<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse>> | null | undefined = await post<RowResponse<Array<BaseAnniversaryDefinition.ShortcutAppletUsingPOSTResponse>>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V1_SHORTCUT_APPLET,
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

    static async baseAnniversaryV2ViewReciprocalPost(input: BaseAnniversaryDefinition.ReciprocalViewRequest, userId: number):Promise<ApiResponse<BaseAnniversaryDefinition.AnniversaryReciprocalViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.AnniversaryReciprocalViewListOutput> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.AnniversaryReciprocalViewListOutput>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_V2_VIEW_RECIPROCAL,
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

    static async baseAnniversaryViewReciprocalPost(input: BaseAnniversaryDefinition.PaginableRequest, userId: number):Promise<ApiResponse<BaseAnniversaryDefinition.AnniversaryReciprocalViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseAnniversaryDefinition.AnniversaryReciprocalViewListOutput> | null | undefined = await post<ApiResponse<BaseAnniversaryDefinition.AnniversaryReciprocalViewListOutput>>(
        BaseAnniversaryUrlConstant.BASE_ANNIVERSARY_VIEW_RECIPROCAL,
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
