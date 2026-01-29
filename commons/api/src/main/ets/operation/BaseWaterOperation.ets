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
import { BaseWaterDefinition } from './../definition/BaseWaterDefinition';
import { BaseWaterUrlConstant } from './../constant/BaseWaterUrlConstant';

export namespace BaseWaterOperation {
  export class WaterConfigController {
    static async baseWaterV1ConfigGetwaterconfigPost(userId: number):Promise<ApiResponse<BaseWaterDefinition.GetWaterConfigOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.GetWaterConfigOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.GetWaterConfigOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CONFIG_GET_WATER_CONFIG,
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

    static async baseWaterV1ConfigGetwatershortcutPost(userId: number):Promise<ApiResponse<BaseWaterDefinition.GetWaterShortcutOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.GetWaterShortcutOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.GetWaterShortcutOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CONFIG_GET_WATER_SHORTCUT,
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

    static async baseWaterV1ConfigInitwaterconfigPost(input: BaseWaterDefinition.InitWaterConfigInput, ip: string, userId: number):Promise<ApiResponse<BaseWaterDefinition.WaterConfigOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.WaterConfigOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.WaterConfigOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CONFIG_INIT_WATER_CONFIG,
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

    static async baseWaterV1ConfigUpdatewaterconfigPost(input: BaseWaterDefinition.UpdateWaterConfigInput, userId: number):Promise<ApiResponse<BaseWaterDefinition.WaterConfigOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.WaterConfigOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.WaterConfigOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CONFIG_UPDATE_WATER_CONFIG,
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

    static async baseWaterV1GetremindelementsPost(input: BaseWaterDefinition.WaterTodoViewInput, userId: number):Promise<ApiResponse<BaseWaterDefinition.WaterTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.WaterTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.WaterTodoViewListOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V1_GET_REMIND_ELEMENTS,
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

    static async baseWaterV1TodoUViewUListPost(userId: number):Promise<ApiResponse<BaseWaterDefinition.WaterTodoViewItemListOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.WaterTodoViewItemListOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.WaterTodoViewItemListOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V1_TODO_VIEW_LIST_URL,
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

    static async baseWaterV2ConfigGetwaterconfigPost(userId: number):Promise<ApiResponse<BaseWaterDefinition.GetWaterConfigOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.GetWaterConfigOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.GetWaterConfigOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V2_CONFIG_GET_WATER_CONFIG,
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
  }


