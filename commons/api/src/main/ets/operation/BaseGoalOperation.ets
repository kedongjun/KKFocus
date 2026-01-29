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
import { BaseGoalDefinition } from './../definition/BaseGoalDefinition';
import { BaseGoalUrlConstant } from './../constant/BaseGoalUrlConstant';

export namespace BaseGoalOperation {
  export class GoalTempletController {
    static async baseGoalV3BatchaddgoalbyguidetemplateidPost(input: BaseGoalDefinition.BatchAddGoalByGuideTemplateIdInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_BATCH_ADD_GOAL_BY_GUIDE_TEMPLATE_ID,
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

    static async baseGoalV3GettempletlistPost(ip?: string, userId?: number):Promise<RowResponse<Array<BaseGoalDefinition.GoalTempletWrapperOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseGoalDefinition.GoalTempletWrapperOutput>> | null | undefined = await post<RowResponse<Array<BaseGoalDefinition.GoalTempletWrapperOutput>>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_GET_TEMPLET_LIST,
        {
        },
        {
        },
        {
            // "ip": ip,
            // "user_id": userId
        },
      );

      return res;
    }

    static async baseGoalV3GuidetemplatePost():Promise<RowResponse<Array<BaseGoalDefinition.GoalGuideTemplateOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseGoalDefinition.GoalGuideTemplateOutput>> | null | undefined = await post<RowResponse<Array<BaseGoalDefinition.GoalGuideTemplateOutput>>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_GUIDE_TEMPLATE,
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
        BaseGoalUrlConstant.CHECKALIVE,
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


  export class GoalViewController {
    static async baseGoalV3GetappletcountdataPost(userId: number):Promise<ApiResponse<BaseGoalDefinition.GoalAppletCountDataOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalAppletCountDataOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalAppletCountDataOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_GET_APPLET_COUNT_DATA,
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

    static async baseGoalV3GetappletdataPost(userId: number):Promise<RowResponse<Array<BaseGoalDefinition.GoalOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseGoalDefinition.GoalOutput>> | null | undefined = await post<RowResponse<Array<BaseGoalDefinition.GoalOutput>>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_GET_APPLET_DATA,
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

    static async baseGoalV3SyncgoalPost(dto: BaseGoalDefinition.SyncDataRequest, userId: number):Promise<ApiResponse<BaseGoalDefinition.SyncGoalUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.SyncGoalUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseGoalDefinition.SyncGoalUsingPOSTRsp>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_SYNC_GOAL,
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

    static async baseGoalV3SyncgoalfinishPost(dto: BaseGoalDefinition.SyncDataRequest, userId: number):Promise<ApiResponse<BaseGoalDefinition.GoalFinishSyncOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalFinishSyncOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalFinishSyncOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_SYNC_GOAL_FINISH,
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

    static async baseGoalV3TodoviewlistPost(input: BaseGoalDefinition.GoalTodoViewInput, userId: number):Promise<RowResponse<Array<BaseGoalDefinition.GoalTodoViewOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseGoalDefinition.GoalTodoViewOutput>> | null | undefined = await post<RowResponse<Array<BaseGoalDefinition.GoalTodoViewOutput>>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_TODO_VIEW_LIST,
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


