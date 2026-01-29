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
import { BaseMedalDefinition } from './../definition/BaseMedalDefinition';
import { BaseMedalUrlConstant } from './../constant/BaseMedalUrlConstant';

export namespace BaseMedalOperation {
  export class SyncController {
    static async baseMedalV1SyncGuessdobaserecordPost(dto: BaseMedalDefinition.SyncDataRequest, userId: number):Promise<SyncRowResponse<Array<BaseMedalDefinition.GuessDoBaseRecordOutput>> | null | undefined> {
      let res: SyncRowResponse<Array<BaseMedalDefinition.GuessDoBaseRecordOutput>> | null | undefined = await post<SyncRowResponse<Array<BaseMedalDefinition.GuessDoBaseRecordOutput>>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_SYNC_GUESS_DO_BASE_RECORD,
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


  export class AchievementReachController {
    static async baseMedalV1AchievementReachDisplayPost(input: BaseMedalDefinition.AchievementReachVo, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_ACHIEVEMENT_REACH_DISPLAY,
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

    static async baseMedalV1AchievementReachListPost(userId: number):Promise<RowResponse<Array<BaseMedalDefinition.AchievementReachVo>> | null | undefined> {
      let res: RowResponse<Array<BaseMedalDefinition.AchievementReachVo>> | null | undefined = await post<RowResponse<Array<BaseMedalDefinition.AchievementReachVo>>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_ACHIEVEMENT_REACH_LIST,
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


  export class DailySummaryTemplateController {
    static async baseMedalV1DailysummarytemplateGetPost(channelType: string, userId: number):Promise<ApiResponse<BaseMedalDefinition.DailySummaryTemplateDto> | null | undefined> {
      let res: ApiResponse<BaseMedalDefinition.DailySummaryTemplateDto> | null | undefined = await post<ApiResponse<BaseMedalDefinition.DailySummaryTemplateDto>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_DAILY_SUMMARY_TEMPLATE_GET,
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

    static async baseMedalV1DailysummarytemplateUpdatePost(channelType: string, input: BaseMedalDefinition.DailySummaryTemplateDto, ip: string, userId: number):Promise<ApiResponse<BaseMedalDefinition.DailySummaryTemplateDto> | null | undefined> {
      let res: ApiResponse<BaseMedalDefinition.DailySummaryTemplateDto> | null | undefined = await post<ApiResponse<BaseMedalDefinition.DailySummaryTemplateDto>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_DAILY_SUMMARY_TEMPLATE_UPDATE,
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
  }


  export class MemorialBookController {
    static async baseMedalMemorialBookV1DetailPost(input: BaseMedalDefinition.MemorialBookDetailInput, userId: number):Promise<ApiResponse<BaseMedalDefinition.MemorialBookDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseMedalDefinition.MemorialBookDetailOutput> | null | undefined = await post<ApiResponse<BaseMedalDefinition.MemorialBookDetailOutput>>(
        BaseMedalUrlConstant.BASE_MEDAL_MEMORIAL_BOOK_V1_DETAIL,
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

    static async baseMedalMemorialBookV1HallYearPost(userId: number):Promise<RowResponse<Array<BaseMedalDefinition.MemorialHallYearOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseMedalDefinition.MemorialHallYearOutput>> | null | undefined = await post<RowResponse<Array<BaseMedalDefinition.MemorialHallYearOutput>>>(
        BaseMedalUrlConstant.BASE_MEDAL_MEMORIAL_BOOK_V1_HALL_YEAR,
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

    static async baseMedalMemorialBookV1HidepagePost(input: BaseMedalDefinition.HidePageInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseMedalUrlConstant.BASE_MEDAL_MEMORIAL_BOOK_V1_HIDE_PAGE,
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

    static async baseMedalMemorialBookV1SharedetailPost(input: BaseMedalDefinition.ShareDetailInput):Promise<ApiResponse<BaseMedalDefinition.MemorialBookDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseMedalDefinition.MemorialBookDetailOutput> | null | undefined = await post<ApiResponse<BaseMedalDefinition.MemorialBookDetailOutput>>(
        BaseMedalUrlConstant.BASE_MEDAL_MEMORIAL_BOOK_V1_SHARE_DETAIL,
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

    static async baseMedalMemorialBookV1StartpagePost(userId: number):Promise<ApiResponse<BaseMedalDefinition.StartPageData> | null | undefined> {
      let res: ApiResponse<BaseMedalDefinition.StartPageData> | null | undefined = await post<ApiResponse<BaseMedalDefinition.StartPageData>>(
        BaseMedalUrlConstant.BASE_MEDAL_MEMORIAL_BOOK_V1_START_PAGE,
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


  export class DailySummaryController {
    static async baseMedalV1DailysummaryAddPost(channelType: string, input: BaseMedalDefinition.DailySummaryArchiveDto, ip: string, userId: number):Promise<ApiResponse<BaseMedalDefinition.DailySummaryArchiveDto> | null | undefined> {
      let res: ApiResponse<BaseMedalDefinition.DailySummaryArchiveDto> | null | undefined = await post<ApiResponse<BaseMedalDefinition.DailySummaryArchiveDto>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_DAILY_SUMMARY_ADD,
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

    static async baseMedalV1DailysummaryArchivestatusPost(input: BaseMedalDefinition.ArchiveStatusInput, userId: number):Promise<ApiResponse<BaseMedalDefinition.ArchiveStatusOutput> | null | undefined> {
      let res: ApiResponse<BaseMedalDefinition.ArchiveStatusOutput> | null | undefined = await post<ApiResponse<BaseMedalDefinition.ArchiveStatusOutput>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_DAILY_SUMMARY_ARCHIVE_STATUS,
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

    static async baseMedalV1DailysummaryGetPost(channelType: string, input: BaseMedalDefinition.DailySummaryInput, userId: number):Promise<ApiResponse<BaseMedalDefinition.DailySummaryArchiveDto> | null | undefined> {
      let res: ApiResponse<BaseMedalDefinition.DailySummaryArchiveDto> | null | undefined = await post<ApiResponse<BaseMedalDefinition.DailySummaryArchiveDto>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_DAILY_SUMMARY_GET,
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

    static async baseMedalV1DailysummaryGetdatabyappletidPost(channelType: string, input: BaseMedalDefinition.DailySummaryByAppletInput, userId: number):Promise<ApiResponse<BaseMedalDefinition.GetDataByAppletIdUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseMedalDefinition.GetDataByAppletIdUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseMedalDefinition.GetDataByAppletIdUsingPOSTRsp>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_DAILY_SUMMARY_GET_DATA_BY_APPLET_ID,
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

    static async baseMedalV1DailysummaryGetstatisticsPost(channelType: string, input: BaseMedalDefinition.DateRequest, userId: number):Promise<ApiResponse<BaseMedalDefinition.DailySummaryStatisticsDto> | null | undefined> {
      let res: ApiResponse<BaseMedalDefinition.DailySummaryStatisticsDto> | null | undefined = await post<ApiResponse<BaseMedalDefinition.DailySummaryStatisticsDto>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_DAILY_SUMMARY_GET_STATISTICS,
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

    static async baseMedalV1DailysummarySearchPost(input: BaseMedalDefinition.PaginableRequest, userId: number):Promise<PaginableResponse<Array<BaseMedalDefinition.DailySummaryArchiveSearchOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseMedalDefinition.DailySummaryArchiveSearchOutput>> | null | undefined = await post<PaginableResponse<Array<BaseMedalDefinition.DailySummaryArchiveSearchOutput>>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_DAILY_SUMMARY_SEARCH,
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

    static async baseMedalV1DailysummaryUpdatePost(channelType: string, input: BaseMedalDefinition.DailySummaryArchiveUpdateDto, ip: string, userId: number):Promise<ApiResponse<BaseMedalDefinition.DailySummaryArchiveDto> | null | undefined> {
      let res: ApiResponse<BaseMedalDefinition.DailySummaryArchiveDto> | null | undefined = await post<ApiResponse<BaseMedalDefinition.DailySummaryArchiveDto>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_DAILY_SUMMARY_UPDATE,
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

    static async baseMedalV1DailysummaryUpdateuserdataPost(channelType: string, input: BaseMedalDefinition.DateRequest, ip: string, userId: number):Promise<ApiResponse<BaseMedalDefinition.DailySummaryArchiveDto> | null | undefined> {
      let res: ApiResponse<BaseMedalDefinition.DailySummaryArchiveDto> | null | undefined = await post<ApiResponse<BaseMedalDefinition.DailySummaryArchiveDto>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_DAILY_SUMMARY_UPDATE_USER_DATA,
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

    static async baseMedalV1UsercustomAddPost(channelType: string, input: BaseMedalDefinition.UserCustomInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_USER_CUSTOM_ADD,
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

    static async baseMedalV1UsercustomCheckhistorydataPost(channelType: string, input: BaseMedalDefinition.CheckHistoryDataInputV2, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_USER_CUSTOM_CHECK_HISTORY_DATA,
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

    static async baseMedalV1UsercustomDeletePost(channelType: string, input: BaseMedalDefinition.IdRequest, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_USER_CUSTOM_DELETE,
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

    static async baseMedalV1UsercustomUpdatePost(channelType: string, input: BaseMedalDefinition.UserCustomUpdateInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_USER_CUSTOM_UPDATE,
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
  }


  export class IpHouseActivityController {
    static async baseMedalV1IphouseactivityListPost(channelType: string, deviceType: string, userId: number, version: string):Promise<RowResponse<Array<BaseMedalDefinition.IpHouseActivityOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseMedalDefinition.IpHouseActivityOutput>> | null | undefined = await post<RowResponse<Array<BaseMedalDefinition.IpHouseActivityOutput>>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_IP_HOUSE_ACTIVITY_LIST,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_type": deviceType,
            "user_id": userId,
            "version": version
        },
      );

      return res;
    }
  }


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseMedalUrlConstant.CHECKALIVE,
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


  export class MedalController {
    static async baseMedalV1HomepagePost(input: BaseMedalDefinition.PositionInput):Promise<ApiResponse<BaseMedalDefinition.MedalHomepageOutput> | null | undefined> {
      let res: ApiResponse<BaseMedalDefinition.MedalHomepageOutput> | null | undefined = await post<ApiResponse<BaseMedalDefinition.MedalHomepageOutput>>(
        BaseMedalUrlConstant.BASE_MEDAL_V1_HOMEPAGE,
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
