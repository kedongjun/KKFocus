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
import { FutureRecordDefinition } from './../definition/FutureRecordDefinition';
import { FutureRecordUrlConstant } from './../constant/FutureRecordUrlConstant';

export namespace FutureRecordOperation {
  export class HabitController {
    static async futureRecordHabitV1AchievementreachPost(input: FutureRecordDefinition.HabitAchievementReachInput, userId: number):Promise<RowResponse<Array<FutureRecordDefinition.AchievementReachVo>> | null | undefined> {
      let res: RowResponse<Array<FutureRecordDefinition.AchievementReachVo>> | null | undefined = await post<RowResponse<Array<FutureRecordDefinition.AchievementReachVo>>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_ACHIEVEMENT_REACH,
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

    static async futureRecordHabitV1AddPost(input: FutureRecordDefinition.AddHabitInput):Promise<ApiResponse<FutureRecordDefinition.HabitDetailOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.HabitDetailOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.HabitDetailOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_ADD,
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

    static async futureRecordHabitV1AddfinishPost(input: FutureRecordDefinition.AddNormalFinishInput, ip: string, userId: number):Promise<ApiResponse<FutureRecordDefinition.FinishRemarkOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.FinishRemarkOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.FinishRemarkOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_ADD_FINISH,
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

    static async futureRecordHabitV1AddnormalandgoalfinishPost(input: FutureRecordDefinition.AddNormalAndGoalFinishInput):Promise<ApiResponse<FutureRecordDefinition.FinishRemarkOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.FinishRemarkOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.FinishRemarkOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_ADD_NORMAL_AND_GOAL_FINISH,
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

    static async futureRecordHabitV1AllhabitPost(userId: number):Promise<ApiResponse<FutureRecordDefinition.SuspendOrNotHabitListOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.SuspendOrNotHabitListOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.SuspendOrNotHabitListOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_ALL_HABIT,
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

    static async futureRecordHabitV1AllhabitsortPost(input: FutureRecordDefinition.HabitSortInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_ALL_HABIT_SORT,
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

    static async futureRecordHabitV1ApplethistoryPost(idsRequest: FutureRecordDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<FutureRecordDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<FutureRecordDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<FutureRecordDefinition.AppletHistoryResponse>>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_APPLET_HISTORY,
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

    static async futureRecordHabitV1ColorlistPost():Promise<RowResponse<Array<FutureRecordDefinition.HabitColorOutput>> | null | undefined> {
      let res: RowResponse<Array<FutureRecordDefinition.HabitColorOutput>> | null | undefined = await post<RowResponse<Array<FutureRecordDefinition.HabitColorOutput>>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_COLOR_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async futureRecordHabitV1DayhabitPost(input: FutureRecordDefinition.DayHabitInput, userId?: number):Promise<ApiResponse<FutureRecordDefinition.DayHabitOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.DayHabitOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.DayHabitOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_DAY_HABIT,
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

    static async futureRecordHabitV1DeletePost(input: FutureRecordDefinition.DeleteHabitInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_DELETE,
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

    static async futureRecordHabitV1DetailPost(input: FutureRecordDefinition.HabitDetailInput):Promise<ApiResponse<FutureRecordDefinition.HabitDetailOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.HabitDetailOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.HabitDetailOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_DETAIL,
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

    static async futureRecordHabitV1FinishremarkinfoPost(input: FutureRecordDefinition.FinishRemarkInfoInput):Promise<ApiResponse<FutureRecordDefinition.FinishRemarkOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.FinishRemarkOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.FinishRemarkOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_FINISH_REMARK_INFO,
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

    static async futureRecordHabitV1GenremindelementsPost(input: FutureRecordDefinition.HabitTodoViewInput, userId: number):Promise<ApiResponse<FutureRecordDefinition.HabitTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.HabitTodoViewListOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.HabitTodoViewListOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_GEN_REMIND_ELEMENTS,
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

    static async futureRecordHabitV1HidefinishedstatePost(userId?: number):Promise<ApiResponse<FutureRecordDefinition.HideFinishedStateOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.HideFinishedStateOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.HideFinishedStateOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_HIDE_FINISHED_STATE,
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

    static async futureRecordHabitV1HistorydatacountPost(userId: number):Promise<ApiResponse<Map<string, number>> | null | undefined> {
      let res: ApiResponse<Map<string, number>> | null | undefined = await post<ApiResponse<Map<string, number>>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_HISTORY_DATA_COUNT,
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

    static async futureRecordHabitV1IconlistPost():Promise<RowResponse<Array<FutureRecordDefinition.HabitIconOutput>> | null | undefined> {
      let res: RowResponse<Array<FutureRecordDefinition.HabitIconOutput>> | null | undefined = await post<RowResponse<Array<FutureRecordDefinition.HabitIconOutput>>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_ICON_LIST,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async futureRecordHabitV1ListPost():Promise<ApiResponse<FutureRecordDefinition.HabitListOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.HabitListOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.HabitListOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_LIST,
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

    static async futureRecordHabitV1MonthfinishstatePost(input: FutureRecordDefinition.MonthFinishStateInput):Promise<ApiResponse<FutureRecordDefinition.MonthFinishStateUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.MonthFinishStateUsingPOSTRsp> | null | undefined = await post<ApiResponse<FutureRecordDefinition.MonthFinishStateUsingPOSTRsp>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_MONTH_FINISH_STATE,
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

    static async futureRecordHabitV1MyappletPost(userId: number):Promise<ApiResponse<FutureRecordDefinition.FutureRecordAppletUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.FutureRecordAppletUsingPOSTRsp> | null | undefined = await post<ApiResponse<FutureRecordDefinition.FutureRecordAppletUsingPOSTRsp>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_MY_APPLET,
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

    static async futureRecordHabitV1RestorePost(input: FutureRecordDefinition.SuspendHabitInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_RESTORE,
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

    static async futureRecordHabitV1ShortcutappletPost(userId: number):Promise<ApiResponse<FutureRecordDefinition.DayHabitOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.DayHabitOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.DayHabitOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_SHORTCUT_APPLET,
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

    static async futureRecordHabitV1SimpledetailPost(input: FutureRecordDefinition.HabitSimpleDetailInput):Promise<ApiResponse<FutureRecordDefinition.HabitOutputWithRule> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.HabitOutputWithRule> | null | undefined = await post<ApiResponse<FutureRecordDefinition.HabitOutputWithRule>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_SIMPLE_DETAIL,
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

    static async futureRecordHabitV1StatisticsPost(input: FutureRecordDefinition.HabitStatisticInput, userId?: number):Promise<ApiResponse<FutureRecordDefinition.HabitStatisticsOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.HabitStatisticsOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.HabitStatisticsOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_STATISTICS,
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

    static async futureRecordHabitV1SuspendPost(input: FutureRecordDefinition.SuspendHabitInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_SUSPEND,
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

    static async futureRecordHabitV1SuspendhabitPost(userId: number):Promise<ApiResponse<FutureRecordDefinition.SuspendOrNotHabitListOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.SuspendOrNotHabitListOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.SuspendOrNotHabitListOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_SUSPEND_HABIT,
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

    static async futureRecordHabitV1TodoviewlistPost(input: FutureRecordDefinition.HabitTodoViewInput, userId: number):Promise<ApiResponse<FutureRecordDefinition.HabitTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.HabitTodoViewListOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.HabitTodoViewListOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_TODO_VIEW_LIST,
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

    static async futureRecordHabitV1UpdatePost(input: FutureRecordDefinition.UpdateHabitInput):Promise<ApiResponse<FutureRecordDefinition.HabitDetailOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.HabitDetailOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.HabitDetailOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_UPDATE,
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

    static async futureRecordHabitV1UpdatefinishremarkPost(input: FutureRecordDefinition.UpdateFinishRemarkInput):Promise<ApiResponse<FutureRecordDefinition.FinishRemarkOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.FinishRemarkOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.FinishRemarkOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_UPDATE_FINISH_REMARK,
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

    static async futureRecordHabitV1UpdatefinishtimePost(input: FutureRecordDefinition.UpdateFinishTimeInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_UPDATE_FINISH_TIME,
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

    static async futureRecordHabitV1UpdatehidefinishedPost(input: FutureRecordDefinition.UpdateHideFinishedInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_UPDATE_HIDE_FINISHED,
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

    static async futureRecordHabitV1UpdatestatusPost(input: FutureRecordDefinition.HabitUpdateStatusInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_UPDATE_STATUS,
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

    static async futureRecordHabitV1UpdateviewshowPost(input: FutureRecordDefinition.UpdateHabitViewShowInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_UPDATE_VIEW_SHOW,
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

    static async futureRecordV1DaterangecountPost(input: FutureRecordDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<FutureRecordDefinition.HabitCountOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.HabitCountOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.HabitCountOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_V1_DATE_RANGE_COUNT,
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


  export class ImportantDayPicController {
    static async futureRecordImportantdayV1AddpicPost(input: FutureRecordDefinition.ImportantDayPicInput, ip: string, userId: number):Promise<ApiResponse<FutureRecordDefinition.ImportantDayPicOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.ImportantDayPicOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.ImportantDayPicOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V1_ADD_PIC,
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

    static async futureRecordImportantdayV1DeletepicPost(input: FutureRecordDefinition.ImportantDayPicIdInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V1_DELETE_PIC,
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

    static async futureRecordImportantdayV1GetpiclistPost(input: FutureRecordDefinition.ImportantDayPicQueryInput, userId: number):Promise<RowResponse<Array<FutureRecordDefinition.ImportantDayPicOutput>> | null | undefined> {
      let res: RowResponse<Array<FutureRecordDefinition.ImportantDayPicOutput>> | null | undefined = await post<RowResponse<Array<FutureRecordDefinition.ImportantDayPicOutput>>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V1_GET_PIC_LIST,
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


  export class HealthController {
    static async futureRecordHealthV1GetbodyrecordPost(userId: number):Promise<ApiResponse<FutureRecordDefinition.BodyRecordOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.BodyRecordOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.BodyRecordOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HEALTH_V1_GET_BODY_RECORD,
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

    static async futureRecordHealthV1GethealthrecordPost(input: FutureRecordDefinition.GetHealthRecordInput, userId: number):Promise<ApiResponse<FutureRecordDefinition.HealthRecordOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.HealthRecordOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.HealthRecordOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HEALTH_V1_GET_HEALTH_RECORD,
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

    static async futureRecordHealthV1GetlatesthealthrecordPost(userId: number):Promise<ApiResponse<FutureRecordDefinition.HealthRecordOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.HealthRecordOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.HealthRecordOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HEALTH_V1_GET_LATEST_HEALTH_RECORD,
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

    static async futureRecordHealthV1HealthrecordstatisticsPost(input: FutureRecordDefinition.HealthRecordStatisticsInput, userId: number):Promise<ApiResponse<FutureRecordDefinition.HealthRecordStatisticsOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.HealthRecordStatisticsOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.HealthRecordStatisticsOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HEALTH_V1_HEALTH_RECORD_STATISTICS,
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

    static async futureRecordHealthV1SavebodyrecordPost(input: FutureRecordDefinition.BodyRecordInput, ip: string, userId: number):Promise<ApiResponse<FutureRecordDefinition.BodyRecordOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.BodyRecordOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.BodyRecordOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HEALTH_V1_SAVE_BODY_RECORD,
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

    static async futureRecordHealthV1SavehealthrecordPost(input: FutureRecordDefinition.HealthRecordInput, ip: string, userId: number):Promise<ApiResponse<FutureRecordDefinition.HealthRecordOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.HealthRecordOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.HealthRecordOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HEALTH_V1_SAVE_HEALTH_RECORD,
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


  export class HabitStorehouseController {
    static async futureRecordHabitV1BatchaddhabitbyguidetemplateidPost(input: FutureRecordDefinition.BatchAddHabitByGuideTemplateIdInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_BATCH_ADD_HABIT_BY_GUIDE_TEMPLATE_ID,
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

    static async futureRecordHabitV1BatchaddhabitbytemplateidPost(input: FutureRecordDefinition.BatchAddHabitByTemplateIdInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_BATCH_ADD_HABIT_BY_TEMPLATE_ID,
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

    static async futureRecordHabitV1HabitguidetemplatePost():Promise<RowResponse<Array<FutureRecordDefinition.HabitGuideTemplateOutput>> | null | undefined> {
      let res: RowResponse<Array<FutureRecordDefinition.HabitGuideTemplateOutput>> | null | undefined = await post<RowResponse<Array<FutureRecordDefinition.HabitGuideTemplateOutput>>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_HABIT_GUIDE_TEMPLATE,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async futureRecordHabitV1HabitstorehousePost(input: FutureRecordDefinition.HabitStorehouseInput):Promise<ApiResponse<FutureRecordDefinition.HabitStorehouseListOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.HabitStorehouseListOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.HabitStorehouseListOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_HABIT_STOREHOUSE,
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


  export class HabitSyncController {
    static async futureRecordHabitV1SyncdataPost(input: FutureRecordDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<FutureRecordDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<FutureRecordDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<FutureRecordDefinition.SyncDataAppletResponse>>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_SYNC_DATA,
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

    static async futureRecordHabitV1SyncfinishdataPost(input: FutureRecordDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<FutureRecordDefinition.HabitFinishOutput4Sync>> | null | undefined> {
      let res: RowResponse<Array<FutureRecordDefinition.HabitFinishOutput4Sync>> | null | undefined = await post<RowResponse<Array<FutureRecordDefinition.HabitFinishOutput4Sync>>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_SYNC_FINISH_DATA,
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


  export class WeatherPositionController {
    static async futureRecordWeatherV1FindweathercityPost(dto: FutureRecordDefinition.WeatherCityNameInput):Promise<RowResponse<Array<FutureRecordDefinition.WeatherMapOutput>> | null | undefined> {
      let res: RowResponse<Array<FutureRecordDefinition.WeatherMapOutput>> | null | undefined = await post<RowResponse<Array<FutureRecordDefinition.WeatherMapOutput>>>(
        FutureRecordUrlConstant.FUTURE_RECORD_WEATHER_V1_FIND_WEATHER_CITY,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }

    static async futureRecordWeatherV1ProvincepercentPost(userId: number):Promise<ApiResponse<FutureRecordDefinition.UserProvincePercentOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.UserProvincePercentOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.UserProvincePercentOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_WEATHER_V1_PROVINCE_PERCENT,
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

    static async futureRecordWeatherV1WeathercityPost(dto: FutureRecordDefinition.WeatherPositionInput):Promise<ApiResponse<FutureRecordDefinition.WeatherPositionOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.WeatherPositionOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.WeatherPositionOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_WEATHER_V1_WEATHER_CITY,
        {
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }

    static async futureRecordWeatherV1WeatherpositionPost(dto: FutureRecordDefinition.WeatherPositionInput, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        FutureRecordUrlConstant.FUTURE_RECORD_WEATHER_V1_WEATHER_POSITION,
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
  }


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        FutureRecordUrlConstant.CHECKALIVE,
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


  export class HabitTemplateController {
    static async futureRecordHabitV1TemplateAddhabitbysubtemplateidPost(input: FutureRecordDefinition.IdsRequest, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_TEMPLATE_ADD_HABIT_BY_SUB_TEMPLATE_ID,
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

    static async futureRecordHabitV1TemplateListPost():Promise<RowResponse<Array<FutureRecordDefinition.HabitSuperTemplateOutput>> | null | undefined> {
      let res: RowResponse<Array<FutureRecordDefinition.HabitSuperTemplateOutput>> | null | undefined = await post<RowResponse<Array<FutureRecordDefinition.HabitSuperTemplateOutput>>>(
        FutureRecordUrlConstant.FUTURE_RECORD_HABIT_V1_TEMPLATE_LIST,
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


  export class ImportantDayController {
    static async futureRecordImportantdayV1GetimportantdayconfigPost(userId: number):Promise<ApiResponse<FutureRecordDefinition.ImportantDayConfigOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.ImportantDayConfigOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.ImportantDayConfigOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V1_GET_IMPORTANT_DAY_CONFIG,
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

    static async futureRecordImportantdayV1InitimportantdayconfigPost(input: FutureRecordDefinition.InitImportantDayConfigInput, ip: string, userId: number):Promise<ApiResponse<FutureRecordDefinition.ImportantDayConfigOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.ImportantDayConfigOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.ImportantDayConfigOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V1_INIT_IMPORTANT_DAY_CONFIG,
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

    static async futureRecordImportantdayV1SortimportantdayPost(input: FutureRecordDefinition.SortImportantDayInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V1_SORT_IMPORTANT_DAY,
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

    static async futureRecordImportantdayV1SwitchcountdownfilterfinishPost(input: FutureRecordDefinition.ImportantDayCountdownFilterFinishInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V1_SWITCH_COUNTDOWN_FILTER_FINISH,
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

    static async futureRecordImportantdayV1TopAddPost(input: FutureRecordDefinition.ImportantDayTopDto):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V1_TOP_ADD,
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

    static async futureRecordImportantdayV1TopRemovePost(input: FutureRecordDefinition.ImportantDayTopDto, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V1_TOP_REMOVE,
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

    static async futureRecordImportantdayV1UpdateanniversarydisplaymodelPost(input: FutureRecordDefinition.ImportantDayAnniversaryDisplayModelInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V1_UPDATE_ANNIVERSARY_DISPLAY_MODEL,
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

    static async futureRecordImportantdayV1UpdatebirthdaydisplaymodelPost(input: FutureRecordDefinition.ImportantDayBirthdayDisplayModelInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V1_UPDATE_BIRTHDAY_DISPLAY_MODEL,
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

    static async futureRecordImportantdayV1UpdatedisplaytypePost(input: FutureRecordDefinition.ImportantDayDisplayTypeInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V1_UPDATE_DISPLAY_TYPE,
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

    static async futureRecordImportantdayV1UpdatehomedisplaytypePost(input: FutureRecordDefinition.ImportantDayHomeDisplayTypeInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V1_UPDATE_HOME_DISPLAY_TYPE,
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

    static async futureRecordImportantdayV1UpdatesorttypePost(input: FutureRecordDefinition.ImportantDaySortTypeInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V1_UPDATE_SORT_TYPE,
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

    static async futureRecordImportantdayV1UpdateuserbirthdayPost(input: FutureRecordDefinition.ImportantDayUserBirthdayInput, ip: string, userId: number):Promise<ApiResponse<FutureRecordDefinition.ImportantDayUserBirthdayOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.ImportantDayUserBirthdayOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.ImportantDayUserBirthdayOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V1_UPDATE_USER_BIRTHDAY,
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

    static async futureRecordImportantdayV1UpdateuserimgPost(input: FutureRecordDefinition.ImportantDayUserImgInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V1_UPDATE_USER_IMG,
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

    static async futureRecordImportantdayV2InitimportantdayconfigPost(input: FutureRecordDefinition.InitImportantDayConfigInput, ip: string, userId: number):Promise<ApiResponse<FutureRecordDefinition.ImportantDayConfigOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.ImportantDayConfigOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.ImportantDayConfigOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V2_INIT_IMPORTANT_DAY_CONFIG,
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

    static async futureRecordImportantdayV2UpdatehomedisplaytypePost(input: FutureRecordDefinition.ImportantDayHomeDisplayTypeInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V2_UPDATE_HOME_DISPLAY_TYPE,
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

    static async futureRecordImportantdayV3InitimportantdayconfigPost(ip: string, userId: number):Promise<ApiResponse<FutureRecordDefinition.ImportantDayConfigOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.ImportantDayConfigOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.ImportantDayConfigOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V3_INIT_IMPORTANT_DAY_CONFIG,
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

    static async futureRecordImportantdayV4InitimportantdayconfigPost(ip: string, userId: number):Promise<ApiResponse<FutureRecordDefinition.ImportantDayConfigOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.ImportantDayConfigOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.ImportantDayConfigOutput>>(
        FutureRecordUrlConstant.FUTURE_RECORD_IMPORTANT_DAY_V4_INIT_IMPORTANT_DAY_CONFIG,
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

    static async nativeFutureRecordImportantdayV1GetimportantdayconfigandsortPost(userId: number):Promise<ApiResponse<FutureRecordDefinition.ImportantDayConfigAndSortOutput> | null | undefined> {
      let res: ApiResponse<FutureRecordDefinition.ImportantDayConfigAndSortOutput> | null | undefined = await post<ApiResponse<FutureRecordDefinition.ImportantDayConfigAndSortOutput>>(
        FutureRecordUrlConstant.NATIVE_FUTURE_RECORD_IMPORTANT_DAY_V1_GET_IMPORTANT_DAY_CONFIG_AND_SORT,
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

    static async nativeFutureRecordImportantdayV1SaveimportantdaysortPost(input: FutureRecordDefinition.SaveImportantDaySortInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        FutureRecordUrlConstant.NATIVE_FUTURE_RECORD_IMPORTANT_DAY_V1_SAVE_IMPORTANT_DAY_SORT,
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
}
