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
import { BaseFocusDefinition } from './../definition/BaseFocusDefinition';
import { BaseFocusUrlConstant } from './../constant/BaseFocusUrlConstant';

export namespace BaseFocusOperation {
  export class FocusRecordControllerV2 {
    static async baseFocusV2AddPost(input: BaseFocusDefinition.FocusRecordInputV2):Promise<ApiResponse<BaseFocusDefinition.FocusRecordOutputV2> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusRecordOutputV2> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusRecordOutputV2>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_ADD,
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

    static async baseFocusV2BatchfindlinkusetimePost(input: BaseFocusDefinition.BatchLinkUseTimeInput, userId: number):Promise<RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>> | null | undefined = await post<RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_BATCH_FIND_LINK_USE_TIME,
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

    static async baseFocusV2BatchupdatelinkPost(input: BaseFocusDefinition.BatchUpdateLinkListInput):Promise<RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>> | null | undefined = await post<RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_BATCH_UPDATE_LINK,
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

    static async baseFocusV2DetailPost(input: BaseFocusDefinition.FocusRecordDetailInput):Promise<ApiResponse<BaseFocusDefinition.FocusRecordOutputV2> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusRecordOutputV2> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusRecordOutputV2>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_DETAIL,
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

    static async baseFocusV2FindbyidPost(input: BaseFocusDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseFocusDefinition.FocusRecordOutputV2> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusRecordOutputV2> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusRecordOutputV2>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_FIND_BY_ID,
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

    static async baseFocusV2FindbylinktypeanddayPost(input: BaseFocusDefinition.FindByLinkTypeAndDayInput, userId: number):Promise<RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>> | null | undefined = await post<RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_FIND_BY_LINK_TYPE_AND_DAY,
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

    static async baseFocusV2FindpurefocusbydayPost(input: BaseFocusDefinition.FindPureFocusByDayInput, userId: number):Promise<RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>> | null | undefined = await post<RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_FIND_PURE_FOCUS_BY_DAY,
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

    static async baseFocusV2LinkusetimePost(input: BaseFocusDefinition.LinkUseTimeInput, userId: number):Promise<ApiResponse<BaseFocusDefinition.LinkUseTimeOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.LinkUseTimeOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.LinkUseTimeOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_LINK_USE_TIME,
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

    static async baseFocusV2StatisticsPost(input: BaseFocusDefinition.FocusStatisticsInput, userId: number):Promise<ApiResponse<BaseFocusDefinition.FocusStatisticsOutputV2> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusStatisticsOutputV2> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusStatisticsOutputV2>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_STATISTICS,
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

    static async baseFocusV2UpdatePost(channelType: string, deviceTag: string, deviceType: string, input: BaseFocusDefinition.FocusRecordUpdateInputV2, ip: string, userId: number, channel?: string):Promise<ApiResponse<BaseFocusDefinition.FocusRecordOutputV2> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusRecordOutputV2> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusRecordOutputV2>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_UPDATE,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_tag": deviceTag,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId,
            "channel": channel
        },
        input
      );

