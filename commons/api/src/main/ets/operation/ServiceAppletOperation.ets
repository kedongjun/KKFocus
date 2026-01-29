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
import { ServiceAppletDefinition } from './../definition/ServiceAppletDefinition';
import { ServiceAppletUrlConstant } from './../constant/ServiceAppletUrlConstant';

export namespace ServiceAppletOperation {
  export class ServiceAppletAnniversaryController {
    static async serviceAppletAnniversaryAddPost(input: ServiceAppletDefinition.AnniversaryInput, ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.AnniversaryDetail> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.AnniversaryDetail> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.AnniversaryDetail>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_ANNIVERSARY_ADD,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletAnniversaryGetanniversaryaheadlistPost(userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.AnniversaryDetail>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.AnniversaryDetail>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.AnniversaryDetail>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_ANNIVERSARY_GET_ANNIVERSARY_AHEAD_LIST,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async serviceAppletAnniversaryGetanniversarylistPost(userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.AnniversaryDetail>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.AnniversaryDetail>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.AnniversaryDetail>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_ANNIVERSARY_GET_ANNIVERSARY_LIST,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async serviceAppletAnniversaryGetanniversarylistv2Post(ip: string,
      userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.AnniversaryDetail>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.AnniversaryDetail>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.AnniversaryDetail>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_ANNIVERSARY_GET_ANNIVERSARY_LIST_V2,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
        );

      return res;
    }

    static async serviceAppletAnniversaryGetanniversarylogoPost(): Promise<RowResponse<Array<ServiceAppletDefinition.LogoOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.LogoOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.LogoOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_ANNIVERSARY_GET_ANNIVERSARY_LOGO,
          {},
          {},
          {},
        );

      return res;
    }

    static async serviceAppletAnniversarySelectbyidPost(input: ServiceAppletDefinition.AnniversaryQueryInput,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.AnniversaryDetail> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.AnniversaryDetail> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.AnniversaryDetail>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_ANNIVERSARY_SELECT_BY_ID,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletAnniversaryUpdatePost(input: ServiceAppletDefinition.AnniversaryUpdateInput, ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.AnniversaryDetail> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.AnniversaryDetail> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.AnniversaryDetail>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_ANNIVERSARY_UPDATE,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }
  }


  export class ServiceAppletFocusRecordController {
    static async serviceAppletFocusBgUImgPost(): Promise<ApiResponse<ServiceAppletDefinition.FocusBgImgListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.FocusBgImgListOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.FocusBgImgListOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FOCUS_BG_IMG_URL,
          {},
          {},
          {},
        );

      return res;
    }