  export class GoalControllerV3 {
    static async baseGoalAchievementreachPost(input: BaseGoalDefinition.AchievementReachInput, userId: number):Promise<RowResponse<Array<BaseGoalDefinition.AchievementReachVo>> | null | undefined> {
      let res: RowResponse<Array<BaseGoalDefinition.AchievementReachVo>> | null | undefined = await post<RowResponse<Array<BaseGoalDefinition.AchievementReachVo>>>(
        BaseGoalUrlConstant.BASE_GOAL_ACHIEVEMENT_REACH,
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

    static async baseGoalHistorydatacountPost(userId: number):Promise<ApiResponse<Map<string, number>> | null | undefined> {
      let res: ApiResponse<Map<string, number>> | null | undefined = await post<ApiResponse<Map<string, number>>>(
        BaseGoalUrlConstant.BASE_GOAL_HISTORY_DATA_COUNT,
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

    static async baseGoalMemorialdataPost(input: BaseGoalDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseGoalDefinition.GoalPageOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalPageOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalPageOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_MEMORIAL_DATA,
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

    static async baseGoalV3AddmultiPost(input: BaseGoalDefinition.CUMultiSuperGoalInput):Promise<ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_ADD_MULTI,
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

    static async baseGoalV3AddorupdatefinishPost(input: BaseGoalDefinition.AddOrUpdateFinishInput):Promise<ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_ADD_OR_UPDATE_FINISH,
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

    static async baseGoalV3AddsinglePost(input: BaseGoalDefinition.CUSingleGoalInput):Promise<ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_ADD_SINGLE,
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

    static async baseGoalV3DailysummarygoallistPost(input: BaseGoalDefinition.DateRequest, userId: number):Promise<ApiResponse<BaseGoalDefinition.DailySummaryGoalListUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.DailySummaryGoalListUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseGoalDefinition.DailySummaryGoalListUsingPOSTRsp>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_DAILY_SUMMARY_GOAL_LIST,
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

    static async baseGoalV3DaygoalPost(input: BaseGoalDefinition.DayGoalInput, userId: number):Promise<ApiResponse<BaseGoalDefinition.DayGoalOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.DayGoalOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.DayGoalOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_DAY_GOAL,
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

    static async baseGoalV3DeletePost(input: BaseGoalDefinition.IdRequest, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_DELETE,
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

    static async baseGoalV3DeletefinishPost(input: BaseGoalDefinition.IdRequest, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_DELETE_FINISH,
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

    static async baseGoalV3DetailPost(input: BaseGoalDefinition.GoalDetailInput):Promise<ApiResponse<BaseGoalDefinition.GoalDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalDetailOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalDetailOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_DETAIL,
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

    static async baseGoalV3FinishinfoPost(input: BaseGoalDefinition.FinishInfoInput):Promise<ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_FINISH_INFO,
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

    static async baseGoalV3HascurrentornextyearlastdaygoalPost(input: BaseGoalDefinition.HasCurrentOrNextYearLastDayGoalInput, userId: number):Promise<ApiResponse<BaseGoalDefinition.HasCurrentOrNextYearLastDayGoalOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.HasCurrentOrNextYearLastDayGoalOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.HasCurrentOrNextYearLastDayGoalOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_HAS_CURRENT_OR_NEXT_YEAR_LAST_DAY_GOAL,
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

    static async baseGoalV3HomepagePost(input: BaseGoalDefinition.GoalHomepageInput):Promise<ApiResponse<BaseGoalDefinition.GoalHomepageOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalHomepageOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalHomepageOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_HOMEPAGE,
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

    static async baseGoalV3QueryintentPost(userId: number):Promise<ApiResponse<BaseGoalDefinition.QueryIntentOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.QueryIntentOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.QueryIntentOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_QUERY_INTENT,
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

    static async baseGoalV3UpdatebgimgPost(input: BaseGoalDefinition.UpdateBgImgInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_UPDATE_BG_IMG,
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

    static async baseGoalV3UpdatefoldPost(input: BaseGoalDefinition.UpdateFoldInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_UPDATE_FOLD,
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

    static async baseGoalV3UpdatemultiPost(input: BaseGoalDefinition.CUMultiSuperGoalInput,channelType?: string,  ip?: string, userId?: number):Promise<ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_UPDATE_MULTI,
        {
        },
        {
        },
        {
            // "channel_type": channelType,
            // "ip": ip,
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseGoalV3UpdatesinglePost(input: BaseGoalDefinition.CUSingleGoalInput, userId?: number):Promise<ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalFinishDetailOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_UPDATE_SINGLE,
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

    static async baseGoalV3UpdatesortPost(input: BaseGoalDefinition.IdsRequest, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_UPDATE_SORT,
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


  export class GoalOperateController {
    static async baseGoalV1AddfeelingPost(input: BaseGoalDefinition.AddFellingInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseGoalUrlConstant.BASE_GOAL_V1_ADD_FEELING,
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

    static async baseGoalV1AddletterPost(input: BaseGoalDefinition.AddLetterInput, ip: string, userId: number):Promise<ApiResponse<BaseGoalDefinition.LetterOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.LetterOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.LetterOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V1_ADD_LETTER,
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

    static async baseGoalV1AddmytargetPost(input: BaseGoalDefinition.AddMyTargetInput, ip: string, userId: number):Promise<ApiResponse<BaseGoalDefinition.MyTargetInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.MyTargetInfoOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.MyTargetInfoOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V1_ADD_MY_TARGET,
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

    static async baseGoalV1GetlettersPost():Promise<RowResponse<Array<BaseGoalDefinition.LetterOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseGoalDefinition.LetterOutput>> | null | undefined = await post<RowResponse<Array<BaseGoalDefinition.LetterOutput>>>(
        BaseGoalUrlConstant.BASE_GOAL_V1_GET_LETTERS,
        {
        },
        {
        },
      );

      return res;
    }

    static async baseGoalV1GetmytargetPost(input: BaseGoalDefinition.TheDateInput, ip: string, userId: number):Promise<RowResponse<Array<BaseGoalDefinition.MyTargetInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseGoalDefinition.MyTargetInfoOutput>> | null | undefined = await post<RowResponse<Array<BaseGoalDefinition.MyTargetInfoOutput>>>(
        BaseGoalUrlConstant.BASE_GOAL_V1_GET_MY_TARGET,
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

    static async baseGoalV1GetsettingPost(ip: string, userId: number):Promise<ApiResponse<BaseGoalDefinition.GetSettingOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GetSettingOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GetSettingOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V1_GET_SETTING,
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

    static async baseGoalV1GetshortcutappletgoalsettingPost(input: BaseGoalDefinition.TheDateInput, userId: number):Promise<ApiResponse<BaseGoalDefinition.ShortcutAppletGoalSettingOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.ShortcutAppletGoalSettingOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.ShortcutAppletGoalSettingOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V1_GET_SHORTCUT_APPLET_GOAL_SETTING,
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

    static async baseGoalV1GetsilkbagsPost(ip: string, userId: number):Promise<RowResponse<Array<BaseGoalDefinition.SilkBagOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseGoalDefinition.SilkBagOutput>> | null | undefined = await post<RowResponse<Array<BaseGoalDefinition.SilkBagOutput>>>(
        BaseGoalUrlConstant.BASE_GOAL_V1_GET_SILK_BAGS,
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

    static async baseGoalV1MailboxstatusPost(input: BaseGoalDefinition.TheDateInput):Promise<ApiResponse<BaseGoalDefinition.MailboxStatusOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.MailboxStatusOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.MailboxStatusOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V1_MAILBOX_STATUS,
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

    static async baseGoalV1OpenletterPost(input: BaseGoalDefinition.OpenLetterInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseGoalUrlConstant.BASE_GOAL_V1_OPEN_LETTER,
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

    static async baseGoalV1SettingPost(input: BaseGoalDefinition.SettingInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseGoalUrlConstant.BASE_GOAL_V1_SETTING,
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

    static async baseGoalV1UpdatemytargetPost(input: BaseGoalDefinition.UpdateMyTargetInput, ip: string, userId: number):Promise<ApiResponse<BaseGoalDefinition.MyTargetInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.MyTargetInfoOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.MyTargetInfoOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V1_UPDATE_MY_TARGET,
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

    static async baseGoalV1UpdatesilkbagPost(input: BaseGoalDefinition.UpdateSilkBagInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseGoalUrlConstant.BASE_GOAL_V1_UPDATE_SILK_BAG,
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

    static async baseGoalV1ViewReciprocalPost(input: BaseGoalDefinition.ReciprocalViewRequest, userId: number):Promise<ApiResponse<BaseGoalDefinition.GoalReciprocalViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalReciprocalViewListOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalReciprocalViewListOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V1_VIEW_RECIPROCAL,
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

    static async baseGoalV1WipePost(input: BaseGoalDefinition.WipeInput, userId: number):Promise<ApiResponse<BaseGoalDefinition.MyTargetInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.MyTargetInfoOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.MyTargetInfoOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V1_WIPE,
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

    static async baseGoalV2GetmytargetPost(input: BaseGoalDefinition.TheDateInput, ip: string, userId: number):Promise<RowResponse<Array<BaseGoalDefinition.MyTargetInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseGoalDefinition.MyTargetInfoOutput>> | null | undefined = await post<RowResponse<Array<BaseGoalDefinition.MyTargetInfoOutput>>>(
        BaseGoalUrlConstant.BASE_GOAL_V2_GET_MY_TARGET,
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


  export class GoalRemindController {
    static async baseGoalV3GetremindelementsPost(input: BaseGoalDefinition.GoalTodoViewInput, userId: number):Promise<ApiResponse<BaseGoalDefinition.GoalTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalTodoViewListOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_GET_REMIND_ELEMENTS,
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

    static async baseGoalV3GetusergoalremindPost(userId?: number):Promise<ApiResponse<BaseGoalDefinition.GoalRemindOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalRemindOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalRemindOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_GET_USER_GOAL_REMIND,
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

    static async baseGoalV3InsertorupdateusergoalremindPost(input: BaseGoalDefinition.GoalRemindInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_INSERT_OR_UPDATE_USER_GOAL_REMIND,
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


  export class GoalFinishController {
    static async baseGoalV3CheckPost(ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_CHECK,
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

    static async baseGoalV3GetgoalchartPost(input: BaseGoalDefinition.GoalChartInput):Promise<ApiResponse<BaseGoalDefinition.GoalChartOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalChartOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalChartOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_GET_GOAL_CHART,
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

    static async baseGoalV3GetgoaltimeaxisPost(input: BaseGoalDefinition.GoalTimeAxisInput, ip?: string, userId?: number):Promise<ApiResponse<BaseGoalDefinition.GoalTimeAxisOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalTimeAxisOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalTimeAxisOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_GET_GOAL_TIME_AXIS,
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


  export class GoalIconColorController {
    static async baseGoalV3GeticoncolorPost():Promise<ApiResponse<BaseGoalDefinition.GoalIconColorOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.GoalIconColorOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.GoalIconColorOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_GET_ICON_COLOR,
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


  export class GoalRichLetterController {
    static async baseGoalV3AddrichletterPost(input: BaseGoalDefinition.AddRichLetterInput, ip?: string, userId?: number):Promise<ApiResponse<BaseGoalDefinition.RichLetterOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.RichLetterOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.RichLetterOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_ADD_RICH_LETTER,
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

    static async baseGoalV3DeleterichletterPost(input: BaseGoalDefinition.IdRequest, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_DELETE_RICH_LETTER,
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

    static async baseGoalV3GetrichletterPost(input: BaseGoalDefinition.IdRequest, userId?: number):Promise<ApiResponse<BaseGoalDefinition.RichLetterOutput> | null | undefined> {
      let res: ApiResponse<BaseGoalDefinition.RichLetterOutput> | null | undefined = await post<ApiResponse<BaseGoalDefinition.RichLetterOutput>>(
        BaseGoalUrlConstant.BASE_GOAL_V3_GET_RICH_LETTER,
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
}