      return res;
    }

    static async baseFocusV2UpdatenotappendPost( input: BaseFocusDefinition.FocusRecordUpdateInputV2, ip?: string, userId?: number):Promise<ApiResponse<BaseFocusDefinition.FocusRecordOutputV2> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusRecordOutputV2> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusRecordOutputV2>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_UPDATE_NOT_APPEND,
        {
        },
        {
        },
        {
            // "ip": ip,
            // "user_id": userId,
        },
        input
      );

      return res;
    }

    static async baseFocusV2UpdatetitlePost(input: BaseFocusDefinition.FocusUpdateTitleInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_UPDATE_TITLE,
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


  export class FocusEarlyFinishControllerV2 {
    static async baseFocusV2AddearlyfinishcountPost(channelType: string, ip: string, userId: number):Promise<ApiResponse<BaseFocusDefinition.FocusEarlyFinishCountOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusEarlyFinishCountOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusEarlyFinishCountOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_ADD_EAR_LY_FINISH_COUNT,
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

    static async baseFocusV2GetearlyfinishcountPost(channelType: string, ip: string, userId: number):Promise<ApiResponse<BaseFocusDefinition.FocusEarlyFinishCountOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusEarlyFinishCountOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusEarlyFinishCountOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_GET_EARLY_FINISH_COUNT,
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
  }


  export class FocusRecordController {
    static async baseFocusAddPost(input: BaseFocusDefinition.FocusRecordInput, ip: string, userId: number):Promise<ApiResponse<BaseFocusDefinition.FocusDetail> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusDetail> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusDetail>>(
        BaseFocusUrlConstant.BASE_FOCUS_ADD,
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

    static async baseFocusDelPost(input: BaseFocusDefinition.DelFocusRecordInput):Promise<ApiResponse<BaseFocusDefinition.FocusRecordOutputV2> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusRecordOutputV2> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusRecordOutputV2>>(
        BaseFocusUrlConstant.BASE_FOCUS_DEL,
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

    static async baseFocusDetailPost(input: BaseFocusDefinition.FocusRecordDetailInput, userId: number):Promise<ApiResponse<BaseFocusDefinition.FocusDetail> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusDetail> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusDetail>>(
        BaseFocusUrlConstant.BASE_FOCUS_DETAIL,
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

    static async baseFocusExportdataPost(condition: BaseFocusDefinition.FocusTransferCondition, userId: number):Promise<ApiResponse<BaseFocusDefinition.FocusImportExportData> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusImportExportData> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusImportExportData>>(
        BaseFocusUrlConstant.BASE_FOCUS_EXPORT_DATA,
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

    static async baseFocusFocusshortcutappletPost(input: BaseFocusDefinition.FocusShortCutAppletInput, userId: number):Promise<ApiResponse<BaseFocusDefinition.FocusShortCutAppletOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusShortCutAppletOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusShortCutAppletOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_FOCUS_SHORT_CUT_APPLET,
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

    static async baseFocusImportdataPost(data: BaseFocusDefinition.FocusImportExportData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_IMPORT_DATA,
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

    static async baseFocusRestintervalPost(userId: number):Promise<ApiResponse<BaseFocusDefinition.FocusRestIntervalOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusRestIntervalOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusRestIntervalOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_REST_INTERVAL,
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

    static async baseFocusSearchUByUDayPost(ip: string, userId: number):Promise<ApiResponse<BaseFocusDefinition.FocusSearchByDayOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusSearchByDayOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusSearchByDayOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_SEARCH_BY_DAY_URL,
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

    static async baseFocusSearchUByUWeekPost(ip: string, userId: number):Promise<ApiResponse<BaseFocusDefinition.FocusSearchByWeekListOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusSearchByWeekListOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusSearchByWeekListOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_SEARCH_BY_WEEK_URL,
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

    static async baseFocusStatisticsPost(input: BaseFocusDefinition.FocusStatisticsInput, userId: number):Promise<ApiResponse<BaseFocusDefinition.FocusStatisticsOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusStatisticsOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusStatisticsOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_STATISTICS,
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

    static async baseFocusUpdatefocusrestintervalPost(input: BaseFocusDefinition.UpdateFocusRestIntervalInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_UPDATE_FOCUS_REST_INTERVAL,
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

    static async baseFocusUpdateURemarkPost(input: BaseFocusDefinition.UpdateRemarkInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_UPDATE_REMARK_URL,
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

    static async baseFocusV1DaterangecountPost(input: BaseFocusDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseFocusDefinition.RecordCountOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.RecordCountOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.RecordCountOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_DATE_RANGE_COUNT,
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

    static async baseFocusV1HistorydatacountPost(userId: number):Promise<ApiResponse<Map<string, number>> | null | undefined> {
      let res: ApiResponse<Map<string, number>> | null | undefined = await post<ApiResponse<Map<string, number>>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_HISTORY_DATA_COUNT,
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

    static async baseFocusV1SumfiltermanualPost(input: BaseFocusDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseFocusDefinition.FocusSumOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusSumOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusSumOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_SUM_FILTER_MANUAL,
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


  export class FocusRepeatControllerV3 {
    static async baseFocusV3GiveupAddPost(input: BaseFocusDefinition.FocusRecordGiveupInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V3_GIVEUP_ADD,
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

    static async baseFocusV3RepeatAddPost(input: BaseFocusDefinition.AddFocusRepeatInput):Promise<ApiResponse<BaseFocusDefinition.FocusRepeatDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusRepeatDetailOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusRepeatDetailOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_V3_REPEAT_ADD,
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

    static async baseFocusV3RepeatAddfocusrecordPost( input: BaseFocusDefinition.RepeatFocusRecordInput):Promise<ApiResponse<BaseFocusDefinition.FocusRecordOutputV2> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusRecordOutputV2> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusRecordOutputV2>>(
        BaseFocusUrlConstant.BASE_FOCUS_V3_REPEAT_ADD_FOCUS_RECORD,
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

    static async baseFocusV3RepeatDeletePost(input: BaseFocusDefinition.DeleteFocusRepeatInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V3_REPEAT_DELETE,
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

    static async baseFocusV3RepeatListPost():Promise<ApiResponse<BaseFocusDefinition.FocusRepeatOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusRepeatOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusRepeatOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_V3_REPEAT_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseFocusV3RepeatSortPost(input: BaseFocusDefinition.IdsRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V3_REPEAT_SORT,
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

    static async baseFocusV3RepeatUpdatePost(input: BaseFocusDefinition.UpdateFocusRepeatInput):Promise<ApiResponse<BaseFocusDefinition.FocusRepeatDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusRepeatDetailOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusRepeatDetailOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_V3_REPEAT_UPDATE,
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

    static async baseFocusV3RepeatUpdatestatusPost(input: BaseFocusDefinition.UpdateFocusRepeatStatusInput):Promise<ApiResponse<BaseFocusDefinition.FocusRepeatDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusRepeatDetailOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusRepeatDetailOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_V3_REPEAT_UPDATE_STATUS,
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
        BaseFocusUrlConstant.CHECKALIVE,
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


  export class FocusStatisticsControllerV3 {
    static async baseFocusV3StatisticBarchartPost(input: BaseFocusDefinition.StatisticBarChartInputV3):Promise<ApiResponse<BaseFocusDefinition.FocusBarStatisticsOutputV3> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusBarStatisticsOutputV3> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusBarStatisticsOutputV3>>(
        BaseFocusUrlConstant.BASE_FOCUS_V3_STATISTIC_BAR_CHART,
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

    static async baseFocusV3StatisticDaybarchartPost(input: BaseFocusDefinition.StatisticBarChartInputV3):Promise<ApiResponse<BaseFocusDefinition.FocusBarDayStatisticsOutputV3> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusBarDayStatisticsOutputV3> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusBarDayStatisticsOutputV3>>(
        BaseFocusUrlConstant.BASE_FOCUS_V3_STATISTIC_DAY_BAR_CHART,
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

    static async baseFocusV3StatisticPiechartPost(input: BaseFocusDefinition.StatisticBarChartInputV3, ip: string, userId: number):Promise<ApiResponse<BaseFocusDefinition.FocusPieStatisticsOutputV3> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusPieStatisticsOutputV3> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusPieStatisticsOutputV3>>(
        BaseFocusUrlConstant.BASE_FOCUS_V3_STATISTIC_PIE_CHART,
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

    static async baseFocusV3StatisticRecordlistPost(input: BaseFocusDefinition.RecordListUsingPOSTRequestBody):Promise<RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>> | null | undefined = await post<RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>>>(
        BaseFocusUrlConstant.BASE_FOCUS_V3_STATISTIC_RECORD_LIST,
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

    static async baseFocusV4StatisticPiechartPost(input: BaseFocusDefinition.StatisticBarChartInputV3):Promise<ApiResponse<BaseFocusDefinition.FocusPieStatisticsOutputV3> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusPieStatisticsOutputV3> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusPieStatisticsOutputV3>>(
        BaseFocusUrlConstant.BASE_FOCUS_V4_STATISTIC_PIE_CHART,
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

    static async baseFocusV4StatisticRecordlistPost(input: BaseFocusDefinition.StatisticRecordListInputV4):Promise<RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>> | null | undefined = await post<RowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>>>(
        BaseFocusUrlConstant.BASE_FOCUS_V4_STATISTIC_RECORD_LIST,
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


  export class SyncFocusController {
    static async baseFocusSyncfocusrecordPost(dto: BaseFocusDefinition.SyncDataRequest, userId: number):Promise<SyncRowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>> | null | undefined> {
      let res: SyncRowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>> | null | undefined = await post<SyncRowResponse<Array<BaseFocusDefinition.FocusRecordOutputV2>>>(
        BaseFocusUrlConstant.BASE_FOCUS_SYNC_FOCUS_RECORD,
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


  export class FocusMusicControllerV2 {
    static async baseFocusV2CompleteMusicPost(input: BaseFocusDefinition.FocusVersionInput):Promise<ApiResponse<BaseFocusDefinition.FocusCompleteMusicListOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusCompleteMusicListOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusCompleteMusicListOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_COMPLETE_MUSIC,
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


  export class FocusTipsControllerV2 {
    static async baseFocusV2AddtipsPost(input: BaseFocusDefinition.FocusTipsAddInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_ADD_TIPS,
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

    static async baseFocusV2DeletetipsPost(input: BaseFocusDefinition.IdRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_DELETE_TIPS,
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

    static async baseFocusV2GettipsPost(input: BaseFocusDefinition.FocusVersionInput):Promise<ApiResponse<BaseFocusDefinition.FocusTipsWithSwitchOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusTipsWithSwitchOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusTipsWithSwitchOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_GET_TIPS,
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

    static async baseFocusV2UpdatetipsPost(input: BaseFocusDefinition.FocusTipsUpdateInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_UPDATE_TIPS,
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

    static async baseFocusV2UpdatetipsswitchPost(input: BaseFocusDefinition.FocusTipsSwitchInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_UPDATE_TIPS_SWITCH,
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


  export class SelfStudyRoomController {
    static async baseFocusV1CreateroomPost(input: BaseFocusDefinition.SelfStudyRoomInfo):Promise<ApiResponse<BaseFocusDefinition.SelfStudyRoomInfo> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.SelfStudyRoomInfo> | null | undefined = await post<ApiResponse<BaseFocusDefinition.SelfStudyRoomInfo>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_CREATE_ROOM,
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

    static async baseFocusV1DeletememberPost(input: BaseFocusDefinition.IdRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_DELETE_MEMBER,
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

    static async baseFocusV1DissolvedroomPost(input: BaseFocusDefinition.IdRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_DISSOLVED_ROOM,
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

    static async baseFocusV1JoinroomPost(input: BaseFocusDefinition.JoinRoomInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_JOIN_ROOM,
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

    static async baseFocusV1MemberlistPost(input: BaseFocusDefinition.IdRequest):Promise<RowResponse<Array<BaseFocusDefinition.UserOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseFocusDefinition.UserOutput>> | null | undefined = await post<RowResponse<Array<BaseFocusDefinition.UserOutput>>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_MEMBER_LIST,
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

    static async baseFocusV1PublicmyfocusPost(input: BaseFocusDefinition.PublicMyFocusInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_PUBLIC_MY_FOCUS,
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

    static async baseFocusV1QuerymyselfstudyroomPost():Promise<ApiResponse<BaseFocusDefinition.SelfStudyRoomInfo> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.SelfStudyRoomInfo> | null | undefined = await post<ApiResponse<BaseFocusDefinition.SelfStudyRoomInfo>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_QUERY_MY_SELF_STUDY_ROOM,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseFocusV1QuitPost(input: BaseFocusDefinition.FocusStartInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_QUIT,
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

    static async baseFocusV1QuitroomPost():Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_QUIT_ROOM,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseFocusV1RoomImagelistPost():Promise<RowResponse<Array<BaseFocusDefinition.ImageListUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseFocusDefinition.ImageListUsingPOSTRsp>> | null | undefined = await post<RowResponse<Array<BaseFocusDefinition.ImageListUsingPOSTRsp>>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_ROOM_IMAGE_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseFocusV1RoomMemberstatisticsPost(input: BaseFocusDefinition.SelfStudyRoomStatisticsInput):Promise<ApiResponse<BaseFocusDefinition.SelfStudyRoomPieStatisticsOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.SelfStudyRoomPieStatisticsOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.SelfStudyRoomPieStatisticsOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_ROOM_MEMBER_STATISTICS,
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

    static async baseFocusV1RoomReportPost(input: BaseFocusDefinition.SelfStudyRoomReportInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_ROOM_REPORT,
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

    static async baseFocusV1RoomReportProcessedPost(input: BaseFocusDefinition.SelfStudyRoomReportProcessedInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_ROOM_REPORT_PROCESSED,
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

    static async baseFocusV1RoomSetmyimagePost(input: BaseFocusDefinition.MyImageInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_ROOM_SET_MY_IMAGE,
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

    static async baseFocusV1RoomdetailPost(input: BaseFocusDefinition.IdRequest):Promise<ApiResponse<BaseFocusDefinition.SelfStudyRoomDetail> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.SelfStudyRoomDetail> | null | undefined = await post<ApiResponse<BaseFocusDefinition.SelfStudyRoomDetail>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_ROOM_DETAIL,
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

    static async baseFocusV1RoomlistPost(input: BaseFocusDefinition.PaginableRequest):Promise<PaginableResponse<Array<BaseFocusDefinition.SelfStudyRoomInfo>> | null | undefined> {
      let res: PaginableResponse<Array<BaseFocusDefinition.SelfStudyRoomInfo>> | null | undefined = await post<PaginableResponse<Array<BaseFocusDefinition.SelfStudyRoomInfo>>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_ROOM_LIST,
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

    static async baseFocusV1SelectseatPost(input: BaseFocusDefinition.SelectSeatInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_SELECT_SEAT,
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

    static async baseFocusV1SetipimagePost(input: BaseFocusDefinition.IpImageInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_SET_IP_IMAGE,
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

    static async baseFocusV1StartPost(input: BaseFocusDefinition.FocusStartInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_START,
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

    static async baseFocusV1UpdateroomPost(input: BaseFocusDefinition.SelfStudyRoomInfo):Promise<ApiResponse<BaseFocusDefinition.SelfStudyRoomInfo> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.SelfStudyRoomInfo> | null | undefined = await post<ApiResponse<BaseFocusDefinition.SelfStudyRoomInfo>>(
        BaseFocusUrlConstant.BASE_FOCUS_V1_UPDATE_ROOM,
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

    static async baseFocusV2RoomMemberstatisticsPost(input: BaseFocusDefinition.SelfStudyRoomStatisticsInput):Promise<ApiResponse<BaseFocusDefinition.SelfStudyRoomPieStatisticsOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.SelfStudyRoomPieStatisticsOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.SelfStudyRoomPieStatisticsOutput>>(
        BaseFocusUrlConstant.BASE_FOCUS_V2_ROOM_MEMBER_STATISTICS,
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


    //获取专注总时间
    static async baseFocusLinkTotalTimePost(input: BaseFocusDefinition.LinkTotalTimeInput):Promise<ApiResponse<BaseFocusDefinition.LinkTotalTimeInputOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.LinkTotalTimeInputOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.LinkTotalTimeInputOutput>>(
        BaseFocusUrlConstant.LOCAL_SERVER_FOCUS_RECORD_LINKTOTALTIME,
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

    //获取专注列表
    static async baseFocusLinkListPost(input: BaseFocusDefinition.FocusLinkListInput):Promise<ApiResponse<BaseFocusDefinition.FocusLinkListOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusLinkListOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusLinkListOutput>>(
        BaseFocusUrlConstant.LOCAL_SERVER_FOCUS_RECORD_LINKLIST,
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

    //获取全部列表
    static async baseFocusAllListPost(input: BaseFocusDefinition.FocusAllListInput):Promise<ApiResponse<BaseFocusDefinition.FocusAllListOutput> | null | undefined> {
      let res: ApiResponse<BaseFocusDefinition.FocusAllListOutput> | null | undefined = await post<ApiResponse<BaseFocusDefinition.FocusAllListOutput>>(
        BaseFocusUrlConstant.LOCAL_SERVER_FOCUS_RECORD_ALLLIST,
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
}