    static async serviceAppletFocusMusicPost(): Promise<ApiResponse<ServiceAppletDefinition.FocusMusicListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.FocusMusicListOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.FocusMusicListOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FOCUS_MUSIC,
          {},
          {},
          {},
        );

      return res;
    }

    static async serviceAppletFocusV2MusicPost(): Promise<ApiResponse<ServiceAppletDefinition.FocusMusicListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.FocusMusicListOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.FocusMusicListOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FOCUS_V2_MUSIC,
          {},
          {},
          {},
        );

      return res;
    }

    static async serviceAppletFocusV3MusicPost(): Promise<ApiResponse<ServiceAppletDefinition.FocusMusicListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.FocusMusicListOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.FocusMusicListOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FOCUS_V3_MUSIC,
          {},
          {},
          {},
        );

      return res;
    }

    static async serviceAppletFocusV4MusicPost(): Promise<ApiResponse<ServiceAppletDefinition.FocusMusicListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.FocusMusicListOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.FocusMusicListOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FOCUS_V4_MUSIC,
          {},
          {},
          {},
        );

      return res;
    }
  }


  export class ServiceAppletStatisticsController {
    static async serviceAppletStatisticsMonthviewPost(input: ServiceAppletDefinition.StatisticMonthViewInput,
      ip: string, userId: number): Promise<ApiResponse<ServiceAppletDefinition.StatisticAllInOne> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.StatisticAllInOne> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.StatisticAllInOne>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_STATISTICS_MONTH_VIEW,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }
  }


  export class ServiceAppletBirthdayController {
    static async serviceAppletBirthdayAddorupdatePost(channelType: string,
      input: ServiceAppletDefinition.BirthDayAddRequest, ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.BirthdayOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.BirthdayOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.BirthdayOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_BIRTHDAY_ADD_OR_UPDATE,
          {},
          {},
          {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletBirthdayBatchaddPost(input: ServiceAppletDefinition.BirthDayBatchAddRequest, ip: string,
      userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.BirthdayInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.BirthdayInfoOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.BirthdayInfoOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_BIRTHDAY_BATCHADD,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletBirthdayGetbirthdayPost(input: ServiceAppletDefinition.BirthdayIdInput,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.BirthdayOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.BirthdayOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.BirthdayOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_BIRTHDAY_GET_BIRTHDAY,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletBirthdayGetbirthdaylistPost(userId: number): Promise<ApiResponse<ServiceAppletDefinition.BirthdayListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.BirthdayListOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.BirthdayListOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_BIRTHDAY_GET_BIRTHDAY_LIST,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async serviceAppletBirthdayGetUEarthUDataPost(userId: number): Promise<ApiResponse<ServiceAppletDefinition.BirthdayEarthOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.BirthdayEarthOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.BirthdayEarthOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_BIRTHDAY_GET_EARTH_DATA_URL,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async serviceAppletBirthdayGetUWebUBirthdayUCardPost(birthdayCardWebInput: ServiceAppletDefinition.BirthdayCardDetail): Promise<ApiResponse<ServiceAppletDefinition.BirthdayCardDetail> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.BirthdayCardDetail> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.BirthdayCardDetail>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_BIRTHDAY_GET_WEB_BIRTHDAY_CARD_URL,
          {},
          {},
          {},
          birthdayCardWebInput
        );

      return res;
    }

    static async serviceAppletBirthdayGetlistbytypePost(birthdayListInput: ServiceAppletDefinition.BirthdayListInput,
      userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.BirthdayInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.BirthdayInfoOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.BirthdayInfoOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_BIRTHDAY_GETLISTBYTYPE,
          {},
          {},
          {
            "user_id": userId
          },
          birthdayListInput
        );

      return res;
    }

    static async serviceAppletBirthdayInfoPost(input: ServiceAppletDefinition.BirthdayIdInput,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.BirthdayInfoOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.BirthdayInfoOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.BirthdayInfoOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_BIRTHDAY_INFO,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletBirthdayLogaddPost(input: ServiceAppletDefinition.BirthdayLogAddInput): Promise<ApiResponse<ServiceAppletDefinition.BirthdayTemplateOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.BirthdayTemplateOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.BirthdayTemplateOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_BIRTHDAY_LOGADD,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async serviceAppletBirthdayUpdatePost(channelType: string, input: ServiceAppletDefinition.BirthDayAddRequest,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.BirthdayInfoOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.BirthdayInfoOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.BirthdayInfoOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_BIRTHDAY_UPDATE,
          {},
          {},
          {
            "channel_type": channelType,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletBirthdayV3BatchaddPost(input: ServiceAppletDefinition.BirthDayBatchAddRequestBody,
      ip: string,
      userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.BirthdayInfoOutputV3>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.BirthdayInfoOutputV3>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.BirthdayInfoOutputV3>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_BIRTHDAY_V3_BATCHADD,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletBirthdayV3GetUEarthUDataPost(userId: number): Promise<ApiResponse<ServiceAppletDefinition.BirthdayEarthOutputV3> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.BirthdayEarthOutputV3> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.BirthdayEarthOutputV3>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_BIRTHDAY_V3_GET_EARTH_DATA_URL,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async serviceAppletBirthdayV3GetlistbytypePost(birthdayListInput: ServiceAppletDefinition.BirthdayListInputV3,
      userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.BirthdayInfoOutputV3>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.BirthdayInfoOutputV3>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.BirthdayInfoOutputV3>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_BIRTHDAY_V3_GETLISTBYTYPE,
          {},
          {},
          {
            "user_id": userId
          },
          birthdayListInput
        );

      return res;
    }

    static async serviceAppletBirthdayV3InfoPost(input: ServiceAppletDefinition.BirthdayIdInput): Promise<ApiResponse<ServiceAppletDefinition.BirthdayInfoOutputV3> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.BirthdayInfoOutputV3> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.BirthdayInfoOutputV3>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_BIRTHDAY_V3_INFO,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async serviceAppletBirthdayV3UpdatePost(channelType: string,
      input: ServiceAppletDefinition.BirthDayAddRequestBody,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.BirthdayInfoOutputV3> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.BirthdayInfoOutputV3> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.BirthdayInfoOutputV3>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_BIRTHDAY_V3_UPDATE,
          {},
          {},
          {
            "channel_type": channelType,
            "user_id": userId
          },
          input
        );

      return res;
    }
  }


  export class ServiceAppletBankCardController {
    static async serviceAppletAddUOrUUpdateUBankUCardPost(input: ServiceAppletDefinition.AddOrUpdateBankCardInput): Promise<ApiResponse<ServiceAppletDefinition.AddOrUpdateBankCardOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.AddOrUpdateBankCardOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.AddOrUpdateBankCardOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_ADD_OR_UPDATE_BANK_CARD_URL,
          {},
          {},
          {},
          input
        );

      return res;
    }
  }


  export class ServiceAppletDietController {
    static async serviceAppletDietV1UserprofilePost(channelType: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.UserProfileOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.UserProfileOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.UserProfileOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_DIET_V1_USER_PROFILE,
          {},
          {},
          {
            "channel_type": channelType,
            "user_id": userId
          },
        );

      return res;
    }
  }


  export class CheckAliveController {
    static async checkaliveGet(): Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        ServiceAppletUrlConstant.CHECKALIVE,
        {},
        {},
        {},
      );

      return res;
    }
  }


  export class ServiceAppletUserController {
    static async serviceAppletUserGetuserinfoPost(): Promise<ApiResponse<ServiceAppletDefinition.UserInfoOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.UserInfoOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.UserInfoOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_USER_GET_USER_INFO,
          {},
          {},
        );

      return res;
    }
  }


  export class RecognizeController {
    static async serviceAppletV1ButlerRecognizeAddapplethistoryPost(input: ServiceAppletDefinition.AddAppletHistoryInput,
      ip: string,
      userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V1_BUTLER_RECOGNIZE_ADD_APPLET_HISTORY,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletV1ButlerRecognizeCheckhistorydataPost(input: ServiceAppletDefinition.CheckHistoryDataInput,
      ip: string, userId: number): Promise<ApiResponse<void> | null | undefined> {
      let res: ApiResponse<void> | null | undefined = await post<ApiResponse<void>>(
        ServiceAppletUrlConstant.SERVICE_APPLET_V1_BUTLER_RECOGNIZE_CHECK_HISTORY_DATA,
        {},
        {},
        {
          "ip": ip,
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async serviceAppletV1ButlerRecognizeGetapplethistoryPost(userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V1_BUTLER_RECOGNIZE_GET_APPLET_HISTORY,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async serviceAppletV1ButlerRecognizeGetapplethistorypagePost(input: ServiceAppletDefinition.PaginableRequest,
      userId: number): Promise<PaginableResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>> | null | undefined> {
      let res: PaginableResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>> | null | undefined =
        await post<PaginableResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V1_BUTLER_RECOGNIZE_GET_APPLET_HISTORY_PAGE,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletV1ButlerRecognizeGetapplethistoryrecentdayPost(userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V1_BUTLER_RECOGNIZE_GET_APPLET_HISTORY_RECENT_DAY,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async serviceAppletV2ButlerRecognizeAddapplethistoryPost(input: ServiceAppletDefinition.AddAppletHistoryInput,
      ip: string,
      userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V2_BUTLER_RECOGNIZE_ADD_APPLET_HISTORY,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletV2ButlerRecognizeCheckhistorydataPost(input: ServiceAppletDefinition.CheckHistoryDataInputV2): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAppletUrlConstant.SERVICE_APPLET_V2_BUTLER_RECOGNIZE_CHECK_HISTORY_DATA,
        {},
        {},
        {
        },
        input
      );

      return res;
    }

    static async serviceAppletV2ButlerRecognizeGetapplethistoryPost(input: ServiceAppletDefinition.DataVersionInput,
      userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V2_BUTLER_RECOGNIZE_GET_APPLET_HISTORY,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletV2ButlerRecognizeGetapplethistorypagePost(input: ServiceAppletDefinition.GetAppletHistoryPageInput,
      userId: number): Promise<PaginableResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>> | null | undefined> {
      let res: PaginableResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>> | null | undefined =
        await post<PaginableResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V2_BUTLER_RECOGNIZE_GET_APPLET_HISTORY_PAGE,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletV2ButlerRecognizeGetapplethistoryrecentdayPost(input: ServiceAppletDefinition.DataVersionInput,
      userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.AppletHistoryOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V2_BUTLER_RECOGNIZE_GET_APPLET_HISTORY_RECENT_DAY,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletV3ButlerRecognizeAddapplethistoryPost(input: ServiceAppletDefinition.RecognizeAppletHistoryInputV2,
      ip: string, userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAppletUrlConstant.SERVICE_APPLET_V3_BUTLER_RECOGNIZE_ADD_APPLET_HISTORY,
        {},
        {},
        {
          "ip": ip,
          "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class ServiceAppletForumController {
    static async serviceAppletForumV1AddcommentPost(input: ServiceAppletDefinition.AddCommentInput, ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.ForumCommentOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.ForumCommentOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.ForumCommentOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FORUM_V1_ADD_COMMENT,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletForumV1AddpostPost(input: ServiceAppletDefinition.AddPostInput, ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.PostQueryOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.PostQueryOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.PostQueryOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FORUM_V1_ADD_POST,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletForumV1AddreplyPost(input: ServiceAppletDefinition.AddReplyInput, ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.ForumReplyOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.ForumReplyOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.ForumReplyOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FORUM_V1_ADD_REPLY,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletForumV1ForumhomepagePost(userId: number): Promise<ApiResponse<ServiceAppletDefinition.ForumHomePage> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.ForumHomePage> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.ForumHomePage>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FORUM_V1_FORUM_HOME_PAGE,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async serviceAppletForumV1GetactivityPost(input: ServiceAppletDefinition.GetActivityInput,
      userId: number): Promise<ApiResponse<Page<ServiceAppletDefinition.ForumActivityOutput>> | null | undefined> {
      let res: ApiResponse<Page<ServiceAppletDefinition.ForumActivityOutput>> | null | undefined =
        await post<ApiResponse<Page<ServiceAppletDefinition.ForumActivityOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FORUM_V1_GET_ACTIVITY,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletForumV1GetcommentPost(input: ServiceAppletDefinition.GetCommentInput,
      userId: number): Promise<ApiResponse<Page<ServiceAppletDefinition.ForumCommentOutput>> | null | undefined> {
      let res: ApiResponse<Page<ServiceAppletDefinition.ForumCommentOutput>> | null | undefined =
        await post<ApiResponse<Page<ServiceAppletDefinition.ForumCommentOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FORUM_V1_GET_COMMENT,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletForumV1GetmessagePost(input: ServiceAppletDefinition.GetMessageInput,
      userId: number): Promise<ApiResponse<Page<ServiceAppletDefinition.ForumMessageOutput>> | null | undefined> {
      let res: ApiResponse<Page<ServiceAppletDefinition.ForumMessageOutput>> | null | undefined =
        await post<ApiResponse<Page<ServiceAppletDefinition.ForumMessageOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FORUM_V1_GET_MESSAGE,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletForumV1GetpostPost(input: ServiceAppletDefinition.GetPostInput, ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.PostQueryOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.PostQueryOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.PostQueryOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FORUM_V1_GET_POST,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletForumV1GetreplyPost(input: ServiceAppletDefinition.GetReplyInput,
      userId: number): Promise<ApiResponse<Page<ServiceAppletDefinition.ForumReplyOutput>> | null | undefined> {
      let res: ApiResponse<Page<ServiceAppletDefinition.ForumReplyOutput>> | null | undefined =
        await post<ApiResponse<Page<ServiceAppletDefinition.ForumReplyOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FORUM_V1_GET_REPLY,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletForumV1GetuserinfoPost(channelType: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.UserInfoOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.UserInfoOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.UserInfoOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FORUM_V1_GET_USER_INFO,
          {},
          {},
          {
            "channel_type": channelType,
            "user_id": userId
          },
        );

      return res;
    }

    static async serviceAppletForumV1ListpostbyuserPost(input: ServiceAppletDefinition.ListPostByUserInput,
      userId: number): Promise<ApiResponse<Page<ServiceAppletDefinition.PostQueryOutput>> | null | undefined> {
      let res: ApiResponse<Page<ServiceAppletDefinition.PostQueryOutput>> | null | undefined =
        await post<ApiResponse<Page<ServiceAppletDefinition.PostQueryOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FORUM_V1_LIST_POST_BY_USER,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletForumV1QueryhomepostPost(userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.PostQueryOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.PostQueryOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.PostQueryOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FORUM_V1_QUERY_HOME_POST,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async serviceAppletForumV1QuerypostbytypePost(input: ServiceAppletDefinition.PostQueryByTypeInput,
      userId: number): Promise<ApiResponse<Page<ServiceAppletDefinition.PostQueryOutput>> | null | undefined> {
      let res: ApiResponse<Page<ServiceAppletDefinition.PostQueryOutput>> | null | undefined =
        await post<ApiResponse<Page<ServiceAppletDefinition.PostQueryOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_FORUM_V1_QUERY_POST_BY_TYPE,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }
  }


  export class ServiceAppletBillCardController {
    static async serviceAppletSearchUBookkeepingUBillUByUMonthv2Post(channelType: string,
      input: ServiceAppletDefinition.SearchBookkeepingBillByMonthInput, ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.MonthDataOldResponse> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.MonthDataOldResponse> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.MonthDataOldResponse>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_SEARCH_BOOKKEEPING_BILL_BY_MONTH_V2_URL,
          {},
          {},
          {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletSearchUBookkeepingUBillUByUMonthv3Post(channelType: string,
      input: ServiceAppletDefinition.SearchBookkeepingBillByMonthV2Input, ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.MonthDataOldResponse> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.MonthDataOldResponse> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.MonthDataOldResponse>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_SEARCH_BOOKKEEPING_BILL_BY_MONTH_V3_URL,
          {},
          {},
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


  export class MyAppletControllerV2 {
    static async serviceAppletV2ButlerGetallmyappletPost(acceptLanguage: string, channelType: string,
      input: ServiceAppletDefinition.AllMyAppletInput): Promise<RowResponse<ServiceAppletDefinition.AppletList> | null | undefined> {
      let res: RowResponse<ServiceAppletDefinition.AppletList> | null | undefined =
        await post<RowResponse<ServiceAppletDefinition.AppletList>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V2_BUTLER_GET_ALL_MY_APPLET,
          {},
          {},
          {
            "Accept-Language": acceptLanguage,
            "channel_type": channelType,
          },
          input
        );

      return res;
    }

    static async serviceAppletV2ButlerQueryallPost(input: ServiceAppletDefinition.DataVersionInput): Promise<ApiResponse<ServiceAppletDefinition.FastAppGroupOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.FastAppGroupOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.FastAppGroupOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V2_BUTLER_QUERY_ALL,
          {},
          {},
          {},
          input
        );

      return res;
    }
  }


  export class ConfigController {
    static async serviceAppletV1ButlerConfigSetappletremindtimePost(input: ServiceAppletDefinition.SetAppletRemindTimeInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAppletUrlConstant.SERVICE_APPLET_V1_BUTLER_CONFIG_SET_APPLET_REMIND_TIME,
        {},
        {},
        {
          // "ip": ip,
          // "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class MyAppletController {
    static async serviceAppletV1ButlerGetallmyappletPost(acceptLanguage: string, channelType: string,
      input: ServiceAppletDefinition.AllMyAppletInput): Promise<RowResponse<ServiceAppletDefinition.AppletOutputList> | null | undefined> {
      let res: RowResponse<ServiceAppletDefinition.AppletOutputList> | null | undefined =
        await post<RowResponse<ServiceAppletDefinition.AppletOutputList>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V1_BUTLER_GET_ALL_MY_APPLET,
          {},
          {},
          {
            "Accept-Language": acceptLanguage,
            "channel_type": channelType,
          },
          input
        );

      return res;
    }

    static async serviceAppletV1ButlerGetmyappletPost(acceptLanguage: string, channelType: string,
      input: ServiceAppletDefinition.MyAppletInput, ip: string,
      userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.AppletOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.AppletOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.AppletOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V1_BUTLER_GET_MY_APPLET,
          {},
          {},
          {
            "Accept-Language": acceptLanguage,
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletV1ButlerGetshortcutappletPost(acceptLanguage: string, channelType: string,
      deviceType: string, input: ServiceAppletDefinition.ShortcutAppletInput, ip: string,
      userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.ShortcutAppletOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.ShortcutAppletOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.ShortcutAppletOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V1_BUTLER_GET_SHORTCUT_APPLET,
          {},
          {},
          {
            "Accept-Language": acceptLanguage,
            "channel_type": channelType,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletV1ButlerIsneedappletguidePost(appletIdRequest: ServiceAppletDefinition.AppletIdRequest,
      channelType?: string, ip?: string,
      userId?: number): Promise<ApiResponse<ServiceAppletDefinition.IsNeedAppletGuideOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.IsNeedAppletGuideOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.IsNeedAppletGuideOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V1_BUTLER_IS_NEED_APPLET_GUIDE,
          {},
          {},
          {
            // "channel_type": channelType,
            // "ip": ip,
            // "user_id": userId
          },
          appletIdRequest
        );

      return res;
    }

    static async serviceAppletV1GuideGuideinfoPost(channelType: string, ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.GuideV2Output> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.GuideV2Output> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.GuideV2Output>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V1_GUIDE_GUIDE_INFO,
          {},
          {},
          {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
          },
        );

      return res;
    }
  }


  export class AppletDeleteController {
    static async serviceAppletDeletePost(input: ServiceAppletDefinition.AppletDeleteInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAppletUrlConstant.SERVICE_APPLET_DELETE,
        {},
        {},
        {
        },
        input
      );

      return res;
    }
  }


  export class ServiceAppletGlobalSearchController {
    static async serviceAppletGlobalsearchPost(input: ServiceAppletDefinition.GlobalSearchInput): Promise<ApiResponse<ServiceAppletDefinition.HomeSearchResultV2> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.HomeSearchResultV2> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.HomeSearchResultV2>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_GLOBAL_SEARCH,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async serviceAppletSummaryV1SelectMByMKeyMWordMMemoPost(acceptLanguage: string, channelType: string,
      input: ServiceAppletDefinition.GlobalSearchInput, ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.HomeSearchResult> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.HomeSearchResult> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.HomeSearchResult>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_SUMMARY_V1_SELECT_BY_KEY_WORD_MEMO_URL,
          {},
          {},
          {
            "Accept-Language": acceptLanguage,
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletSummaryV2SelectMByMKeyMWordMMemoPost(acceptLanguage: string, channelType: string,
      input: ServiceAppletDefinition.GlobalSearchInput, ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.HomeSearchResult> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.HomeSearchResult> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.HomeSearchResult>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_SUMMARY_V2_SELECT_BY_KEY_WORD_MEMO_URL,
          {},
          {},
          {
            "Accept-Language": acceptLanguage,
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }
  }


  export class ServiceAppletDailyCardController {
    static async serviceAppletGetdailyremindconfigPost(input: ServiceAppletDefinition.DailyRemindConfigDataVersionInput): Promise<ApiResponse<ServiceAppletDefinition.DailyRemindConfigOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.DailyRemindConfigOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.DailyRemindConfigOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_GET_DAILY_REMIND_CONFIG,
          {},
          {},
          {
          },
          input
        );

      return res;
    }

    static async serviceAppletSetdailyremindconfigPost(input: ServiceAppletDefinition.DailyRemindConfigV2Input): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAppletUrlConstant.SERVICE_APPLET_SET_DAILY_REMIND_CONFIG,
        {},
        {},
        {
        },
        input
      );

      return res;
    }
  }


  export class ServiceAppletImportantDayController {
    static async serviceAppletImportantdayGetanniversaryalbumPost(acceptLanguage: string, ip?: string,
      userId?: number): Promise<RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_GET_ANNIVERSARY_ALBUM,
          {},
          {},
          {
            "Accept-Language": acceptLanguage,
            // "ip": ip,
            // "user_id": userId
          },
        );

      return res;
    }

    static async serviceAppletImportantdayV1BatchaddcountdownbytemplatePost(inputs: Array<ServiceAppletDefinition.CountdownTemplateInput>,
      ip: string, userId: number): Promise<ServiceAppletDefinition.IdsResponse | null | undefined> {
      let res: ServiceAppletDefinition.IdsResponse | null | undefined = await post<ServiceAppletDefinition.IdsResponse>(
        ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V1_BATCH_ADD_COUNTDOWN_BY_TEMPLATE,
        {},
        {},
        {
          "ip": ip,
          "user_id": userId
        },
        inputs
      );

      return res;
    }

    static async serviceAppletImportantdayV1BatchaddfestivalbytemplatePost(input: ServiceAppletDefinition.FestivalFollowInsertOrUpdateInput,
      ip: string, userId: number): Promise<ServiceAppletDefinition.IdsResponse | null | undefined> {
      let res: ServiceAppletDefinition.IdsResponse | null | undefined = await post<ServiceAppletDefinition.IdsResponse>(
        ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V1_BATCH_ADD_FESTIVAL_BY_TEMPLATE,
        {},
        {},
        {
          "ip": ip,
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async serviceAppletImportantdayV1CustomUpdatetimestylePost(input: ServiceAppletDefinition.UpdateTimeStyleInput,
      userId?: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V1_CUSTOM_UPDATE_TIME_STYLE,
        {},
        {},
        {
          // "user_id": userId
        },
        input
      );

      return res;
    }

    static async serviceAppletImportantdayV1GetimportantdaydetailPost(input: ServiceAppletDefinition.GetImportantDayDetailInput): Promise<ApiResponse<ServiceAppletDefinition.ImportantDayOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.ImportantDayOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.ImportantDayOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V1_GET_IMPORTANT_DAY_DETAIL,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async serviceAppletImportantdayV1GetimportantdaytemplatePost(input: ServiceAppletDefinition.ListImportantDayHomeInputV2): Promise<RowResponse<RowData<ServiceAppletDefinition.ImportantDayTempOutput[]>> | null | undefined> {
      let res: RowResponse<RowData<ServiceAppletDefinition.ImportantDayTempOutput[]>> | null | undefined =
        await post<RowResponse<RowData<ServiceAppletDefinition.ImportantDayTempOutput[]>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V1_GET_IMPORTANT_DAY_TEMPLATE,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async serviceAppletImportantdayV1InitPost(input: ServiceAppletDefinition.ImportantDayInitInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V1_INIT,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async serviceAppletImportantdayV1IntentionaddimportantdayPost(input: ServiceAppletDefinition.IntentionAddImportantDayInput): Promise<ApiResponse<ServiceAppletDefinition.ImportantDayOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.ImportantDayOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.ImportantDayOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V1_INTENTION_ADD_IMPORTANT_DAY,
          {},
          {},
          {
          },
          input
        );

      return res;
    }

    static async serviceAppletImportantdayV1IntentionsearchimportantdayPost(input: ServiceAppletDefinition.SearchImportantDayInput): Promise<RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V1_INTENTION_SEARCH_IMPORTANT_DAY,
          {},
          {},
          {
          },
          input
        );

      return res;
    }

    static async serviceAppletImportantdayV1ListimportantdayhomePost(acceptLanguage: string, channelType: string,
      ip: string,
      userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V1_LIST_IMPORTANT_DAY_HOME,
          {},
          {},
          {
            "Accept-Language": acceptLanguage,
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
          },
        );

      return res;
    }

    static async serviceAppletImportantdayV1ListimportantdayhomebyappletidPost(acceptLanguage: string,
      channelType: string, input: ServiceAppletDefinition.AppletIdRequest, ip: string,
      userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V1_LIST_IMPORTANT_DAY_HOME_BY_APPLET_ID,
          {},
          {},
          {
            "Accept-Language": acceptLanguage,
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletImportantdayV1SearchimportantdayPost(acceptLanguage: string, channelType: string,
      input: ServiceAppletDefinition.SearchImportantDayInput,
      userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V1_SEARCH_IMPORTANT_DAY,
          {},
          {},
          {
            "Accept-Language": acceptLanguage,
            "channel_type": channelType,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletImportantdayV2BatchaddfestivalbytemplatePost(input: ServiceAppletDefinition.FestivalFollowInsertOrUpdateInput,
      ip: string, userId: number): Promise<ServiceAppletDefinition.IdsResponse | null | undefined> {
      let res: ServiceAppletDefinition.IdsResponse | null | undefined = await post<ServiceAppletDefinition.IdsResponse>(
        ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V2_BATCH_ADD_FESTIVAL_BY_TEMPLATE,
        {},
        {},
        {
          "ip": ip,
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async serviceAppletImportantdayV2ListimportantdayhomePost(acceptLanguage: string, channelType: string,
      input: ServiceAppletDefinition.ListImportantDayHomeInputV2, ip: string,
      userId: number): Promise<RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V2_LIST_IMPORTANT_DAY_HOME,
          {},
          {},
          {
            "Accept-Language": acceptLanguage,
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletImportantdayV2ListimportantdayhomebyappletidPost(acceptLanguage: string,
      channelType: string, input: ServiceAppletDefinition.ListImportantDayHomeByAppletInput, ip?: string,
      userId?: number): Promise<RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>> | null | undefined =
        await post<RowResponse<Array<ServiceAppletDefinition.ImportantDayOutput>>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V2_LIST_IMPORTANT_DAY_HOME_BY_APPLET_ID,
          {},
          {},
          {
            "Accept-Language": acceptLanguage,
            "channel_type": channelType,
          },
          input
        );

      return res;
    }

    static async serviceAppletImportantdayV3BatchaddfestivalbytemplatePost(input: ServiceAppletDefinition.FestivalFollowInsertOrUpdateInput,
      ip: string, userId: number): Promise<ServiceAppletDefinition.IdsResponse | null | undefined> {
      let res: ServiceAppletDefinition.IdsResponse | null | undefined = await post<ServiceAppletDefinition.IdsResponse>(
        ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V3_BATCH_ADD_FESTIVAL_BY_TEMPLATE,
        {},
        {},
        {
          "ip": ip,
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async serviceAppletImportantdayV4BatchaddfestivalbytemplatePost(input: ServiceAppletDefinition.FestivalFollowInsertOrUpdateInput,
      ip: string, userId: number): Promise<ServiceAppletDefinition.IdsResponse | null | undefined> {
      let res: ServiceAppletDefinition.IdsResponse | null | undefined = await post<ServiceAppletDefinition.IdsResponse>(
        ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V4_BATCH_ADD_FESTIVAL_BY_TEMPLATE,
        {},
        {},
        {
          "ip": ip,
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async serviceAppletImportantdayV5BatchaddfestivalbytemplatePost(acceptLanguage: string,
      input: ServiceAppletDefinition.FestivalFollowInsertOrUpdateInput, ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.ImportantDayBatchFestivalOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.ImportantDayBatchFestivalOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.ImportantDayBatchFestivalOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_IMPORTANT_DAY_V5_BATCH_ADD_FESTIVAL_BY_TEMPLATE,
          {},
          {},
          {
            "Accept-Language": acceptLanguage,
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }
  }


  export class ServiceAppletClockController {
    static async serviceAppletClockAddUOrUUpdateUBothUClockPost(input: ServiceAppletDefinition.AddOrUpdateBothClockInput,
      ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.AddOrUpdateBothClockOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.AddOrUpdateBothClockOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.AddOrUpdateBothClockOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_CLOCK_ADD_OR_UPDATE_BOTH_CLOCK_URL,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletClockAddUOrUUpdateUClockUSleepPost(input: ServiceAppletDefinition.ClockSleepInput,
      ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.AddOrUpdateClockSleepOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.AddOrUpdateClockSleepOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.AddOrUpdateClockSleepOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_CLOCK_ADD_OR_UPDATE_CLOCK_SLEEP_URL,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletClockAddUOrUUpdateUClockUWakeupPost(input: ServiceAppletDefinition.ClockWakeupInput,
      ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.AddOrUpdateClockWakeupOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.AddOrUpdateClockWakeupOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.AddOrUpdateClockWakeupOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_CLOCK_ADD_OR_UPDATE_CLOCK_WAKEUP_URL,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletClockHelpUSleepUMusicPost(): Promise<ApiResponse<ServiceAppletDefinition.MusicListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.MusicListOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.MusicListOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_CLOCK_HELP_SLEEP_MUSIC_URL,
          {},
          {},
          {},
        );

      return res;
    }

    static async serviceAppletClockSleepUMusicPost(): Promise<ApiResponse<ServiceAppletDefinition.MusicListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.MusicListOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.MusicListOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_CLOCK_SLEEP_MUSIC_URL,
          {},
          {},
          {},
        );

      return res;
    }

    static async serviceAppletClockV2ClockUEchoPost(): Promise<ApiResponse<ServiceAppletDefinition.ClockEchoOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.ClockEchoOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.ClockEchoOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_CLOCK_V2_CLOCK_ECHO_URL,
          {},
          {},
          {},
        );

      return res;
    }

    static async serviceAppletClockWakeupUMusicPost(ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.MusicListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.MusicListOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.MusicListOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_CLOCK_WAKEUP_MUSIC_URL,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
        );

      return res;
    }
  }


  export class ServiceAppletWorkRestScheduleController {
    static async serviceAppletWorkURestUScheduleUConfigDisplaystatusPost(input: ServiceAppletDefinition.DataVersionInput,
      ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.ScheduleDisplayStatusOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.ScheduleDisplayStatusOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.ScheduleDisplayStatusOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_WORK_REST_SCHEDULE_CONFIG_DISPLAY_STATUS_URL,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletWorkURestUScheduleUConfigListPost(ip: string,
      userId: number): Promise<ApiResponse<ServiceAppletDefinition.WorkRestScheduleConfigListDetailOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.WorkRestScheduleConfigListDetailOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.WorkRestScheduleConfigListDetailOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_WORK_REST_SCHEDULE_CONFIG_LIST_URL,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId
          },
        );

      return res;
    }

    static async serviceAppletWorkURestUScheduleUConfigUpdatePost(input: ServiceAppletDefinition.WorkRestScheduleConfigUpdateInput,
      ip: string, userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAppletUrlConstant.SERVICE_APPLET_WORK_REST_SCHEDULE_CONFIG_UPDATE_URL,
        {},
        {},
        {
          "ip": ip,
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async serviceAppletWorkURestUScheduleUConfigUpdatedisplaystatusPost(input: ServiceAppletDefinition.ScheduleUpdateDisplayStatusInput,
      ip: string, userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAppletUrlConstant.SERVICE_APPLET_WORK_REST_SCHEDULE_CONFIG_UPDATE_DISPLAY_STATUS_URL,
        {},
        {},
        {
          "ip": ip,
          "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class ServiceAppletWaterController {
    static async serviceAppletWaterV1MusicPost(): Promise<ApiResponse<ServiceAppletDefinition.WaterMusicListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.WaterMusicListOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.WaterMusicListOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_WATER_V1_MUSIC,
          {},
          {},
          {},
        );

      return res;
    }

    static async serviceAppletWaterV2ConfigGetwaterconfigoutputPost(input: ServiceAppletDefinition.ServiceGetWaterConfigInput): Promise<ApiResponse<ServiceAppletDefinition.WaterConfigOutputV2> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.WaterConfigOutputV2> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.WaterConfigOutputV2>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_WATER_V2_CONFIG_GET_WATER_CONFIG_OUTPUT,
          {},
          {},
          {
          },
          input
        );

      return res;
    }

    static async serviceAppletWaterV2ConfigInitwaterconfigPost(input: ServiceAppletDefinition.InitWaterConfigInputV2,
      ip?: string, userId?: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAppletUrlConstant.SERVICE_APPLET_WATER_V2_CONFIG_INIT_WATER_CONFIG,
        {},
        {},
        {
          // "ip": ip,
          // "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class TotoroMsgController {
    static async serviceAppletTotoroGetusersysmsgdetailbyidPost(input: ServiceAppletDefinition.MsgListSysMsgIdInput): Promise<ApiResponse<ServiceAppletDefinition.TotoroUserSysMsgOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.TotoroUserSysMsgOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.TotoroUserSysMsgOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_TOTORO_GET_USER_SYS_MSG_DETAIL_BY_ID,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async serviceAppletTotoroListbubblemsgPost(input?: ServiceAppletDefinition.TotoroBubbleMsgListInput,
      userId?: number): Promise<ApiResponse<ServiceAppletDefinition.TotoroBubbleMsgListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.TotoroBubbleMsgListOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.TotoroBubbleMsgListOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_TOTORO_LIST_BUBBLE_MSG,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletTotoroListmsgPost(ip: string, userId: number,
      input?: ServiceAppletDefinition.TotoroMsgListInput): Promise<ApiResponse<ServiceAppletDefinition.TotoroMsgListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.TotoroMsgListOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.TotoroMsgListOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_TOTORO_LIST_MSG,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId,
          },
          input
        );

      return res;
    }

    static async serviceAppletTotoroReadmsgPost(channelType: string, input: ServiceAppletDefinition.TotoroMsgIdInput,
      ip: string, userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAppletUrlConstant.SERVICE_APPLET_TOTORO_READ_MSG,
        {},
        {},
        {
          "channel_type": channelType,
          "ip": ip,
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async serviceAppletTotoroUnreadPost(channelType: string, deviceType: string, ip: string, userId: number,
      input?: ServiceAppletDefinition.TotoroMsgUnreadInput): Promise<ApiResponse<ServiceAppletDefinition.TotoroUnreadMsgOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.TotoroUnreadMsgOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.TotoroUnreadMsgOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_TOTORO_UNREAD,
          {},
          {},
          {
            "channel_type": channelType,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId,
          },
          input
        );

      return res;
    }

    static async serviceAppletTotoroV2ListbubblemsgPost(input: ServiceAppletDefinition.TotoroBubbleMsgListInput,
      userId?: number): Promise<ApiResponse<ServiceAppletDefinition.TotoroBubbleMsgListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.TotoroBubbleMsgListOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.TotoroBubbleMsgListOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_TOTORO_V2_LIST_BUBBLE_MSG,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async serviceAppletTotoroV2UnreadPost(channelType: string, deviceType: string, ip: string, userId: number,
      input?: ServiceAppletDefinition.TotoroMsgUnreadInput): Promise<ApiResponse<ServiceAppletDefinition.TotoroUnreadMsgOutputV2> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.TotoroUnreadMsgOutputV2> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.TotoroUnreadMsgOutputV2>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_TOTORO_V2_UNREAD,
          {},
          {},
          {
            "channel_type": channelType,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId,
          },
          input
        );

      return res;
    }

    static async serviceAppletTotoroV3UnreadPost(channelType: string, deviceType: string, ip: string, userId: number,
      version: string, channel?: string,
      input?: ServiceAppletDefinition.TotoroMsgUnreadInput): Promise<ApiResponse<ServiceAppletDefinition.TotoroUnreadMsgOutputV2> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.TotoroUnreadMsgOutputV2> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.TotoroUnreadMsgOutputV2>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_TOTORO_V3_UNREAD,
          {},
          {},
          {
            "channel_type": channelType,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId,
            "version": version,
            "channel": channel,
          },
          input
        );

      return res;
    }

    static async serviceAppletTotoroV4UnreadPost(channelType: string, deviceType: string, ip: string, userId: number,
      version: string, channel?: string,
      input?: ServiceAppletDefinition.TotoroMsgUnreadInput): Promise<ApiResponse<ServiceAppletDefinition.TotoroUnreadMsgOutputV4> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.TotoroUnreadMsgOutputV4> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.TotoroUnreadMsgOutputV4>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_TOTORO_V4_UNREAD,
          {},
          {},
          {
            "channel_type": channelType,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId,
            "version": version,
            "channel": channel,
          },
          input
        );

      return res;
    }

    static async serviceAppletTotoroV5UnreadPost(channelType: string, deviceType: string, ip: string, userId: number,
      version: string, channel?: string,
      input?: ServiceAppletDefinition.TotoroMsgUnreadInput): Promise<ApiResponse<ServiceAppletDefinition.TotoroUnreadMsgOutputV4> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.TotoroUnreadMsgOutputV4> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.TotoroUnreadMsgOutputV4>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_TOTORO_V5_UNREAD,
          {},
          {},
          {
            "channel_type": channelType,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId,
            "version": version,
            "channel": channel,
          },
          input
        );

      return res;
    }

    static async serviceAppletV2TotoroListmsgPost(ip: string, userId: number,
      input?: ServiceAppletDefinition.TotoroMsgListV2Input): Promise<ApiResponse<ServiceAppletDefinition.TotoroMsgListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.TotoroMsgListOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.TotoroMsgListOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V2_TOTORO_LIST_MSG,
          {},
          {},
          {
            "ip": ip,
            "user_id": userId,
          },
          input
        );

      return res;
    }

    static async serviceAppletV3TotoroListmsgPost(channelType: string, deviceType: string, ip: string, userId: number,
      input?: ServiceAppletDefinition.TotoroMsgListV2Input): Promise<ApiResponse<ServiceAppletDefinition.TotoroMsgListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAppletDefinition.TotoroMsgListOutput> | null | undefined =
        await post<ApiResponse<ServiceAppletDefinition.TotoroMsgListOutput>>(
          ServiceAppletUrlConstant.SERVICE_APPLET_V3_TOTORO_LIST_MSG,
          {},
          {},
          {
            "channel_type": channelType,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId,
          },
          input
        );

      return res;
    }
  }
}