  export class SyncWaterConfigController {
    static async baseWaterV1SyncwaterconfigPost(dto: BaseWaterDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseWaterDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseWaterDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseWaterDefinition.SyncDataAppletResponse>>>(
        BaseWaterUrlConstant.BASE_WATER_V1_SYNC_WATER_CONFIG,
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
  }


  export class WaterLogControllerV2 {
    static async baseWaterV1LogGetitemdetailPost(input: BaseWaterDefinition.GetItemDetailInput, userId: number):Promise<ApiResponse<BaseWaterDefinition.WaterLogDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.WaterLogDetailOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.WaterLogDetailOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V1_LOG_GET_ITEM_DETAIL,
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

    static async baseWaterV2LogAddlogPost(input: BaseWaterDefinition.WaterLogInputV2):Promise<ApiResponse<BaseWaterDefinition.WaterLogOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.WaterLogOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.WaterLogOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V2_LOG_ADD_LOG,
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

    static async baseWaterV2LogDellogPost(input: BaseWaterDefinition.DelWaterLogInput):Promise<ApiResponse<BaseWaterDefinition.WaterLogOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.WaterLogOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.WaterLogOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V2_LOG_DEL_LOG,
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

    static async baseWaterV2LogGetapplethistoryPost(input: BaseWaterDefinition.WaterAppletHistoryInput, userId: number):Promise<RowResponse<Array<BaseWaterDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseWaterDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseWaterDefinition.AppletHistoryResponse>>>(
        BaseWaterUrlConstant.BASE_WATER_V2_LOG_GET_APPLET_HISTORY,
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

    static async baseWaterV2LogGetlogbydayPost(input: BaseWaterDefinition.GetLogByDayInput, userId?: number):Promise<ApiResponse<BaseWaterDefinition.GetWaterLogOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.GetWaterLogOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.GetWaterLogOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V2_LOG_GET_LOG_BY_DAY,
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

    static async baseWaterV2LogGlobaladdlogPost(input: BaseWaterDefinition.WaterLogInputV3):Promise<ApiResponse<BaseWaterDefinition.WaterLogDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.WaterLogDetailOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.WaterLogDetailOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V2_LOG_GLOBAL_ADD_LOG,
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

    static async baseWaterV2LogHistorydatacountPost(userId: number):Promise<ApiResponse<Map<string, number>> | null | undefined> {
      let res: ApiResponse<Map<string, number>> | null | undefined = await post<ApiResponse<Map<string, number>>>(
        BaseWaterUrlConstant.BASE_WATER_V2_LOG_HISTORY_DATA_COUNT,
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

    static async baseWaterV2LogIosbatchsavePost(input: BaseWaterDefinition.WaterLogBatchInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWaterUrlConstant.BASE_WATER_V2_LOG_IOS_BATCH_SAVE,
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

    static async baseWaterV2LogLogsbyareaPost(input: BaseWaterDefinition.LogsByAreaDayInput, userId?: number):Promise<RowResponse<Array<BaseWaterDefinition.GetWaterLogOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWaterDefinition.GetWaterLogOutput>> | null | undefined = await post<RowResponse<Array<BaseWaterDefinition.GetWaterLogOutput>>>(
        BaseWaterUrlConstant.BASE_WATER_V2_LOG_LOGS_BY_AREA,
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

    static async baseWaterV2LogMemorialdataPost(input: BaseWaterDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseWaterDefinition.WaterPageOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.WaterPageOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.WaterPageOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V2_LOG_MEMORIAL_DATA,
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

    static async baseWaterV2LogUpdatelogPost(input: BaseWaterDefinition.UpdateWaterLogInput):Promise<ApiResponse<BaseWaterDefinition.UpdateWaterLogOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.UpdateWaterLogOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.UpdateWaterLogOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V2_LOG_UPDATE_LOG,
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


  export class WaterAnalysisController {
    static async baseWaterV1ReportAreareportPost(input: BaseWaterDefinition.TimeAreaReportInput, userId?: number):Promise<ApiResponse<BaseWaterDefinition.WaterLogReportViewOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.WaterLogReportViewOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.WaterLogReportViewOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V1_REPORT_AREA_REPORT,
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

    static async baseWaterV1ReportDayreportPost(input: BaseWaterDefinition.DayReportInput, userId?: number):Promise<ApiResponse<BaseWaterDefinition.WaterLogReportViewOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.WaterLogReportViewOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.WaterLogReportViewOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V1_REPORT_DAY_REPORT,
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

    static async baseWaterV1ReportGlobaldayreportPost(input: BaseWaterDefinition.DayReportInput):Promise<ApiResponse<BaseWaterDefinition.WaterLogReportViewOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.WaterLogReportViewOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.WaterLogReportViewOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V1_REPORT_GLOBAL_DAY_REPORT,
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

    static async baseWaterV1ReportYearreportPost(input: BaseWaterDefinition.YearReportInput, userId?: number):Promise<ApiResponse<BaseWaterDefinition.WaterLogReportViewOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.WaterLogReportViewOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.WaterLogReportViewOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V1_REPORT_YEAR_REPORT,
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
  }


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseWaterUrlConstant.CHECKALIVE,
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


  export class WaterClassifyController {
    static async baseWaterV1ClassifyAddwaterclassifyPost(input: BaseWaterDefinition.AddWaterClassifyInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CLASSIFY_ADD_WATER_CLASSIFY,
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

    static async baseWaterV1ClassifyGetsystemcustomwaterclassifyPost(input: BaseWaterDefinition.WaterClassifyInput, userId: number):Promise<RowResponse<Array<BaseWaterDefinition.WaterClassifyOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWaterDefinition.WaterClassifyOutput>> | null | undefined = await post<RowResponse<Array<BaseWaterDefinition.WaterClassifyOutput>>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CLASSIFY_GET_SYSTEM_CUSTOM_WATER_CLASSIFY,
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

    static async baseWaterV1ClassifyGetsystemwaterclassifyPost(input: BaseWaterDefinition.WaterClassifyInput):Promise<RowResponse<Array<BaseWaterDefinition.WaterClassifyOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWaterDefinition.WaterClassifyOutput>> | null | undefined = await post<RowResponse<Array<BaseWaterDefinition.WaterClassifyOutput>>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CLASSIFY_GET_SYSTEM_WATER_CLASSIFY,
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

    static async baseWaterV1ClassifyGetwaterclassifyPost(input: BaseWaterDefinition.WaterClassifyInput):Promise<ApiResponse<BaseWaterDefinition.GetWaterClassifyOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.GetWaterClassifyOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.GetWaterClassifyOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CLASSIFY_GET_WATER_CLASSIFY,
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

    static async baseWaterV1ClassifyMovedisplaytohiddenPost(input: BaseWaterDefinition.WaterClassifyMoveInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CLASSIFY_MOVE_DISPLAY_TO_HIDDEN,
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

    static async baseWaterV1ClassifyMovehiddentodisplayPost(input: BaseWaterDefinition.WaterClassifyMoveInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CLASSIFY_MOVE_HIDDEN_TO_DISPLAY,
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

    static async baseWaterV1ClassifyRemovehiddenPost(input: BaseWaterDefinition.WaterClassifyMoveInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CLASSIFY_REMOVE_HIDDEN,
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

    static async baseWaterV1ClassifySortdisplaywaterclassifyPost(input: BaseWaterDefinition.SortWaterClassifyInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CLASSIFY_SORT_DISPLAY_WATER_CLASSIFY,
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

    static async baseWaterV1ClassifySorthiddenwaterclassifyPost(input: BaseWaterDefinition.SortWaterClassifyInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CLASSIFY_SORT_HIDDEN_WATER_CLASSIFY,
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

    static async baseWaterV1ClassifyUpdatewaterclassifyPost(input: BaseWaterDefinition.UpdateWaterClassifyInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CLASSIFY_UPDATE_WATER_CLASSIFY,
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
  }


  export class WaterLogController {
    static async baseWaterV1LogAddlogPost(input: BaseWaterDefinition.WaterLogInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWaterUrlConstant.BASE_WATER_V1_LOG_ADD_LOG,
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

    static async baseWaterV1LogRevokePost(userId: number):Promise<ApiResponse<void> | null | undefined> {
      let res: ApiResponse<void> | null | undefined = await post<ApiResponse<void>>(
        BaseWaterUrlConstant.BASE_WATER_V1_LOG_REVOKE,
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
  }


  export class WaterPushConfigController {
    static async baseWaterV1ConfigAddwaterpushconfigPost(input: BaseWaterDefinition.WaterPushConfigInput, ip?: string, userId?: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CONFIG_ADD_WATER_PUSH_CONFIG,
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

    static async baseWaterV1ConfigFindwaterpushconfigPost():Promise<RowResponse<Array<BaseWaterDefinition.WaterPushConfigOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWaterDefinition.WaterPushConfigOutput>> | null | undefined = await post<RowResponse<Array<BaseWaterDefinition.WaterPushConfigOutput>>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CONFIG_FIND_WATER_PUSH_CONFIG,
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

    static async baseWaterV1ConfigRemovewaterpushconfigPost(input: BaseWaterDefinition.IdRequest, userId?: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CONFIG_REMOVE_WATER_PUSH_CONFIG,
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

    static async baseWaterV1ConfigUpdatewaterpushconfigPost(input: BaseWaterDefinition.WaterPushConfigUpdateInput, ip?: string, userId?: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseWaterUrlConstant.BASE_WATER_V1_CONFIG_UPDATE_WATER_PUSH_CONFIG,
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
  }


  export class WaterConfigControllerV2 {
    static async baseWaterV2ConfigGetwaterconfigwithnullPost(ip: string, userId: number):Promise<ApiResponse<BaseWaterDefinition.WaterConfigOutputV2> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.WaterConfigOutputV2> | null | undefined = await post<ApiResponse<BaseWaterDefinition.WaterConfigOutputV2>>(
        BaseWaterUrlConstant.BASE_WATER_V2_CONFIG_GET_WATER_CONFIG_WITH_NULL,
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

    static async baseWaterV2ConfigGetwatershortcutPost(ip: string, userId: number):Promise<ApiResponse<BaseWaterDefinition.GetWaterShortcutOutputV2> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.GetWaterShortcutOutputV2> | null | undefined = await post<ApiResponse<BaseWaterDefinition.GetWaterShortcutOutputV2>>(
        BaseWaterUrlConstant.BASE_WATER_V2_CONFIG_GET_WATER_SHORTCUT,
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

    static async baseWaterV2ConfigIsinitwaterconfigPost(userId: number):Promise<ApiResponse<BaseWaterDefinition.BooleanResponse> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.BooleanResponse> | null | undefined = await post<ApiResponse<BaseWaterDefinition.BooleanResponse>>(
        BaseWaterUrlConstant.BASE_WATER_V2_CONFIG_IS_INIT_WATER_CONFIG,
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

    static async baseWaterV2ConfigUpdatedailytargetPost(input: BaseWaterDefinition.UpdateDailyTargetInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWaterUrlConstant.BASE_WATER_V2_CONFIG_UPDATE_DAILY_TARGET,
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

    static async baseWaterV2ConfigUpdatefestivalnotremindPost(input: BaseWaterDefinition.WaterRemindSwitchInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWaterUrlConstant.BASE_WATER_V2_CONFIG_UPDATE_FESTIVAL_NOT_REMIND,
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

    static async baseWaterV2ConfigUpdatefinishdailytargetnotremindPost(input: BaseWaterDefinition.WaterRemindSwitchInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWaterUrlConstant.BASE_WATER_V2_CONFIG_UPDATE_FINISH_DAILY_TARGET_NOT_REMIND,
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

    static async baseWaterV2ConfigUpdateintelligenceremindPost(input: BaseWaterDefinition.WaterRemindSwitchInput, ip?: string, userId?: number):Promise<ApiResponse<BaseWaterDefinition.UpdateIntelligenceRemindOutput> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.UpdateIntelligenceRemindOutput> | null | undefined = await post<ApiResponse<BaseWaterDefinition.UpdateIntelligenceRemindOutput>>(
        BaseWaterUrlConstant.BASE_WATER_V2_CONFIG_UPDATE_INTELLIGENCE_REMIND,
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

    static async baseWaterV2ConfigUpdatemsgpushtypePost(input: BaseWaterDefinition.UpdateMsgPushTypeInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWaterUrlConstant.BASE_WATER_V2_CONFIG_UPDATE_MSG_PUSH_TYPE,
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

    static async baseWaterV2ConfigUpdatequickcapacityPost(input: BaseWaterDefinition.QuickCapacityInput, userId?: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseWaterUrlConstant.BASE_WATER_V2_CONFIG_UPDATE_QUICK_CAPACITY,
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

    static async baseWaterV2ConfigUpdateremindtimePost(input: BaseWaterDefinition.UpdateRemindTimeInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWaterUrlConstant.BASE_WATER_V2_CONFIG_UPDATE_REMIND_TIME,
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

    static async baseWaterV2ConfigUpdaterestnotremindPost(input: BaseWaterDefinition.RestNotRemindInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWaterUrlConstant.BASE_WATER_V2_CONFIG_UPDATE_REST_NOT_REMIND,
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

    static async nativeBaseWaterV2ConfigGetwaterconfigoutputPost(input: BaseWaterDefinition.GetWaterConfigInput, ip: string, userId: number):Promise<ApiResponse<BaseWaterDefinition.WaterConfigOutputV2> | null | undefined> {
      let res: ApiResponse<BaseWaterDefinition.WaterConfigOutputV2> | null | undefined = await post<ApiResponse<BaseWaterDefinition.WaterConfigOutputV2>>(
        BaseWaterUrlConstant.NATIVE_BASE_WATER_V2_CONFIG_GET_WATER_CONFIG_OUTPUT,
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

    static async nativeBaseWaterV2ConfigInitwaterconfigPost(input: BaseWaterDefinition.InitWaterConfigInputV2, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseWaterUrlConstant.NATIVE_BASE_WATER_V2_CONFIG_INIT_WATER_CONFIG,
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


  export class WaterStatisticsController {
    static async baseWaterV1StatisticsQuerystatisticsPost(input: BaseWaterDefinition.WaterStatisticsInput, userId: number):Promise<RowResponse<Array<BaseWaterDefinition.WaterStatisticsOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseWaterDefinition.WaterStatisticsOutput>> | null | undefined = await post<RowResponse<Array<BaseWaterDefinition.WaterStatisticsOutput>>>(
        BaseWaterUrlConstant.BASE_WATER_V1_STATISTICS_QUERY_STATISTICS,
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
