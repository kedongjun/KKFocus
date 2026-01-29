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
import { BaseClockDefinition } from './../definition/BaseClockDefinition';
import { BaseClockUrlConstant } from './../constant/BaseClockUrlConstant';

export namespace BaseClockOperation {
  export class WorkRestScheduleConfigControllerV4 {
    static async baseClockV4WorkURestUScheduleUConfigAddconfigPost(input: BaseClockDefinition.AddScheduleConfigInput):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleConfigOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleConfigOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleConfigOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULE_CONFIG_ADD_CONFIG_URL,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseClockV4WorkURestUScheduleUConfigAutoskipholidaystatusPost():Promise<ApiResponse<BaseClockDefinition.AutoSkipHolidayStatusOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.AutoSkipHolidayStatusOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.AutoSkipHolidayStatusOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULE_CONFIG_AUTO_SKIP_HOLIDAY_STATUS_URL,
        {},
        {},
        {},
      );

      return res;
    }

    static async baseClockV4WorkURestUScheduleUConfigDeleteconfigPost(input: BaseClockDefinition.DeleteScheduleConfigInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULE_CONFIG_DELETE_CONFIG_URL,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseClockV4WorkURestUScheduleUConfigListPost():Promise<RowResponse<BaseClockDefinition.WorkRestScheduleConfigListOutput> | null | undefined> {
      let res: RowResponse<BaseClockDefinition.WorkRestScheduleConfigListOutput> | null | undefined = await post<RowResponse<BaseClockDefinition.WorkRestScheduleConfigListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULE_CONFIG_LIST_URL,
        {},
        {},
        {},
      );

      return res;
    }

    static async baseClockV4WorkURestUScheduleUConfigUpdateautoskipholidayPost(input: BaseClockDefinition.WorkRestScheduleConfigUpdateAutoSkipHolidayInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULE_CONFIG_UPDATE_AUTO_SKIP_HOLIDAY_URL,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseClockV4WorkURestUScheduleUConfigUpdateconfigPost(input: BaseClockDefinition.UpdateScheduleConfigInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULE_CONFIG_UPDATE_CONFIG_URL,
        {
        },
        {
        },
        {},
        input
      );

      return res;
    }

    static async baseClockV4WorkURestUScheduleUConfigUpdatesortPost(input: BaseClockDefinition.ScheduleSortInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULE_CONFIG_UPDATE_SORT_URL,
        {},
        {},
        {},
        input
      );

      return res;
    }
  }


  export class ClockConfigController {
    static async baseClockCustomsleeprecordstatisticsPost(input: BaseClockDefinition.SleepRecordStatisticsInput):Promise<ApiResponse<BaseClockDefinition.SleepStatisticsOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.SleepStatisticsOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.SleepStatisticsOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_CUSTOM_SLEEP_RECORD_STATISTICS,
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

    static async baseClockSleeprecorddisplayGetPost():Promise<ApiResponse<BaseClockDefinition.SleepRecordDisplayDto> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.SleepRecordDisplayDto> | null | undefined = await post<ApiResponse<BaseClockDefinition.SleepRecordDisplayDto>>(
        BaseClockUrlConstant.BASE_CLOCK_SLEEP_RECORD_DISPLAY_GET,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseClockSleeprecorddisplaySetPost(input: BaseClockDefinition.SleepRecordDisplayDto):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_SLEEP_RECORD_DISPLAY_SET,
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


  export class ClockControllerV2 {
    static async baseClockV2AddorupdateclocknormalPost(input: BaseClockDefinition.ClockNormalInputV2, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.AddOrUpdateClockNormalOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.AddOrUpdateClockNormalOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.AddOrUpdateClockNormalOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V2_ADD_OR_UPDATE_CLOCK_NORMAL,
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

    static async baseClockV2AddUOrUUpdateUBothUClockPost(input: BaseClockDefinition.AddOrUpdateBothClockInputV2, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.AddOrUpdateBothClockOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.AddOrUpdateBothClockOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.AddOrUpdateBothClockOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V2_ADD_OR_UPDATE_BOTH_CLOCK_URL,
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

    static async baseClockV2AddUOrUUpdateUClockUSleepPost(input: BaseClockDefinition.ClockSleepInputV2):Promise<ApiResponse<BaseClockDefinition.AddOrUpdateClockSleepOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.AddOrUpdateClockSleepOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.AddOrUpdateClockSleepOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V2_ADD_OR_UPDATE_CLOCK_SLEEP_URL,
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

    static async baseClockV2AddUOrUUpdateUClockUWakeupPost(input: BaseClockDefinition.ClockWakeupInputV2, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.AddOrUpdateClockWakeupOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.AddOrUpdateClockWakeupOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.AddOrUpdateClockWakeupOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V2_ADD_OR_UPDATE_CLOCK_WAKEUP_URL,
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

    static async baseClockV2ClocknormaldetailPost(input: BaseClockDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseClockDefinition.ClockNormalOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.ClockNormalOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.ClockNormalOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V2_CLOCK_NORMAL_DETAIL,
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

    static async baseClockV2ClockUEchoPost(ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.ClockEchoOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.ClockEchoOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.ClockEchoOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V2_CLOCK_ECHO_URL,
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

    static async baseClockV2DeleteclocknormalPost(input: BaseClockDefinition.IdRequest, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V2_DELETE_CLOCK_NORMAL,
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

    static async baseClockV2ExportdataPost(condition: BaseClockDefinition.ClockTransferCondition, userId: number):Promise<ApiResponse<BaseClockDefinition.ClockImportExportData> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.ClockImportExportData> | null | undefined = await post<ApiResponse<BaseClockDefinition.ClockImportExportData>>(
        BaseClockUrlConstant.BASE_CLOCK_V2_EXPORT_DATA,
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

    static async baseClockV2ImportdataPost(importData: BaseClockDefinition.ClockImportExportData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V2_IMPORT_DATA,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        importData
      );

      return res;
    }

    static async baseClockV2SleepUTodoUViewUListPost(input: BaseClockDefinition.ClockTodoViewInput, userId: number):Promise<ApiResponse<BaseClockDefinition.ClockTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.ClockTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.ClockTodoViewListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V2_SLEEP_TODO_VIEW_LIST_URL,
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

    static async baseClockV2WakeupUTodoUViewUListPost(input: BaseClockDefinition.ClockTodoViewInput, userId: number):Promise<ApiResponse<BaseClockDefinition.ClockTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.ClockTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.ClockTodoViewListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V2_WAKEUP_TODO_VIEW_LIST_URL,
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
        BaseClockUrlConstant.CHECKALIVE,
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


  export class WorkRestScheduleConfigController {
    static async baseClockWorkURestUScheduleUConfigListPost(ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleConfigListDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleConfigListDetailOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleConfigListDetailOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULE_CONFIG_LIST_URL,
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

    static async baseClockWorkURestUScheduleUConfigSyncUDataPost(input: BaseClockDefinition.SyncDataRequest, ip: string, userId: number):Promise<RowResponse<Array<BaseClockDefinition.ClockSyncDataOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseClockDefinition.ClockSyncDataOutput>> | null | undefined = await post<RowResponse<Array<BaseClockDefinition.ClockSyncDataOutput>>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULE_CONFIG_SYNC_DATA_URL,
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

    static async baseClockWorkURestUScheduleUConfigTodayUViewUSwitchPost(userId: number):Promise<ApiResponse<BaseClockDefinition.TodayViewSwitchOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.TodayViewSwitchOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.TodayViewSwitchOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULE_CONFIG_TODAY_VIEW_SWITCH_URL,
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

    static async baseClockWorkURestUScheduleUConfigUpdatePost(input: BaseClockDefinition.WorkRestScheduleConfigUpdateInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULE_CONFIG_UPDATE_URL,
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

    static async baseClockWorkURestUScheduleUConfigUpdateautoskipholidayPost(input: BaseClockDefinition.WorkRestScheduleConfigUpdateAutoSkipHolidayInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULE_CONFIG_UPDATE_AUTO_SKIP_HOLIDAY_URL,
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

    static async baseClockWorkURestUScheduleUConfigUpdateUTitlePost(input: BaseClockDefinition.WorkRestScheduleConfigUpdateTitleInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULE_CONFIG_UPDATE_TITLE_URL,
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

    static async baseClockWorkURestUScheduleUConfigUpdateUTodayUViewUSwitchPost(input: BaseClockDefinition.UpdateTodayViewSwitchInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULE_CONFIG_UPDATE_TODAY_VIEW_SWITCH_URL,
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


  export class ClockController {
    static async baseClockAddUSleepUFinishPost(input: BaseClockDefinition.AddFinishedInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_ADD_SLEEP_FINISH_URL,
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

    static async baseClockAddUWakeupUFinishPost(input: BaseClockDefinition.AddFinishedInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_ADD_WAKEUP_FINISH_URL,
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

    static async baseClockNormallaterremindPost(input: BaseClockDefinition.NormalLaterRemindInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_NORMAL_LATER_REMIND,
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

    static async baseClockSleepSyncUDataPost(input: BaseClockDefinition.SyncDataRequest):Promise<RowResponse<Array<BaseClockDefinition.ClockSyncDataOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseClockDefinition.ClockSyncDataOutput>> | null | undefined = await post<RowResponse<Array<BaseClockDefinition.ClockSyncDataOutput>>>(
        BaseClockUrlConstant.BASE_CLOCK_SLEEP_SYNC_DATA_URL,
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

    static async baseClockSleepUFinishSyncUDataPost(input: BaseClockDefinition.SyncDataRequest, ip: string, userId: number):Promise<RowResponse<Array<BaseClockDefinition.SyncDataAppletFinishResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseClockDefinition.SyncDataAppletFinishResponse>> | null | undefined = await post<RowResponse<Array<BaseClockDefinition.SyncDataAppletFinishResponse>>>(
        BaseClockUrlConstant.BASE_CLOCK_SLEEP_FINISH_SYNC_DATA_URL,
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

    static async baseClockSleepUJobUElementsPost(input: BaseClockDefinition.JobPullInput):Promise<Array<BaseClockDefinition.JobPullOutput> | null | undefined> {
      let res: Array<BaseClockDefinition.JobPullOutput> | null | undefined = await post<Array<BaseClockDefinition.JobPullOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_SLEEP_JOB_ELEMENTS_URL,
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

    static async baseClockSleepULaterURemindPost(input: BaseClockDefinition.LaterRemindInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_SLEEP_LATER_REMIND_URL,
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

    static async baseClockV1GetremindelementsPost(input: BaseClockDefinition.ClockTodoViewInput, userId: number):Promise<ApiResponse<BaseClockDefinition.ClockTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.ClockTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.ClockTodoViewListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V1_GET_REMIND_ELEMENTS,
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

    static async baseClockWakeupSyncUDataPost(input: BaseClockDefinition.SyncDataRequest, ip: string, userId: number):Promise<RowResponse<Array<BaseClockDefinition.ClockSyncDataOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseClockDefinition.ClockSyncDataOutput>> | null | undefined = await post<RowResponse<Array<BaseClockDefinition.ClockSyncDataOutput>>>(
        BaseClockUrlConstant.BASE_CLOCK_WAKEUP_SYNC_DATA_URL,
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

    static async baseClockWakeupUFinishSyncUDataPost(input: BaseClockDefinition.SyncDataRequest, ip: string, userId: number):Promise<RowResponse<Array<BaseClockDefinition.SyncDataAppletFinishResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseClockDefinition.SyncDataAppletFinishResponse>> | null | undefined = await post<RowResponse<Array<BaseClockDefinition.SyncDataAppletFinishResponse>>>(
        BaseClockUrlConstant.BASE_CLOCK_WAKEUP_FINISH_SYNC_DATA_URL,
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

    static async baseClockWakeupUJobUElementsPost(input: BaseClockDefinition.JobPullInput):Promise<Array<BaseClockDefinition.JobPullOutput> | null | undefined> {
      let res: Array<BaseClockDefinition.JobPullOutput> | null | undefined = await post<Array<BaseClockDefinition.JobPullOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_WAKEUP_JOB_ELEMENTS_URL,
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

    static async baseClockWakeupULaterURemindPost(input: BaseClockDefinition.LaterRemindInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_WAKEUP_LATER_REMIND_URL,
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

    static async baseClockWakeupUQuestionPost(input: BaseClockDefinition.WakeupQuestionInput, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WakeupQuestionUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WakeupQuestionUsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseClockDefinition.WakeupQuestionUsingPOSTRsp>>(
        BaseClockUrlConstant.BASE_CLOCK_WAKEUP_QUESTION_URL,
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


  export class WorkRestScheduleControllerV3 {
    static async baseClockV3WorkURestUSchedulesPost(input: BaseClockDefinition.WorkRestScheduleListInputV2, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V3_WORK_REST_SCHEDULES_URL,
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

    static async baseClockV3WorkURestUSchedulesAddfinishPost(input: BaseClockDefinition.ScheduleAddFinishedInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V3_WORK_REST_SCHEDULES_ADD_FINISH_URL,
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

    static async baseClockV3WorkURestUSchedulesDeletePost(input: BaseClockDefinition.WorkRestScheduleDeleteInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V3_WORK_REST_SCHEDULES_DELETE_URL,
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

    static async baseClockV3WorkURestUSchedulesDetailPost(input: BaseClockDefinition.WorkRestScheduleDetailInput, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V3_WORK_REST_SCHEDULES_DETAIL_URL,
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

    static async baseClockV3WorkURestUSchedulesResetPost(input: BaseClockDefinition.ScheduleResetInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V3_WORK_REST_SCHEDULES_RESET_URL,
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

    static async baseClockV3WorkURestUSchedulesSaveUOrUUpdatePost(input: BaseClockDefinition.WorkRestScheduleInputV3, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V3_WORK_REST_SCHEDULES_SAVE_OR_UPDATE_URL,
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

    static async baseClockV3WorkURestUSchedulesSwitchPost(ip: string, scheduleSwitchInput: BaseClockDefinition.ScheduleSwitchInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V3_WORK_REST_SCHEDULES_SWITCH_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        scheduleSwitchInput
      );

      return res;
    }

    static async baseClockV3WorkURestUSchedulesTodoviewlistPost(ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleTodoViewListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V3_WORK_REST_SCHEDULES_TODO_VIEW_LIST_URL,
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

    static async baseClockV3WorkingUDayUAndUWeekendUWorkURestUScheduleUListPost(ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V3_WORKING_DAY_AND_WEEKEND_WORK_REST_SCHEDULE_LIST_URL,
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


  export class WorkRestScheduleController {
    static async baseClockWorkURestUSchedulesPost(input: BaseClockDefinition.WorkRestScheduleListInput, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULES_URL,
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

    static async baseClockWorkURestUSchedulesDeletePost(input: BaseClockDefinition.WorkRestScheduleDeleteInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULES_DELETE_URL,
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

    static async baseClockWorkURestUSchedulesDetailPost(input: BaseClockDefinition.WorkRestScheduleDetailInput, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULES_DETAIL_URL,
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

    static async baseClockWorkURestUSchedulesGetUNextUByUTimePost(input: BaseClockDefinition.WorkRestScheduleTimeInput, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULES_GET_NEXT_BY_TIME_URL,
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

    static async baseClockWorkURestUSchedulesGetURemindUElementsPost(input: BaseClockDefinition.JobPullInput):Promise<Array<BaseClockDefinition.JobPullOutput> | null | undefined> {
      let res: Array<BaseClockDefinition.JobPullOutput> | null | undefined = await post<Array<BaseClockDefinition.JobPullOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULES_GET_REMIND_ELEMENTS_URL,
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

    static async baseClockWorkURestUSchedulesInitPost(ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULES_INIT_URL,
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

    static async baseClockWorkURestUSchedulesSaveUOrUUpdatePost(input: BaseClockDefinition.WorkRestScheduleInputV1, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULES_SAVE_OR_UPDATE_URL,
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

    static async baseClockWorkURestUSchedulesSwitchPost(ip: string, scheduleSwitchInput: BaseClockDefinition.ScheduleSwitchInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULES_SWITCH_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        scheduleSwitchInput
      );

      return res;
    }

    static async baseClockWorkURestUSchedulesSyncfinishdataPost(input: BaseClockDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseClockDefinition.SyncDataAppletFinishResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseClockDefinition.SyncDataAppletFinishResponse>> | null | undefined = await post<RowResponse<Array<BaseClockDefinition.SyncDataAppletFinishResponse>>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULES_SYNC_FINISH_DATA_URL,
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

    static async baseClockWorkURestUSchedulesSyncUDataPost(input: BaseClockDefinition.SyncDataRequest, ip: string, userId: number):Promise<RowResponse<Array<BaseClockDefinition.ClockSyncDataOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseClockDefinition.ClockSyncDataOutput>> | null | undefined = await post<RowResponse<Array<BaseClockDefinition.ClockSyncDataOutput>>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULES_SYNC_DATA_URL,
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

    static async baseClockWorkURestUSchedulesV1GetremindelementsPost(input: BaseClockDefinition.WorkRestScheduleTodoViewInput, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleTodoViewListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_WORK_REST_SCHEDULES_V1_GET_REMIND_ELEMENTS_URL,
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

    static async baseClockWorkingUDayUAndUWeekendUWorkURestUScheduleUListPost(ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_WORKING_DAY_AND_WEEKEND_WORK_REST_SCHEDULE_LIST_URL,
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


  export class WorkRestScheduleControllerV4 {
    static async baseClockV4AllworkrestschedulelistPost(ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_ALL_WORK_REST_SCHEDULE_LIST,
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

    static async baseClockV4AllworkrestschedulelistnotinitPost(userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_ALL_WORK_REST_SCHEDULE_LIST_NOT_INIT,
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

    static async baseClockV4AppletschedulesPost(input: BaseClockDefinition.WorkRestScheduleListInputV4, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleListOutputV4> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleListOutputV4> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleListOutputV4>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_APPLET_SCHEDULES,
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

    static async baseClockV4MyappletworkrestschedulelistPost(input: BaseClockDefinition.WorkRestScheduleListInputV4, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleListOutputV4> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleListOutputV4> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleListOutputV4>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_MY_APPLET_WORK_REST_SCHEDULE_LIST,
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

    static async baseClockV4WorkURestUSchedulesPost(input: BaseClockDefinition.WorkRestScheduleListInputV4):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleListOutputV4> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleListOutputV4> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleListOutputV4>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULES_URL,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseClockV4WorkURestUSchedulesAddfinishPost(input: BaseClockDefinition.ScheduleAddFinishedInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULES_ADD_FINISH_URL,
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

    static async baseClockV4WorkURestUSchedulesDeletePost(input: BaseClockDefinition.WorkRestScheduleDeleteInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULES_DELETE_URL,
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

    static async baseClockV4WorkURestUSchedulesExportdataPost(condition: BaseClockDefinition.WorkRestScheduleTransferConditionV2, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULES_EXPORT_DATA_URL,
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

    static async baseClockV4WorkURestUSchedulesGetappletdataPost(input: BaseClockDefinition.WorkRestScheduleListInputV4, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.GetAppletDataOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.GetAppletDataOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.GetAppletDataOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULES_GET_APPLET_DATA_URL,
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

    static async baseClockV4WorkURestUSchedulesImportdataPost(importExportData: BaseClockDefinition.WorkRestScheduleSimpleListOutput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULES_IMPORT_DATA_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        importExportData
      );

      return res;
    }

    static async baseClockV4WorkURestUSchedulesResetPost(input: BaseClockDefinition.ScheduleResetInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULES_RESET_URL,
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

    static async baseClockV4WorkURestUSchedulesSaveUOrUUpdatePost(input: BaseClockDefinition.WorkRestScheduleInputV4, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULES_SAVE_OR_UPDATE_URL,
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

    static async baseClockV4WorkURestUSchedulesSwitchPost(ip: string, scheduleSwitchInput: BaseClockDefinition.ScheduleSwitchInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULES_SWITCH_URL,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        scheduleSwitchInput
      );

      return res;
    }

    static async baseClockV4WorkURestUSchedulesTemplatelistPost():Promise<ApiResponse<BaseClockDefinition.ScheduleConfigTemplateListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.ScheduleConfigTemplateListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.ScheduleConfigTemplateListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULES_TEMPLATE_LIST_URL,
        {},
        {},
        {},
      );

      return res;
    }

    static async baseClockV4WorkURestUSchedulesTodoviewlistPost(ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleTodoViewListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULES_TODO_VIEW_LIST_URL,
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

    static async baseClockV4WorkURestUSchedulesTodoviewnoschedulelistPost(ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleTodoViewListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULES_TODO_VIEW_NO_SCHEDULE_LIST_URL,
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

    static async baseClockV4WorkURestUSchedulesWorkingdaydefaultschedulePost():Promise<RowResponse<Array<BaseClockDefinition.WorkRestScheduleDefaultV2Output>> | null | undefined> {
      let res: RowResponse<Array<BaseClockDefinition.WorkRestScheduleDefaultV2Output>> | null | undefined = await post<RowResponse<Array<BaseClockDefinition.WorkRestScheduleDefaultV2Output>>>(
        BaseClockUrlConstant.BASE_CLOCK_V4_WORK_REST_SCHEDULES_WORKING_DAY_DEFAULT_SCHEDULE_URL,
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


  export class WorkRestScheduleControllerV2 {
    static async baseClockV2WorkURestUSchedulesPost(input: BaseClockDefinition.WorkRestScheduleListInputV2, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V2_WORK_REST_SCHEDULES_URL,
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

    static async baseClockV2WorkURestUSchedulesDeletePost(input: BaseClockDefinition.WorkRestScheduleDeleteInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V2_WORK_REST_SCHEDULES_DELETE_URL,
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

    static async baseClockV2WorkURestUSchedulesDetailPost(input: BaseClockDefinition.WorkRestScheduleDetailInput, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V2_WORK_REST_SCHEDULES_DETAIL_URL,
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

    static async baseClockV2WorkURestUSchedulesSaveUOrUUpdatePost(input: BaseClockDefinition.WorkRestScheduleInputV2, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V2_WORK_REST_SCHEDULES_SAVE_OR_UPDATE_URL,
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

    static async baseClockV2WorkingUDayUAndUWeekendUWorkURestUScheduleUListPost(ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.WorkRestScheduleSimpleListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V2_WORKING_DAY_AND_WEEKEND_WORK_REST_SCHEDULE_LIST_URL,
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


  export class SleepRecordController {
    static async baseClockBatchdeleterecordPost(input: BaseClockDefinition.IdsRequest):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_BATCH_DELETE_RECORD,
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

    static async baseClockSaveUSleepURecordPost(input: BaseClockDefinition.SaveSleepRecordInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_SAVE_SLEEP_RECORD_URL,
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

    static async baseClockSleepURecordUStatisticsPost(input: BaseClockDefinition.SleepRecordStatisticsInput, userId: number):Promise<ApiResponse<BaseClockDefinition.SleepStatisticsOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.SleepStatisticsOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.SleepStatisticsOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_SLEEP_RECORD_STATISTICS_URL,
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

    static async baseClockUpdatesleeprecordPost(input: BaseClockDefinition.UpdateSleepRecordInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_UPDATE_SLEEP_RECORD,
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

    static async baseClockV1DaterangecountPost(input: BaseClockDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseClockDefinition.SleepRecordCountOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.SleepRecordCountOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.SleepRecordCountOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V1_DATE_RANGE_COUNT,
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

    static async baseClockV1HistorydatacountPost(userId: number):Promise<ApiResponse<Map<string, number>> | null | undefined> {
      let res: ApiResponse<Map<string, number>> | null | undefined = await post<ApiResponse<Map<string, number>>>(
        BaseClockUrlConstant.BASE_CLOCK_V1_HISTORY_DATA_COUNT,
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

    static async baseClockV1SavesleeprecordbymanualPost(input: BaseClockDefinition.SaveSleepRecordInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseClockUrlConstant.BASE_CLOCK_V1_SAVE_SLEEP_RECORD_BY_MANUAL,
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

    static async baseClockV1SumgoodsleepPost(input: BaseClockDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseClockDefinition.SleepSumRecordOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.SleepSumRecordOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.SleepSumRecordOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_V1_SUM_GOOD_SLEEP,
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

    static async baseClockYesterdaygoodsleepPost(input: BaseClockDefinition.YesterdayGoodSleepInput, userId: number):Promise<ApiResponse<BaseClockDefinition.YesterdayGoodSleepOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.YesterdayGoodSleepOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.YesterdayGoodSleepOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_YESTERDAY_GOOD_SLEEP,
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


  export class ClockControllerV1 {
    static async baseClockAddUOrUUpdateUBothUClockPost(input: BaseClockDefinition.AddOrUpdateBothClockInput, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.AddOrUpdateBothClockOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.AddOrUpdateBothClockOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.AddOrUpdateBothClockOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_ADD_OR_UPDATE_BOTH_CLOCK_URL,
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

    static async baseClockAddUOrUUpdateUClockUSleepPost(input: BaseClockDefinition.ClockSleepInput, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.AddOrUpdateClockSleepOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.AddOrUpdateClockSleepOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.AddOrUpdateClockSleepOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_ADD_OR_UPDATE_CLOCK_SLEEP_URL,
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

    static async baseClockAddUOrUUpdateUClockUWakeupPost(input: BaseClockDefinition.ClockWakeupInput, ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.AddOrUpdateClockWakeupOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.AddOrUpdateClockWakeupOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.AddOrUpdateClockWakeupOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_ADD_OR_UPDATE_CLOCK_WAKEUP_URL,
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

    static async baseClockClockUEchoPost(ip: string, userId: number):Promise<ApiResponse<BaseClockDefinition.ClockEchoOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.ClockEchoOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.ClockEchoOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_CLOCK_ECHO_URL,
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

    static async baseClockSleepUTodoUViewUListPost(input: BaseClockDefinition.ClockTodoViewInput, userId: number):Promise<ApiResponse<BaseClockDefinition.ClockTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.ClockTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.ClockTodoViewListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_SLEEP_TODO_VIEW_LIST_URL,
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

    static async baseClockWakeupUTodoUViewUListPost(input: BaseClockDefinition.ClockTodoViewInput, userId: number):Promise<ApiResponse<BaseClockDefinition.ClockTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseClockDefinition.ClockTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseClockDefinition.ClockTodoViewListOutput>>(
        BaseClockUrlConstant.BASE_CLOCK_WAKEUP_TODO_VIEW_LIST_URL,
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
