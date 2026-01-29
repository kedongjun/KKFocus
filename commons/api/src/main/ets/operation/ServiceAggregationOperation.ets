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
import { ServiceAggregationDefinition } from './../definition/ServiceAggregationDefinition';
import { ServiceAggregationUrlConstant } from './../constant/ServiceAggregationUrlConstant';

export namespace ServiceAggregationOperation {
  export class UserPopupWindowInfoController {
    static async serviceAggregationUserGetpopupwindowPost(ip: string, userPopupWindowInfoInput: ServiceAggregationDefinition.UserPopupWindowInfoInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.UserPopupWindowInfoOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.UserPopupWindowInfoOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.UserPopupWindowInfoOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_USER_GETPOPUPWINDOW,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        userPopupWindowInfoInput
      );

      return res;
    }
  }


  export class SyncController {
    static async serviceAggregationV1SyncPost(channelType: string, input: ServiceAggregationDefinition.SyncAggregationInput, ip: string, userId: number):Promise<RowResponse<Array<ServiceAggregationDefinition.AggregationAppDailyUsingPOST_1Rsp>> | null | undefined> {
      let res: RowResponse<Array<ServiceAggregationDefinition.AggregationAppDailyUsingPOST_1Rsp>> | null | undefined = await post<RowResponse<Array<ServiceAggregationDefinition.AggregationAppDailyUsingPOST_1Rsp>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_V1_SYNC,
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


  export class TodoClassifyController {
    static async serviceAggregationTodoClassifyAddPost(ip: string, request: ServiceAggregationDefinition.PlanClassifyAddInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_TODO_CLASSIFY_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async serviceAggregationTodoClassifyEditPost(request: ServiceAggregationDefinition.PlanClassifyEditInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_TODO_CLASSIFY_EDIT,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        request
      );

      return res;
    }

    static async serviceAggregationTodoClassifyListPost(channelType: string, ip: string, userId: number, dto?: ServiceAggregationDefinition.TodoClassifyInput):Promise<ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_TODO_CLASSIFY_LIST,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId,
        },
        dto
      );

      return res;
    }

    static async serviceAggregationTodoClassifyListallPost(channelType: string, ip: string, userId: number, dto?: ServiceAggregationDefinition.TodoClassifyInput):Promise<ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_TODO_CLASSIFY_LIST_ALL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId,
        },
        dto
      );

      return res;
    }

    static async serviceAggregationTodoClassifyV3ConfigPost(dto?: ServiceAggregationDefinition.TodoClassifyV3Input):Promise<ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_TODO_CLASSIFY_V3_CONFIG,
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

    static async serviceAggregationTodoClassifyV3ListPost(dto?: ServiceAggregationDefinition.TodoClassifyV3Input):Promise<ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_TODO_CLASSIFY_V3_LIST,
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

    static async serviceAggregationTodoClassifyV3ListallPost(channelType: string, ip: string, userId: number, dto?: ServiceAggregationDefinition.TodoClassifyV3Input):Promise<ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_TODO_CLASSIFY_V3_LIST_ALL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId,
        },
        dto
      );

      return res;
    }

    static async serviceAggregationTodoListclassifybyfolderPost(channelType: string, input: ServiceAggregationDefinition.ListClassifyByFolderIdInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_TODO_LIST_CLASSIFY_BY_FOLDER,
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

    static async serviceAggregationTodoListclassifywithfolderPost(input: ServiceAggregationDefinition.ListClassifyWithFolderInput):Promise<ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoClassifyListOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_TODO_LIST_CLASSIFY_WITH_FOLDER,
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


  export class DressOperationController {
    static async serviceAggregationV1DressAdduserdressPost(input: ServiceAggregationDefinition.DressAddInput):Promise<ApiResponse<ServiceAggregationDefinition.DressAddInput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.DressAddInput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.DressAddInput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_V1_DRESS_ADD_USER_DRESS,
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

    static async serviceAggregationV1DressGetcityweatherinfoPost(input: ServiceAggregationDefinition.WeatherQueryInput):Promise<ApiResponse<ServiceAggregationDefinition.WeatherOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.WeatherOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.WeatherOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_V1_DRESS_GET_CITY_WEATHER_INFO,
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

    static async serviceAggregationV1DressUseruserdressPost(input: ServiceAggregationDefinition.DressUseInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.DressAddInput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.DressAddInput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.DressAddInput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_V1_DRESS_USER_USER_DRESS,
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

    static async serviceAggregationV1GetuserdressrecommendPost(input: ServiceAggregationDefinition.DressRecommendInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.DressOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.DressOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.DressOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_V1_GET_USER_DRESS_RECOMMEND,
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

    static async serviceAggregationV2GetuserdressrecommendPost(input: ServiceAggregationDefinition.DressRecommendInput):Promise<ApiResponse<ServiceAggregationDefinition.DressOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.DressOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.DressOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_V2_GET_USER_DRESS_RECOMMEND,
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


  export class TodoViewControllerV1 {
    static async serviceAggregationScheduleDailyviewPost(channelType: string, dailyViewInput: ServiceAggregationDefinition.ViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_DAILYVIEW,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        dailyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleMonthlyviewPost(channelType: string, ip: string, monthlyViewInput: ServiceAggregationDefinition.ViewInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_MONTHLYVIEW,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        monthlyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleOffsetUDailyUViewPost(channelType: string, input: ServiceAggregationDefinition.OffsetViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_OFFSET_DAILY_VIEW_URL,
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

    static async serviceAggregationScheduleWeeklyviewPost(channelType: string, ip: string, userId: number, weeklyViewInput: ServiceAggregationDefinition.ViewInput):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_WEEKLYVIEW,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId,
        },
        weeklyViewInput
      );

      return res;
    }
  }


  export class TodoViewControllerV2 {
    static async serviceAggregationScheduleV2DailyviewPost(channelType: string, dailyViewInput: ServiceAggregationDefinition.ViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V2_DAILYVIEW,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        dailyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleV2MonthlyviewPost(channelType: string, ip: string, monthlyViewInput: ServiceAggregationDefinition.ViewInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V2_MONTHLYVIEW,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        monthlyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleV2OffsetUDailyUViewPost(channelType: string, input: ServiceAggregationDefinition.OffsetViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V2_OFFSET_DAILY_VIEW_URL,
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

    static async serviceAggregationScheduleV2WeeklyviewPost(channelType: string, ip: string, userId: number, weeklyViewInput: ServiceAggregationDefinition.ViewInput):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V2_WEEKLYVIEW,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId,
        },
        weeklyViewInput
      );

      return res;
    }
  }


  export class UserTaskController {
    static async serviceAggregationV1TaskFinishPost(channelType: string, deviceType: string, input: ServiceAggregationDefinition.TaskAddFinishInput, ip: string, userId: number, version: string):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_V1_TASK_FINISH,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId,
            "version": version
        },
        input
      );

      return res;
    }

    static async serviceAggregationV1TaskGroupFinishPost(channelType: string, deviceType: string, input: ServiceAggregationDefinition.TaskAddFinishInput, ip: string, userId: number, version: string):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_V1_TASK_GROUP_FINISH,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "device_type": deviceType,
            "ip": ip,
            "user_id": userId,
            "version": version
        },
        input
      );

      return res;
    }

    static async serviceAggregationV1TaskListPost():Promise<ApiResponse<ServiceAggregationDefinition.UserTaskListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.UserTaskListOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.UserTaskListOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_V1_TASK_LIST,
        {
        },
        {
        },
        {
            // "channel_type": channelType,
            // "device_type": deviceType,
            // "ip": ip,
            // "user_id": userId,
            // "version": version
        },
      );

      return res;
    }
  }


  export class ViewController {
    static async serviceAggregationChecklistChecklistviewPost(channelType: string, input: ServiceAggregationDefinition.ChecklistViewInput, ip: string, userId: number):Promise<ChecklistViewResponse<Array<ServiceAggregationDefinition.ChecklistViewInfoOutput>> | null | undefined> {
      let res: ChecklistViewResponse<Array<ServiceAggregationDefinition.ChecklistViewInfoOutput>> | null | undefined = await post<ChecklistViewResponse<Array<ServiceAggregationDefinition.ChecklistViewInfoOutput>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_CHECKLIST_CHECKLISTVIEW,
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

    static async serviceAggregationRemindGendataPost(channelType: string, userId: number, viewInput: ServiceAggregationDefinition.ViewInput):Promise<ApiResponse<ServiceAggregationDefinition.PlanViewOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.PlanViewOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.PlanViewOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_REMIND_GENDATA,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId,
        },
        viewInput
      );

      return res;
    }

    static async serviceAggregationScheduleRecordtodoPost(channelType: string, input: ServiceAggregationDefinition.OffsetViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_RECORD_TODO,
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

    static async serviceAggregationViewReciprocalPost(channelType: string, input: ServiceAggregationDefinition.ReciprocalViewInput, userId: number):Promise<RowResponse<Array<ServiceAggregationDefinition.TodoAllDayViewInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAggregationDefinition.TodoAllDayViewInfoOutput>> | null | undefined = await post<RowResponse<Array<ServiceAggregationDefinition.TodoAllDayViewInfoOutput>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_VIEW_RECIPROCAL,
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

    static async serviceAggregationViewRecordviewloadPost(channelType: string, ip: string, recordViewInput: ServiceAggregationDefinition.RecordViewInput, userId: number):Promise<RowResponse<Array<ServiceAggregationDefinition.RecordViewInfoLoadOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAggregationDefinition.RecordViewInfoLoadOutput>> | null | undefined = await post<RowResponse<Array<ServiceAggregationDefinition.RecordViewInfoLoadOutput>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_VIEW_RECORDVIEWLOAD,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        recordViewInput
      );

      return res;
    }

    static async serviceAggregationViewTodoclassifyinfoPost(channelType: string, ip: string, userId: number):Promise<RowResponse<Array<Map<string, object>>> | null | undefined> {
      let res: RowResponse<Array<Map<string, object>>> | null | undefined = await post<RowResponse<Array<Map<string, object>>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_VIEW_TODOCLASSIFYINFO,
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

    static async serviceAggregationViewV2ReciprocalPost(channelType: string, input: ServiceAggregationDefinition.ReciprocalViewInput, userId: number):Promise<RowResponse<Array<ServiceAggregationDefinition.TodoAllDayViewInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAggregationDefinition.TodoAllDayViewInfoOutput>> | null | undefined = await post<RowResponse<Array<ServiceAggregationDefinition.TodoAllDayViewInfoOutput>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_VIEW_V2_RECIPROCAL,
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

    static async serviceAggregationViewV3ReciprocalPost(channelType: string, input: ServiceAggregationDefinition.ReciprocalViewInput, userId: number):Promise<RowResponse<Array<ServiceAggregationDefinition.TodoAllDayViewInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAggregationDefinition.TodoAllDayViewInfoOutput>> | null | undefined = await post<RowResponse<Array<ServiceAggregationDefinition.TodoAllDayViewInfoOutput>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_VIEW_V3_RECIPROCAL,
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

    static async serviceAggregationViewV4ReciprocalPost(channelType: string, input: ServiceAggregationDefinition.ReciprocalViewInput, userId: number):Promise<RowResponse<Array<ServiceAggregationDefinition.TodoAllDayViewInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAggregationDefinition.TodoAllDayViewInfoOutput>> | null | undefined = await post<RowResponse<Array<ServiceAggregationDefinition.TodoAllDayViewInfoOutput>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_VIEW_V4_RECIPROCAL,
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
  }


  export class TodoScheduleController {
    static async serviceAggregationRemindTimeDeletePost(input: ServiceAggregationDefinition.TodoCustomizeTimeDeleteInput):Promise<ApiResponse<ServiceAggregationDefinition.DeleteTodoCustomizeTimeOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.DeleteTodoCustomizeTimeOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.DeleteTodoCustomizeTimeOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_REMIND_TIME_DELETE,
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

    static async serviceAggregationRemindTimeListPost(ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoCustomizeTimeListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoCustomizeTimeListOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoCustomizeTimeListOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_REMIND_TIME_LIST,
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

    static async serviceAggregationRemindTimeV1U4ListPost():Promise<ApiResponse<ServiceAggregationDefinition.TodoCustomizeTimeListOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoCustomizeTimeListOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoCustomizeTimeListOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_REMIND_TIME_V1_4_LIST_URL,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async serviceAggregationScheduleBatchmodtime2schedulePost(channelType: string, input: ServiceAggregationDefinition.BatchModTime2ScheduleInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_BATCH_MOD_TIME2SCHEDULE,
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

    static async serviceAggregationScheduleTochecklistPost(channelType: string, ip: string, scheduleEditInput: ServiceAggregationDefinition.ScheduleEditInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.ScheduleToChecklistOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.ScheduleToChecklistOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.ScheduleToChecklistOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_TOCHECKLIST,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        scheduleEditInput
      );

      return res;
    }
  }


  export class ChecklistToScheduleController {
    static async serviceAggregationChecklistChecklistMToMRepeatPost(channelType: string, checklistToRepeatInput: ServiceAggregationDefinition.ChecklistToRepeatInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.ChecklistToRepeatOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.ChecklistToRepeatOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.ChecklistToRepeatOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_CHECKLIST_CHECKLIST_TO_REPEAT_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        checklistToRepeatInput
      );

      return res;
    }

    static async serviceAggregationChecklistChecklistMToMSchedulePost(channelType: string, checklistToScheduleInput: ServiceAggregationDefinition.ChecklistToScheduleInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.ChecklistToScheduleOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.ChecklistToScheduleOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.ChecklistToScheduleOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_CHECKLIST_CHECKLIST_TO_SCHEDULE_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        checklistToScheduleInput
      );

      return res;
    }
  }


  export class SummaryQueryController {
    static async serviceAggregationSummarySelectMByMDayPost(input: ServiceAggregationDefinition.SummarySelectByDayInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.SummarySelectByDayOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.SummarySelectByDayOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.SummarySelectByDayOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SUMMARY_SELECT_BY_DAY_URL,
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

    static async serviceAggregationSummarySelectMByMFolderMMemoPost(input: ServiceAggregationDefinition.SummarySelectByFolderInput, ip: string, userId: number):Promise<ApiResponse<SummaryPage<object>> | null | undefined> {
      let res: ApiResponse<SummaryPage<object>> | null | undefined = await post<ApiResponse<SummaryPage<object>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SUMMARY_SELECT_BY_FOLDER_MEMO_URL,
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

    static async serviceAggregationSummarySelectMByMKeyMWordPost(input: ServiceAggregationDefinition.SummarySelectByKeyWordInput, userId: number):Promise<ApiResponse<SummaryPage<object>> | null | undefined> {
      let res: ApiResponse<SummaryPage<object>> | null | undefined = await post<ApiResponse<SummaryPage<object>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SUMMARY_SELECT_BY_KEY_WORD_URL,
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

    static async serviceAggregationSummarySelectMByMKeyMWordMMemoPost(input: ServiceAggregationDefinition.SummarySelectByKeyWordInput, userId: number):Promise<ApiResponse<SummaryPage<object>> | null | undefined> {
      let res: ApiResponse<SummaryPage<object>> | null | undefined = await post<ApiResponse<SummaryPage<object>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SUMMARY_SELECT_BY_KEY_WORD_MEMO_URL,
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

    static async serviceAggregationSummarySelectMByMPagePost(input: ServiceAggregationDefinition.SummarySelectByPageInput, userId: number):Promise<ApiResponse<SummaryPage<object>> | null | undefined> {
      let res: ApiResponse<SummaryPage<object>> | null | undefined = await post<ApiResponse<SummaryPage<object>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SUMMARY_SELECT_BY_PAGE_URL,
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

    static async serviceAggregationSummarySelectMByMPageMMemoPost(input: ServiceAggregationDefinition.SummarySelectByPageInput, ip: string, userId: number):Promise<ApiResponse<SummaryPage<object>> | null | undefined> {
      let res: ApiResponse<SummaryPage<object>> | null | undefined = await post<ApiResponse<SummaryPage<object>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SUMMARY_SELECT_BY_PAGE_MEMO_URL,
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

    static async serviceAggregationSummarySelectMByMTagPost(input: ServiceAggregationDefinition.SummarySelectByTagInput, userId: number):Promise<ApiResponse<SummaryPage<object>> | null | undefined> {
      let res: ApiResponse<SummaryPage<object>> | null | undefined = await post<ApiResponse<SummaryPage<object>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SUMMARY_SELECT_BY_TAG_URL,
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

    static async serviceAggregationSummarySelectMDetailPost(input: ServiceAggregationDefinition.SummaryDetailInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.SummaryDetailOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.SummaryDetailOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.SummaryDetailOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SUMMARY_SELECT_DETAIL_URL,
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

    static async serviceAggregationSummaryUpdateMStatusMMemoPost(input: ServiceAggregationDefinition.SummaryUpdateStatusInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.SummaryUpdateStatusOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.SummaryUpdateStatusOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.SummaryUpdateStatusOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SUMMARY_UPDATE_STATUS_MEMO_URL,
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

    static async serviceAggregationSummaryV1SelectMByMKeyMWordMMemoPost(input: ServiceAggregationDefinition.SummaryManageInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.AggregationSelectByKeyWordMemoUsingPOST_1Rsp> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.AggregationSelectByKeyWordMemoUsingPOST_1Rsp> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.AggregationSelectByKeyWordMemoUsingPOST_1Rsp>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SUMMARY_V1_SELECT_BY_KEY_WORD_MEMO_URL,
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


  export class DataExportApplyController {
    static async serviceAggregationExportApplyPost(channelType: string, input: ServiceAggregationDefinition.TodoDataExportInput, ip?: string, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_EXPORT_APPLY,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            // "ip": ip,
            // "user_id": userId
        },
        input
      );

      return res;
    }
  }


  export class UserEmptyController {
    static async serviceAggregationV1EmptyValidatePost(channelType: string, input: ServiceAggregationDefinition.UserEmptyValidInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_V1_EMPTY_VALIDATE,
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

    static async serviceAggregationV1UserEmptyPost(channelType: string, input: ServiceAggregationDefinition.UserEmptyInput, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_V1_USER_EMPTY,
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

    static async serviceAggregationV1UserEmptywithoutvipPost(channelType: string, input: ServiceAggregationDefinition.UserEmptyInput, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_V1_USER_EMPTY_WITHOUT_VIP,
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


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        ServiceAggregationUrlConstant.CHECKALIVE,
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


  export class TodoViewControllerV7 {
    static async serviceAggregationScheduleV7DailyUViewPost(channelType: string, dailyViewInput: ServiceAggregationDefinition.ViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V7_DAILY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        dailyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleV7MonthlyUViewPost(channelType: string, ip: string, monthlyViewInput: ServiceAggregationDefinition.ViewInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V7_MONTHLY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        monthlyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleV7OffsetUDailyUViewPost(channelType: string, input: ServiceAggregationDefinition.OffsetViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V7_OFFSET_DAILY_VIEW_URL,
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

    static async serviceAggregationScheduleV7WeeklyUViewPost(channelType: string, ip: string, userId: number, weeklyViewInput: ServiceAggregationDefinition.ViewInput):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V7_WEEKLY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId,
        },
        weeklyViewInput
      );

      return res;
    }
  }


  export class TodoViewControllerV8 {
    static async serviceAggregationScheduleV8DailyURangeUViewPost(channelType: string, dailyViewInput: ServiceAggregationDefinition.RangeViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V8_DAILY_RANGE_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        dailyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleV8DailyUViewPost(channelType: string, dailyViewInput: ServiceAggregationDefinition.ViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V8_DAILY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        dailyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleV8MonthlyURangeUViewPost(channelType: string, input: ServiceAggregationDefinition.RangeViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V8_MONTHLY_RANGE_VIEW_URL,
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

    static async serviceAggregationScheduleV8MonthlyUViewPost(channelType: string, ip: string, monthlyViewInput: ServiceAggregationDefinition.ViewInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V8_MONTHLY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        monthlyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleV8OffsetUDailyUViewPost(channelType: string, input: ServiceAggregationDefinition.OffsetViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V8_OFFSET_DAILY_VIEW_URL,
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

    static async serviceAggregationScheduleV8WeeklyUViewPost(channelType: string, ip: string, userId: number, weeklyViewInput: ServiceAggregationDefinition.ViewInput):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V8_WEEKLY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId,
        },
        weeklyViewInput
      );

      return res;
    }
  }


  export class TodoViewControllerV6 {
    static async serviceAggregationScheduleV6DailyUViewPost(channelType: string, dailyViewInput: ServiceAggregationDefinition.ViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V6_DAILY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        dailyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleV6MonthlyUViewPost(channelType: string, ip: string, monthlyViewInput: ServiceAggregationDefinition.ViewInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V6_MONTHLY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        monthlyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleV6OffsetUDailyUViewPost(channelType: string, input: ServiceAggregationDefinition.OffsetViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V6_OFFSET_DAILY_VIEW_URL,
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

    static async serviceAggregationScheduleV6WeeklyUViewPost(channelType: string, ip: string, userId: number, weeklyViewInput: ServiceAggregationDefinition.ViewInput):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V6_WEEKLY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId,
        },
        weeklyViewInput
      );

      return res;
    }
  }


  export class TodoViewControllerV4 {
    static async serviceAggregationScheduleV4DailyUViewPost(channelType: string, dailyViewInput: ServiceAggregationDefinition.ViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V4_DAILY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        dailyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleV4MonthlyUViewPost(channelType: string, ip: string, monthlyViewInput: ServiceAggregationDefinition.ViewInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V4_MONTHLY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        monthlyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleV4OffsetUDailyUViewPost(channelType: string, input: ServiceAggregationDefinition.OffsetViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V4_OFFSET_DAILY_VIEW_URL,
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

    static async serviceAggregationScheduleV4WeeklyUViewPost(channelType: string, ip: string, userId: number, weeklyViewInput: ServiceAggregationDefinition.ViewInput):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V4_WEEKLY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId,
        },
        weeklyViewInput
      );

      return res;
    }
  }


  export class TodoViewControllerV3 {
    static async serviceAggregationScheduleV3DailyUViewPost(channelType: string, dailyViewInput: ServiceAggregationDefinition.ViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V3_DAILY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        dailyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleV3MonthlyUViewPost(channelType: string, ip: string, monthlyViewInput: ServiceAggregationDefinition.ViewInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V3_MONTHLY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        monthlyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleV3OffsetUDailyUViewPost(channelType: string, input: ServiceAggregationDefinition.OffsetViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V3_OFFSET_DAILY_VIEW_URL,
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

    static async serviceAggregationScheduleV3WeeklyUViewPost(channelType: string, ip: string, userId: number, weeklyViewInput: ServiceAggregationDefinition.ViewInput):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V3_WEEKLY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId,
        },
        weeklyViewInput
      );

      return res;
    }
  }


  export class TodoViewControllerV5 {
    static async serviceAggregationScheduleV5DailyUViewPost(channelType: string, dailyViewInput: ServiceAggregationDefinition.ViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V5_DAILY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        dailyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleV5MonthlyUViewPost(channelType: string, ip: string, monthlyViewInput: ServiceAggregationDefinition.ViewInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V5_MONTHLY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        monthlyViewInput
      );

      return res;
    }

    static async serviceAggregationScheduleV5OffsetUDailyUViewPost(channelType: string, input: ServiceAggregationDefinition.OffsetViewInput, ip: string, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V5_OFFSET_DAILY_VIEW_URL,
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

    static async serviceAggregationScheduleV5WeeklyUViewPost(channelType: string, ip: string, userId: number, weeklyViewInput: ServiceAggregationDefinition.ViewInput):Promise<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.TodoViewDataOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SCHEDULE_V5_WEEKLY_VIEW_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId,
        },
        weeklyViewInput
      );

      return res;
    }
  }


  export class DailyController {
    static async serviceAggregationAppdailylistPost(dto: ServiceAggregationDefinition.DailyTypesInput):Promise<ApiResponse<ServiceAggregationDefinition.AggregationAppDailyListUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.AggregationAppDailyListUsingPOSTRsp> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.AggregationAppDailyListUsingPOSTRsp>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_APP_DAILY_LIST,
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

    static async serviceAggregationDailyPost(channelType: string, dto: ServiceAggregationDefinition.DailyInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.AggregationAailyUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.AggregationAailyUsingPOSTRsp> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.AggregationAailyUsingPOSTRsp>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_DAILY,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async serviceAggregationDailyM21Post(channelType: string, dto: ServiceAggregationDefinition.DailyInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.AggregationAailyUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.AggregationAailyUsingPOSTRsp> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.AggregationAailyUsingPOSTRsp>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_DAILY_21_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId
        },
        dto
      );

      return res;
    }

    static async serviceAggregationGetMDailyPost(dto: ServiceAggregationDefinition.DailyTypesInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.AggregationAppDailyListUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.AggregationAppDailyListUsingPOSTRsp> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.AggregationAppDailyListUsingPOSTRsp>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_GET_DAILY_URL,
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

    static async serviceAggregationWxMDailyPost(channelType: string, dto: ServiceAggregationDefinition.WeChatDailyInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.AggregationAailyUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.AggregationAailyUsingPOSTRsp> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.AggregationAailyUsingPOSTRsp>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_WX_DAILY_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "user_id": userId
        },
        dto
      );

      return res;
    }
  }


  export class UserCustomController {
    static async serviceAggregationCustomListPost(input: ServiceAggregationDefinition.CustomListInput, userId: number):Promise<ApiResponse<Map<string, string>> | null | undefined> {
      let res: ApiResponse<Map<string, string>> | null | undefined = await post<ApiResponse<Map<string, string>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_CUSTOM_LIST,
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

    static async serviceAggregationCustomV1U4ListPost(input: ServiceAggregationDefinition.CustomListInput):Promise<ApiResponse<Map<string, string>> | null | undefined> {
      let res: ApiResponse<Map<string, string>> | null | undefined = await post<ApiResponse<Map<string, string>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_CUSTOM_V1_4_LIST_URL,
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


  export class AppDailyController {
    static async serviceAggregationAppdailyPost(dto: ServiceAggregationDefinition.AppDailyInput):Promise<ApiResponse<ServiceAggregationDefinition.AggregationAppDailyUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.AggregationAppDailyUsingPOSTRsp> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.AggregationAppDailyUsingPOSTRsp>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_APP_DAILY,
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

    static async serviceAggregationAppdailysharePost(dto: ServiceAggregationDefinition.AppDailyInput):Promise<ApiResponse<ServiceAggregationDefinition.AggregationAppDailyUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.AggregationAppDailyUsingPOSTRsp> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.AggregationAppDailyUsingPOSTRsp>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_APP_DAILY_SHARE,
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

    static async serviceAggregationEverydaymottoPost():Promise<ApiResponse<ServiceAggregationDefinition.EveryDayMottoTemplateOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.EveryDayMottoTemplateOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.EveryDayMottoTemplateOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_EVERY_DAY_MOTTO,
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


  export class OssUploadController {
    static async serviceAggregationOssCommonuploadPost(channelType: string, ip: string, userId: number, annexType?: string, requestheadersEtag?: string, requestheadersAcceptcharset0Registered?: boolean, requestheadersAcceptlanguageaslocales0Iso3country?: string, requestheadersAcceptlanguageaslocales0Iso3language?: string, requestheadersAcceptlanguageaslocales0Country?: string, requestheadersAcceptlanguageaslocales0Displaycountry?: string, requestheadersAcceptlanguageaslocales0Displaylanguage?: string, requestheadersAcceptlanguageaslocales0Displayname?: string, requestheadersAcceptlanguageaslocales0Displayscript?: string, requestheadersAcceptlanguageaslocales0Displayvariant?: string, requestheadersAcceptlanguageaslocales0Language?: string, requestheadersAcceptlanguageaslocales0Script?: string, requestheadersAcceptlanguageaslocales0Unicodelocaleattributes?: Array<string>, requestheadersAcceptlanguageaslocales0Unicodelocalekeys?: Array<string>, requestheadersAcceptlanguageaslocales0Variant?: string, requestheadersAcceptlanguage0Range?: string, requestheadersAcceptlanguage0Weight?: number, requestheadersAccept0CharsetRegistered?: boolean, requestheadersAccept0Concrete?: boolean, requestheadersAccept0Qualityvalue?: number, requestheadersAccept0Subtype?: string, requestheadersAccept0Type?: string, requestheadersAccept0Wildcardsubtype?: boolean, requestheadersAccept0Wildcardtype?: boolean, requestheadersAccesscontrolallowcredentials?: boolean, requestheadersAccesscontrolallowheaders?: Array<string>, requestheadersAccesscontrolallowmethods?: Array<string>, requestheadersAccesscontrolalloworigin?: string, requestheadersAccesscontrolexposeheaders?: Array<string>, requestheadersAccesscontrolmaxage?: number, requestheadersAccesscontrolrequestheaders?: Array<string>, requestheadersAccesscontrolrequestmethod?: string, requestheadersAllow?: Array<string>, requestheadersCachecontrol?: string, requestheadersConnection?: Array<string>, requestheadersContentdispositionCharsetRegistered?: boolean, requestheadersContentdispositionCreationdate?: string, requestheadersContentdispositionFilename?: string, requestheadersContentdispositionModificationdate?: string, requestheadersContentdispositionName?: string, requestheadersContentdispositionReaddate?: string, requestheadersContentdispositionSize?: number, requestheadersContentdispositionType?: string, requestheadersContentlanguageIso3country?: string, requestheadersContentlanguageIso3language?: string, requestheadersContentlanguageCountry?: string, requestheadersContentlanguageDisplaycountry?: string, requestheadersContentlanguageDisplaylanguage?: string, requestheadersContentlanguageDisplayname?: string, requestheadersContentlanguageDisplayscript?: string, requestheadersContentlanguageDisplayvariant?: string, requestheadersContentlanguageLanguage?: string, requestheadersContentlanguageScript?: string, requestheadersContentlanguageUnicodelocaleattributes?: Array<string>, requestheadersContentlanguageUnicodelocalekeys?: Array<string>, requestheadersContentlanguageVariant?: string, requestheadersContentlength?: number, requestheadersContenttypeCharsetRegistered?: boolean, requestheadersContenttypeConcrete?: boolean, requestheadersContenttypeQualityvalue?: number, requestheadersContenttypeSubtype?: string, requestheadersContenttypeType?: string, requestheadersContenttypeWildcardsubtype?: boolean, requestheadersContenttypeWildcardtype?: boolean, requestheadersDate?: number, requestheadersExpires?: number, requestheadersHostAddressMcglobal?: boolean, requestheadersHostAddressMclinklocal?: boolean, requestheadersHostAddressMcnodelocal?: boolean, requestheadersHostAddressMcorglocal?: boolean, requestheadersHostAddressMcsitelocal?: boolean, requestheadersHostAddressAddress?: string, requestheadersHostAddressAnylocaladdress?: boolean, requestheadersHostAddressCanonicalhostname?: string, requestheadersHostAddressHostaddress?: string, requestheadersHostAddressHostname?: string, requestheadersHostAddressLinklocaladdress?: boolean, requestheadersHostAddressLoopbackaddress?: boolean, requestheadersHostAddressMulticastaddress?: boolean, requestheadersHostAddressSitelocaladdress?: boolean, requestheadersHostHostname?: string, requestheadersHostHoststring?: string, requestheadersHostPort?: number, requestheadersHostUnresolved?: boolean, requestheadersIfmatch?: Array<string>, requestheadersIfmodifiedsince?: number, requestheadersIfnonematch?: Array<string>, requestheadersIfunmodifiedsince?: number, requestheadersLastmodified?: number, requestheadersLocationAbsolute?: boolean, requestheadersLocationAuthority?: string, requestheadersLocationFragment?: string, requestheadersLocationHost?: string, requestheadersLocationOpaque?: boolean, requestheadersLocationPath?: string, requestheadersLocationPort?: number, requestheadersLocationQuery?: string, requestheadersLocationRawauthority?: string, requestheadersLocationRawfragment?: string, requestheadersLocationRawpath?: string, requestheadersLocationRawquery?: string, requestheadersLocationRawschemespecificpart?: string, requestheadersLocationRawuserinfo?: string, requestheadersLocationScheme?: string, requestheadersLocationSchemespecificpart?: string, requestheadersLocationUserinfo?: string, requestheadersOrigin?: string, requestheadersPragma?: string, requestheadersUpgrade?: string, requestheadersVary?: Array<string>, requestMethod?: string):Promise<ServiceAggregationDefinition.OssUploadOutput | null | undefined> {
      let res: ServiceAggregationDefinition.OssUploadOutput | null | undefined = await post<ServiceAggregationDefinition.OssUploadOutput>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_OSS_COMMON_UPLOAD,
        {
        },
        {
            "annexType": annexType,
            "requestHeaders.ETag": requestheadersEtag,
            "requestHeaders.acceptCharset[0].registered": requestheadersAcceptcharset0Registered,
            "requestHeaders.acceptLanguageAsLocales[0].ISO3Country": requestheadersAcceptlanguageaslocales0Iso3country,
            "requestHeaders.acceptLanguageAsLocales[0].ISO3Language": requestheadersAcceptlanguageaslocales0Iso3language,
            "requestHeaders.acceptLanguageAsLocales[0].country": requestheadersAcceptlanguageaslocales0Country,
            "requestHeaders.acceptLanguageAsLocales[0].displayCountry": requestheadersAcceptlanguageaslocales0Displaycountry,
            "requestHeaders.acceptLanguageAsLocales[0].displayLanguage": requestheadersAcceptlanguageaslocales0Displaylanguage,
            "requestHeaders.acceptLanguageAsLocales[0].displayName": requestheadersAcceptlanguageaslocales0Displayname,
            "requestHeaders.acceptLanguageAsLocales[0].displayScript": requestheadersAcceptlanguageaslocales0Displayscript,
            "requestHeaders.acceptLanguageAsLocales[0].displayVariant": requestheadersAcceptlanguageaslocales0Displayvariant,
            "requestHeaders.acceptLanguageAsLocales[0].language": requestheadersAcceptlanguageaslocales0Language,
            "requestHeaders.acceptLanguageAsLocales[0].script": requestheadersAcceptlanguageaslocales0Script,
            "requestHeaders.acceptLanguageAsLocales[0].unicodeLocaleAttributes": requestheadersAcceptlanguageaslocales0Unicodelocaleattributes,
            "requestHeaders.acceptLanguageAsLocales[0].unicodeLocaleKeys": requestheadersAcceptlanguageaslocales0Unicodelocalekeys,
            "requestHeaders.acceptLanguageAsLocales[0].variant": requestheadersAcceptlanguageaslocales0Variant,
            "requestHeaders.acceptLanguage[0].range": requestheadersAcceptlanguage0Range,
            "requestHeaders.acceptLanguage[0].weight": requestheadersAcceptlanguage0Weight,
            "requestHeaders.accept[0].charset.registered": requestheadersAccept0CharsetRegistered,
            "requestHeaders.accept[0].concrete": requestheadersAccept0Concrete,
            "requestHeaders.accept[0].qualityValue": requestheadersAccept0Qualityvalue,
            "requestHeaders.accept[0].subtype": requestheadersAccept0Subtype,
            "requestHeaders.accept[0].type": requestheadersAccept0Type,
            "requestHeaders.accept[0].wildcardSubtype": requestheadersAccept0Wildcardsubtype,
            "requestHeaders.accept[0].wildcardType": requestheadersAccept0Wildcardtype,
            "requestHeaders.accessControlAllowCredentials": requestheadersAccesscontrolallowcredentials,
            "requestHeaders.accessControlAllowHeaders": requestheadersAccesscontrolallowheaders,
            "requestHeaders.accessControlAllowMethods": requestheadersAccesscontrolallowmethods,
            "requestHeaders.accessControlAllowOrigin": requestheadersAccesscontrolalloworigin,
            "requestHeaders.accessControlExposeHeaders": requestheadersAccesscontrolexposeheaders,
            "requestHeaders.accessControlMaxAge": requestheadersAccesscontrolmaxage,
            "requestHeaders.accessControlRequestHeaders": requestheadersAccesscontrolrequestheaders,
            "requestHeaders.accessControlRequestMethod": requestheadersAccesscontrolrequestmethod,
            "requestHeaders.allow": requestheadersAllow,
            "requestHeaders.cacheControl": requestheadersCachecontrol,
            "requestHeaders.connection": requestheadersConnection,
            "requestHeaders.contentDisposition.charset.registered": requestheadersContentdispositionCharsetRegistered,
            "requestHeaders.contentDisposition.creationDate": requestheadersContentdispositionCreationdate,
            "requestHeaders.contentDisposition.filename": requestheadersContentdispositionFilename,
            "requestHeaders.contentDisposition.modificationDate": requestheadersContentdispositionModificationdate,
            "requestHeaders.contentDisposition.name": requestheadersContentdispositionName,
            "requestHeaders.contentDisposition.readDate": requestheadersContentdispositionReaddate,
            "requestHeaders.contentDisposition.size": requestheadersContentdispositionSize,
            "requestHeaders.contentDisposition.type": requestheadersContentdispositionType,
            "requestHeaders.contentLanguage.ISO3Country": requestheadersContentlanguageIso3country,
            "requestHeaders.contentLanguage.ISO3Language": requestheadersContentlanguageIso3language,
            "requestHeaders.contentLanguage.country": requestheadersContentlanguageCountry,
            "requestHeaders.contentLanguage.displayCountry": requestheadersContentlanguageDisplaycountry,
            "requestHeaders.contentLanguage.displayLanguage": requestheadersContentlanguageDisplaylanguage,
            "requestHeaders.contentLanguage.displayName": requestheadersContentlanguageDisplayname,
            "requestHeaders.contentLanguage.displayScript": requestheadersContentlanguageDisplayscript,
            "requestHeaders.contentLanguage.displayVariant": requestheadersContentlanguageDisplayvariant,
            "requestHeaders.contentLanguage.language": requestheadersContentlanguageLanguage,
            "requestHeaders.contentLanguage.script": requestheadersContentlanguageScript,
            "requestHeaders.contentLanguage.unicodeLocaleAttributes": requestheadersContentlanguageUnicodelocaleattributes,
            "requestHeaders.contentLanguage.unicodeLocaleKeys": requestheadersContentlanguageUnicodelocalekeys,
            "requestHeaders.contentLanguage.variant": requestheadersContentlanguageVariant,
            "requestHeaders.contentLength": requestheadersContentlength,
            "requestHeaders.contentType.charset.registered": requestheadersContenttypeCharsetRegistered,
            "requestHeaders.contentType.concrete": requestheadersContenttypeConcrete,
            "requestHeaders.contentType.qualityValue": requestheadersContenttypeQualityvalue,
            "requestHeaders.contentType.subtype": requestheadersContenttypeSubtype,
            "requestHeaders.contentType.type": requestheadersContenttypeType,
            "requestHeaders.contentType.wildcardSubtype": requestheadersContenttypeWildcardsubtype,
            "requestHeaders.contentType.wildcardType": requestheadersContenttypeWildcardtype,
            "requestHeaders.date": requestheadersDate,
            "requestHeaders.expires": requestheadersExpires,
            "requestHeaders.host.address.MCGlobal": requestheadersHostAddressMcglobal,
            "requestHeaders.host.address.MCLinkLocal": requestheadersHostAddressMclinklocal,
            "requestHeaders.host.address.MCNodeLocal": requestheadersHostAddressMcnodelocal,
            "requestHeaders.host.address.MCOrgLocal": requestheadersHostAddressMcorglocal,
            "requestHeaders.host.address.MCSiteLocal": requestheadersHostAddressMcsitelocal,
            "requestHeaders.host.address.address": requestheadersHostAddressAddress,
            "requestHeaders.host.address.anyLocalAddress": requestheadersHostAddressAnylocaladdress,
            "requestHeaders.host.address.canonicalHostName": requestheadersHostAddressCanonicalhostname,
            "requestHeaders.host.address.hostAddress": requestheadersHostAddressHostaddress,
            "requestHeaders.host.address.hostName": requestheadersHostAddressHostname,
            "requestHeaders.host.address.linkLocalAddress": requestheadersHostAddressLinklocaladdress,
            "requestHeaders.host.address.loopbackAddress": requestheadersHostAddressLoopbackaddress,
            "requestHeaders.host.address.multicastAddress": requestheadersHostAddressMulticastaddress,
            "requestHeaders.host.address.siteLocalAddress": requestheadersHostAddressSitelocaladdress,
            "requestHeaders.host.hostName": requestheadersHostHostname,
            "requestHeaders.host.hostString": requestheadersHostHoststring,
            "requestHeaders.host.port": requestheadersHostPort,
            "requestHeaders.host.unresolved": requestheadersHostUnresolved,
            "requestHeaders.ifMatch": requestheadersIfmatch,
            "requestHeaders.ifModifiedSince": requestheadersIfmodifiedsince,
            "requestHeaders.ifNoneMatch": requestheadersIfnonematch,
            "requestHeaders.ifUnmodifiedSince": requestheadersIfunmodifiedsince,
            "requestHeaders.lastModified": requestheadersLastmodified,
            "requestHeaders.location.absolute": requestheadersLocationAbsolute,
            "requestHeaders.location.authority": requestheadersLocationAuthority,
            "requestHeaders.location.fragment": requestheadersLocationFragment,
            "requestHeaders.location.host": requestheadersLocationHost,
            "requestHeaders.location.opaque": requestheadersLocationOpaque,
            "requestHeaders.location.path": requestheadersLocationPath,
            "requestHeaders.location.port": requestheadersLocationPort,
            "requestHeaders.location.query": requestheadersLocationQuery,
            "requestHeaders.location.rawAuthority": requestheadersLocationRawauthority,
            "requestHeaders.location.rawFragment": requestheadersLocationRawfragment,
            "requestHeaders.location.rawPath": requestheadersLocationRawpath,
            "requestHeaders.location.rawQuery": requestheadersLocationRawquery,
            "requestHeaders.location.rawSchemeSpecificPart": requestheadersLocationRawschemespecificpart,
            "requestHeaders.location.rawUserInfo": requestheadersLocationRawuserinfo,
            "requestHeaders.location.scheme": requestheadersLocationScheme,
            "requestHeaders.location.schemeSpecificPart": requestheadersLocationSchemespecificpart,
            "requestHeaders.location.userInfo": requestheadersLocationUserinfo,
            "requestHeaders.origin": requestheadersOrigin,
            "requestHeaders.pragma": requestheadersPragma,
            "requestHeaders.upgrade": requestheadersUpgrade,
            "requestHeaders.vary": requestheadersVary,
            "requestMethod": requestMethod
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId,
        },
      );

      return res;
    }

    static async serviceAggregationOssUploadPost(deviceType: string, type: string, userId: number):Promise<ServiceAggregationDefinition.OssUploadOutput | null | undefined> {
      let res: ServiceAggregationDefinition.OssUploadOutput | null | undefined = await post<ServiceAggregationDefinition.OssUploadOutput>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_OSS_UPLOAD,
        {
        },
        {
            "type": type,
        },
        {
            "device_type": deviceType,
            "user_id": userId
        },
      );

      return res;
    }
  }


  export class CommonSmsMessageController {
    static async serviceAggregationDiarySendsmsmessagePost(input: ServiceAggregationDefinition.AggSendSmsMessageInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_DIARY_SEND_SMS_MESSAGE,
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

    static async serviceAggregationSummarySendsmsmessagePost(input: ServiceAggregationDefinition.AggSendSmsMessageInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_SUMMARY_SEND_SMS_MESSAGE,
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

    static async serviceAggregationTransferSendsmsmessagePost(channelType: string, input: ServiceAggregationDefinition.AggSendSmsMessageInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_TRANSFER_SEND_SMS_MESSAGE,
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


  export class UserGuidanceController {
    static async serviceAggregationUserGuidancePost(channelType: string, ip: string, userGuidanceInput: ServiceAggregationDefinition.UserGuidanceInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.UserGuidanceOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.UserGuidanceOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.UserGuidanceOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_USER_GUIDANCE,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        userGuidanceInput
      );

      return res;
    }

    static async serviceAggregationUserGuidancelistPost(ip: string, userGuidanceListInput: ServiceAggregationDefinition.UserGuidanceListInput, userId: number):Promise<RowResponse<Array<ServiceAggregationDefinition.DictOutput>> | null | undefined> {
      let res: RowResponse<Array<ServiceAggregationDefinition.DictOutput>> | null | undefined = await post<RowResponse<Array<ServiceAggregationDefinition.DictOutput>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_USER_GUIDANCELIST,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        userGuidanceListInput
      );

      return res;
    }

    static async serviceAggregationV2UserGuidancePost(channelType: string, ip: string, userGuidanceInput: ServiceAggregationDefinition.UserGuidanceInput, userId: number):Promise<ApiResponse<ServiceAggregationDefinition.UserGuidanceOutput> | null | undefined> {
      let res: ApiResponse<ServiceAggregationDefinition.UserGuidanceOutput> | null | undefined = await post<ApiResponse<ServiceAggregationDefinition.UserGuidanceOutput>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_V2_USER_GUIDANCE,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        userGuidanceInput
      );

      return res;
    }
  }


  export class UserEmptyV3Controller {
    static async serviceAggregationV3EmptyValidatePost(input: ServiceAggregationDefinition.UserEmptyValidInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_V3_EMPTY_VALIDATE,
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

    static async serviceAggregationV3UserEmptyPost(input: ServiceAggregationDefinition.CodeInput):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_V3_USER_EMPTY,
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

    static async serviceAggregationV3UserEmptywithoutvipPost(channelType: string, input: ServiceAggregationDefinition.UserEmptyV3Input, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        ServiceAggregationUrlConstant.SERVICE_AGGREGATION_V3_USER_EMPTY_WITHOUT_VIP,
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
}
