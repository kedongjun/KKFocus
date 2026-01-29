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
  PushDevice,
  BugetHotBean
} from './../definition/BaseDefinition';
import { BaseDietDefinition } from './../definition/BaseDietDefinition';
import { BaseDietUrlConstant } from './../constant/BaseDietUrlConstant';

export namespace BaseDietOperation {
  export class GlobalAddController {
    static async baseDietV1ApplethistoryPost(input: BaseDietDefinition.DietAppletHistoryInput,
      userId: number): Promise<RowResponse<Array<BaseDietDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseDietDefinition.AppletHistoryResponse>> | null | undefined =
        await post<RowResponse<Array<BaseDietDefinition.AppletHistoryResponse>>>(
          BaseDietUrlConstant.BASE_DIET_V1_APPLET_HISTORY,
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


  export class PhotoDietController {
    static async baseDietV1AddphotodietPost(input: BaseDietDefinition.AddPhotoDietInput): Promise<ApiResponse<BaseDietDefinition.DietHealthDetail> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.DietHealthDetail> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.DietHealthDetail>>(
          BaseDietUrlConstant.BASE_DIET_V1_ADD_PHOTO_DIET,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1DeletephotodietPost(input: BaseDietDefinition.DeletePhotoDietInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_DELETE_PHOTO_DIET,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseDietV1UpdatephotodietPost(input: BaseDietDefinition.UpdatePhotoDietInput):
      Promise<ApiResponse<BaseDietDefinition.DietHealthDetail> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.DietHealthDetail> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.DietHealthDetail>>(
          BaseDietUrlConstant.BASE_DIET_V1_UPDATE_PHOTO_DIET,
          {},
          {},
          {},
          input
        );

      return res;
    }
  }


  export class CustomFoodController {
    static async baseDietV1AddcustomfoodPost(input: BaseDietDefinition.AddCustomFoodInput): Promise<ApiResponse<BaseDietDefinition.FoodOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.FoodOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.FoodOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_ADD_CUSTOM_FOOD,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1CustomfoodlistPost(): Promise<RowResponse<BaseDietDefinition.FoodOutputRow> | null | undefined> {
      let res: RowResponse<BaseDietDefinition.FoodOutputRow> | null | undefined =
        await post<RowResponse<BaseDietDefinition.FoodOutputRow>>(
          BaseDietUrlConstant.BASE_DIET_V1_CUSTOM_FOOD_LIST,
          {},
          {},
          {},
        );

      return res;
    }

    static async baseDietV1DeletecustomfoodPost(input: BaseDietDefinition.DeleteCustomFoodInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_DELETE_CUSTOM_FOOD,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseDietV1RecentlyfoodlistPost(): Promise<RowResponse<BaseDietDefinition.FoodOutputRow> | null | undefined> {
      let res: RowResponse<BaseDietDefinition.FoodOutputRow> | null | undefined =
        await post<RowResponse<BaseDietDefinition.FoodOutputRow>>(
          BaseDietUrlConstant.BASE_DIET_V1_RECENTLY_FOOD_LIST,
          {},
          {},
          {},
        );

      return res;
    }
  }


  export class SysFoodController {
    static async baseDietV1FooddetailPost(input: BaseDietDefinition.FoodDetailInput): Promise<ApiResponse<BaseDietDefinition.FoodDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.FoodDetailOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.FoodDetailOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_FOOD_DETAIL,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1SysandsearchfoodlistPost(input: BaseDietDefinition.PaginableRequest): Promise<RowResponse<BaseDietDefinition.FoodOutputRow> | null | undefined> {
      let res: RowResponse<BaseDietDefinition.FoodOutputRow> | null | undefined =
        await post<RowResponse<BaseDietDefinition.FoodOutputRow>>(
          BaseDietUrlConstant.BASE_DIET_V1_SYS_AND_SEARCH_FOOD_LIST,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1SysfoodmicroelementlistPost(input: BaseDietDefinition.SysFoodMicroElementListInput): Promise<RowResponse<BaseDietDefinition.FoodMicroElementOutputRow> | null | undefined> {
      let res: RowResponse<BaseDietDefinition.FoodMicroElementOutputRow> | null | undefined =
        await post<RowResponse<BaseDietDefinition.FoodMicroElementOutputRow>>(
          BaseDietUrlConstant.BASE_DIET_V1_SYS_FOOD_MICRO_ELEMENT_LIST,
          {},
          {},
          {},
          input
        );

      return res;
    }
  }


  export class SportsTypeController {
    static async baseDietV1AddsportstypePost(input: BaseDietDefinition.AddSportsTypeCustomizeInput): Promise<ApiResponse<BaseDietDefinition.SportsTypeCustomizeOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.SportsTypeCustomizeOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.SportsTypeCustomizeOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_ADD_SPORTS_TYPE,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1DeletesportstypePost(input: BaseDietDefinition.DietIdInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_DELETE_SPORTS_TYPE,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseDietV1GetrecentsportstypecustomizelistPost(): Promise<RowResponse<BaseDietDefinition.SportsTypeCustomizeOutputRow> | null | undefined> {
      let res: RowResponse<BaseDietDefinition.SportsTypeCustomizeOutputRow> | null | undefined =
        await post<RowResponse<BaseDietDefinition.SportsTypeCustomizeOutputRow>>(
          BaseDietUrlConstant.BASE_DIET_V1_GET_RECENT_SPORTS_TYPE_CUSTOMIZE_LIST,
          {},
          {},
          {},
        );

      return res;
    }

    static async baseDietV1GetsportstypecustomizelistPost(): Promise<RowResponse<BaseDietDefinition.SportsTypeCustomizeOutputRow> | null | undefined> {
      let res: RowResponse<BaseDietDefinition.SportsTypeCustomizeOutputRow> | null | undefined =
        await post<RowResponse<BaseDietDefinition.SportsTypeCustomizeOutputRow>>(
          BaseDietUrlConstant.BASE_DIET_V1_GET_SPORTS_TYPE_CUSTOMIZE_LIST,
          {},
          {},
          {},
        );

      return res;
    }

    static async baseDietV1GetsportstypelistPost(): Promise<RowResponse<BaseDietDefinition.SportsTypeCustomizeOutputRow> | null | undefined> {
      let res: RowResponse<BaseDietDefinition.SportsTypeCustomizeOutputRow> | null | undefined =
        await post<RowResponse<BaseDietDefinition.SportsTypeCustomizeOutputRow>>(
          BaseDietUrlConstant.BASE_DIET_V1_GET_SPORTS_TYPE_LIST,
          {},
          {},
          {},
        );

      return res;
    }

    static async baseDietV1SearchsportstypecustomizelistPost(input: BaseDietDefinition.SportsTypeSearchInput):
      Promise<RowResponse<BaseDietDefinition.SportsTypeCustomizeOutputRow> | null | undefined> {
      let res: RowResponse<BaseDietDefinition.SportsTypeCustomizeOutputRow> | null | undefined =
        await post<RowResponse<BaseDietDefinition.SportsTypeCustomizeOutputRow>>(
          BaseDietUrlConstant.BASE_DIET_V1_SEARCH_SPORTS_TYPE_CUSTOMIZE_LIST,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1UpdatesportstypePost(input: BaseDietDefinition.UpdateSportsTypeCustomizeInput,
      userId: number): Promise<ApiResponse<BaseDietDefinition.SportsTypeCustomizeOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.SportsTypeCustomizeOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.SportsTypeCustomizeOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_UPDATE_SPORTS_TYPE,
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


  export class DietRemindController {
    static async baseDietV1DietremindlistPost():
      Promise<RowResponse<BaseDietDefinition.DietRemindOutputList> | null | undefined> {
      let res: RowResponse<BaseDietDefinition.DietRemindOutputList> | null | undefined =
        await post<RowResponse<BaseDietDefinition.DietRemindOutputList>>(
          BaseDietUrlConstant.BASE_DIET_V1_DIET_REMIND_LIST,
          {},
          {},
          {},
        );

      return res;
    }

    static async baseDietV1GenremindelementsPost(input: BaseDietDefinition.DietTodoViewInput,
      userId: number): Promise<RowResponse<Array<BaseDietDefinition.DietTodoViewOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseDietDefinition.DietTodoViewOutput>> | null | undefined =
        await post<RowResponse<Array<BaseDietDefinition.DietTodoViewOutput>>>(
          BaseDietUrlConstant.BASE_DIET_V1_GEN_REMIND_ELEMENTS,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseDietV1RemindSyncdataPost(userId: number): Promise<RowResponse<Array<BaseDietDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseDietDefinition.SyncDataAppletResponse>> | null | undefined =
        await post<RowResponse<Array<BaseDietDefinition.SyncDataAppletResponse>>>(
          BaseDietUrlConstant.BASE_DIET_V1_REMIND_SYNC_DATA,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async baseDietV1UpdatedietremindPost(input: BaseDietDefinition.UpdateDietRemindInput):
      Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_UPDATE_DIET_REMIND,
        {},
        {},
        {},
        input
      );

      return res;
    }
  }


  export class WeightController {
    static async baseDietV1DeleteweightPost(input: BaseDietDefinition.IdRequest): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_DELETE_WEIGHT,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseDietV1GetweightbydatePost(input: BaseDietDefinition.RecordDateInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_GET_WEIGHT_BY_DATE,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseDietV1GetweightimglistPost(input: BaseDietDefinition.PaginableRequest):
      Promise<PaginableResponse<BaseDietDefinition.WeightLogOutputRows> | null | undefined> {
      let res: PaginableResponse<BaseDietDefinition.WeightLogOutputRows> | null | undefined =
        await post<PaginableResponse<BaseDietDefinition.WeightLogOutputRows>>(
          BaseDietUrlConstant.BASE_DIET_V1_GET_WEIGHT_IMG_LIST,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1GetweightlistPost(input: BaseDietDefinition.PaginableRequest):
      Promise<PaginableResponse<BaseDietDefinition.WeightLogOutputRows> | null | undefined> {
      let res: PaginableResponse<BaseDietDefinition.WeightLogOutputRows> | null | undefined =
        await post<PaginableResponse<BaseDietDefinition.WeightLogOutputRows>>(
          BaseDietUrlConstant.BASE_DIET_V1_GET_WEIGHT_LIST,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1MonthweightlogPost(input: BaseDietDefinition.MonthWeightLogInput):
      Promise<ApiResponse<BaseDietDefinition.MonthWeightLogOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.MonthWeightLogOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.MonthWeightLogOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_MONTH_WEIGHT_LOG,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1UpdatetargetweightPost(input: BaseDietDefinition.UpdateTargetWeightInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_UPDATE_TARGET_WEIGHT,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseDietV1UpdateweightPost(input: BaseDietDefinition.UpdateWeightInput): Promise<ApiResponse<BaseDietDefinition.WeightLogOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.WeightLogOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.WeightLogOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_UPDATE_WEIGHT,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1WeighthomepagePost(input: BaseDietDefinition.WeightHomePageInput): Promise<ApiResponse<BaseDietDefinition.BodyMassInfo> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.BodyMassInfo> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.BodyMassInfo>>(
          BaseDietUrlConstant.BASE_DIET_V1_WEIGHT_HOMEPAGE,
          {},
          {},
          {},
          input
        );

      return res;
    }
  }


  export class MeasurementsController {
    static async baseDietV1DeletemeasurementsPost(input: BaseDietDefinition.DeleteMeasurementsInput):
      Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_DELETE_MEASUREMENTS,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseDietV1GetmeasurementsbydatePost(input: BaseDietDefinition.MeasurementsRecordDateInput):
      Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_GET_MEASUREMENTS_BY_DATE,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseDietV1MeasurementshomepagePost(input: BaseDietDefinition.MeasurementsHomePageInput):
      Promise<ApiResponse<BaseDietDefinition.MeasurementsHomepageUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.MeasurementsHomepageUsingPOSTRsp> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.MeasurementsHomepageUsingPOSTRsp>>(
          BaseDietUrlConstant.BASE_DIET_V1_MEASUREMENTS_HOMEPAGE,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1MonthmeasurementslogPost(input: BaseDietDefinition.MonthMeasurementsLogInput,
      userId: number): Promise<ApiResponse<BaseDietDefinition.MonthMeasurementsLogOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.MonthMeasurementsLogOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.MonthMeasurementsLogOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_MONTH_MEASUREMENTS_LOG,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseDietV1UpdatemeasurementsPost(input: BaseDietDefinition.UpdateMeasurementsInput):
      Promise<ApiResponse<BaseDietDefinition.MeasurementsWholeOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.MeasurementsWholeOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.MeasurementsWholeOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_UPDATE_MEASUREMENTS,
          {},
          {},
          {},
          input
        );

      return res;
    }
  }


  export class CheckAliveController {
    static async checkaliveGet(): Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseDietUrlConstant.CHECKALIVE,
        {},
        {},
        {},
      );

      return res;
    }
  }


  export class UserProfileController {
    static async baseDietV1BudgethotPost(): Promise<ApiResponse<BaseDietDefinition.BudgetHotOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.BudgetHotOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.BudgetHotOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_BUDGET_HOT,
          {},
          {},
          {},
        );

      return res;
    }

    static async baseDietV1GetbodyinformationPost(): Promise<ApiResponse<BaseDietDefinition.BodyInformationOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.BodyInformationOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.BodyInformationOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_GET_BODY_INFORMATION,
          {},
          {},
          {},
        );

      return res;
    }

    static async baseDietV1InituserprofilePost(input: BaseDietDefinition.InitUserProfileInput): Promise<ApiResponse<BugetHotBean> | null | undefined> {
      let res: ApiResponse<BugetHotBean> | null | undefined = await post<ApiResponse<BugetHotBean>>(
        BaseDietUrlConstant.BASE_DIET_V1_INIT_USER_PROFILE,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseDietV1UpdatebudgethotPost(input: BaseDietDefinition.UpdateBudgetHotInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_UPDATE_BUDGET_HOT,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseDietV1UpdateuserprofilePost(input: BaseDietDefinition.UpdateUserProfileInput):
      Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_UPDATE_USER_PROFILE,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseDietV1UserprofilePost(): Promise<ApiResponse<BaseDietDefinition.UserProfileOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.UserProfileOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.UserProfileOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_USER_PROFILE,
          {},
          {},
          {},
        );

      return res;
    }
  }


  export class DietPackageController {
    static async baseDietV1AdddietpackagePost(input: BaseDietDefinition.AddPersonalDietPackageInput): Promise<ApiResponse<BaseDietDefinition.AddPersonalDietPackageOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.AddPersonalDietPackageOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.AddPersonalDietPackageOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_ADD_DIET_PACKAGE,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1DeletedietpackagePost(input: BaseDietDefinition.DietIdInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_DELETE_DIET_PACKAGE,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseDietV1DietpackagelistPost(): Promise<RowResponse<BaseDietDefinition.DietPackageOutputRow> | null | undefined> {
      let res: RowResponse<BaseDietDefinition.DietPackageOutputRow> | null | undefined =
        await post<RowResponse<BaseDietDefinition.DietPackageOutputRow>>(
          BaseDietUrlConstant.BASE_DIET_V1_DIET_PACKAGE_LIST,
          {},
          {},
          {},
        );

      return res;
    }

    static async baseDietV1LzhtestPost(userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_LZH_TEST,
        {},
        {},
        {
          "user_id": userId
        },
      );

      return res;
    }
  }


  export class SummaryController {
    static async baseDietV1DietsummaryPost(input: BaseDietDefinition.DietSummaryInput): Promise<ApiResponse<BaseDietDefinition.SummaryOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.SummaryOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.SummaryOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_DIET_SUMMARY,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1StatisticsPost(input: BaseDietDefinition.StatisticsInput):
      Promise<ApiResponse<BaseDietDefinition.StatisticsOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.StatisticsOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.StatisticsOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_STATISTICS,
          {},
          {},
          {},
          input
        );

      return res;
    }
  }


  export class SportsLogController {
    static async baseDietV1AddsportslogPost(input: BaseDietDefinition.AddSportsLogInput): Promise<ApiResponse<BaseDietDefinition.SportsLogOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.SportsLogOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.SportsLogOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_ADD_SPORTS_LOG,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1DeletesportslogPost(input: BaseDietDefinition.DietIdInput,): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_DELETE_SPORTS_LOG,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseDietV1GetsportslogbydatePost(input: BaseDietDefinition.SportsLogByDateInput):
      Promise<ApiResponse<BaseDietDefinition.SportsLogDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.SportsLogDetailOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.SportsLogDetailOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_GET_SPORTS_LOG_BY_DATE,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1SportslogdetailPost(input: BaseDietDefinition.IdRequest,
      userId: number): Promise<ApiResponse<BaseDietDefinition.SportsLogOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.SportsLogOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.SportsLogOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_SPORTS_LOG_DETAIL,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseDietV1UpdatesportslogPost(input: BaseDietDefinition.UpdateSportsLogInput): Promise<ApiResponse<BaseDietDefinition.SportsLogOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.SportsLogOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.SportsLogOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_UPDATE_SPORTS_LOG,
          {},
          {},
          {},
          input
        );

      return res;
    }
  }


  export class HeightController {
    static async baseDietV1DeleteheightPost(input: BaseDietDefinition.IdRequest): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_DELETE_HEIGHT,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseDietV1GetheightbydatePost(input: BaseDietDefinition.RecordDateInput):
      Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_GET_HEIGHT_BY_DATE,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseDietV1HeighthomepagePost(input: BaseDietDefinition.HeightHomePageInput):
      Promise<ApiResponse<BaseDietDefinition.HeightHomePageOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.HeightHomePageOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.HeightHomePageOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_HEIGHT_HOMEPAGE,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1MonthheightlogPost(input: BaseDietDefinition.MonthHeightLogInput,
      userId: number): Promise<ApiResponse<BaseDietDefinition.MonthHeightLogOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.MonthHeightLogOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.MonthHeightLogOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_MONTH_HEIGHT_LOG,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseDietV1UpdateheightPost(input: BaseDietDefinition.UpdateHeightInput):
      Promise<ApiResponse<BaseDietDefinition.HeightLogOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.HeightLogOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.HeightLogOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_UPDATE_HEIGHT,
          {},
          {},
          {},
          input
        );

      return res;
    }
  }


  export class NormalDietController {
    static async baseDietV1AddnormaldietPost(input: BaseDietDefinition.AddNormalDietInput): Promise<ApiResponse<BaseDietDefinition.DietHealthDetail> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.DietHealthDetail> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.DietHealthDetail>>(
          BaseDietUrlConstant.BASE_DIET_V1_ADD_NORMAL_DIET,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1AddnormaldietfrompackagePost(input: BaseDietDefinition.addDietFromPackageInput): Promise<RowResponse<Array<BaseDietDefinition.DietHealthDetail>> | null | undefined> {
      let res: RowResponse<Array<BaseDietDefinition.DietHealthDetail>> | null | undefined =
        await post<RowResponse<Array<BaseDietDefinition.DietHealthDetail>>>(
          BaseDietUrlConstant.BASE_DIET_V1_ADD_NORMAL_DIET_FROM_PACKAGE,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1BatchadddietPost(input: BaseDietDefinition.BatchAddNormalDietInput, ip: string,
      userId: number): Promise<ApiResponse<BaseDietDefinition.BatchAddNormalDietOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.BatchAddNormalDietOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.BatchAddNormalDietOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_BATCH_ADD_DIET,
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

    static async baseDietV1DeletenormaldietPost(input: BaseDietDefinition.DeleteNormalDietInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDietUrlConstant.BASE_DIET_V1_DELETE_NORMAL_DIET,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseDietV1Diet7dayactualhotPost(input: BaseDietDefinition.Diet7DayActualHotInput,
      userId: number): Promise<ApiResponse<BaseDietDefinition.Diet7DayOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.Diet7DayOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.Diet7DayOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_DIET7DAY_ACTUAL_HOT,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseDietV1DiethomepagePost(input: BaseDietDefinition.DietHomepageInput,
      userId: number): Promise<ApiResponse<BaseDietDefinition.DietHomepageOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.DietHomepageOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.DietHomepageOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_DIET_HOMEPAGE,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseDietV1DietlogdetailPost(input: BaseDietDefinition.DietLogDetailInput,
      userId: number): Promise<ApiResponse<BaseDietDefinition.DietHealthDetail> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.DietHealthDetail> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.DietHealthDetail>>(
          BaseDietUrlConstant.BASE_DIET_V1_DIET_LOG_DETAIL,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseDietV1GetshortcutappletPost(input: BaseDietDefinition.HotInfoInput,
      userId: number): Promise<ApiResponse<BaseDietDefinition.HotsInfo> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.HotsInfo> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.HotsInfo>>(
          BaseDietUrlConstant.BASE_DIET_V1_GET_SHORTCUT_APPLET,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseDietV1HistorydatacountPost(userId: number): Promise<ApiResponse<Map<string, number>> | null | undefined> {
      let res: ApiResponse<Map<string, number>> | null | undefined = await post<ApiResponse<Map<string, number>>>(
        BaseDietUrlConstant.BASE_DIET_V1_HISTORY_DATA_COUNT,
        {},
        {},
        {
          "user_id": userId
        },
      );

      return res;
    }

    static async baseDietV1HotinfoPost(input: BaseDietDefinition.HotInfoInput,
      userId: number): Promise<ApiResponse<BaseDietDefinition.HotsInfo> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.HotsInfo> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.HotsInfo>>(
          BaseDietUrlConstant.BASE_DIET_V1_HOT_INFO,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseDietV1MealinfoPost(input: BaseDietDefinition.MealInfoInput):
      Promise<ApiResponse<BaseDietDefinition.MealInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.MealInfoOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.MealInfoOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_MEAL_INFO,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1MealinfofrompackagePost(input: BaseDietDefinition.DietIdInput): Promise<ApiResponse<BaseDietDefinition.MealInfoFromPackageOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.MealInfoFromPackageOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.MealInfoFromPackageOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_MEAL_INFO_FROM_PACKAGE,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1MemorialdataPost(input: BaseDietDefinition.DateRangeRequest,
      userId: number): Promise<ApiResponse<BaseDietDefinition.DietPageOutput> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.DietPageOutput> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.DietPageOutput>>(
          BaseDietUrlConstant.BASE_DIET_V1_MEMORIAL_DATA,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseDietV1MonthappraisalPost(input: BaseDietDefinition.MonthAppraisalInput): Promise<RowResponse<BaseDietDefinition.MonthAppraisalRow> | null | undefined> {
      let res: RowResponse<BaseDietDefinition.MonthAppraisalRow> | null | undefined =
        await post<RowResponse<BaseDietDefinition.MonthAppraisalRow>>(
          BaseDietUrlConstant.BASE_DIET_V1_MONTH_APPRAISAL,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV1UpdatenormaldietactualweightPost(input: BaseDietDefinition.UpdateNormalDietActualWeightInput): Promise<ApiResponse<BaseDietDefinition.DietHealthDetail> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.DietHealthDetail> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.DietHealthDetail>>(
          BaseDietUrlConstant.BASE_DIET_V1_UPDATE_NORMAL_DIET_ACTUAL_WEIGHT,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseDietV2DiethomepagePost(input: BaseDietDefinition.DietHomepageInput): Promise<ApiResponse<BaseDietDefinition.DietHomepageOutputV2> | null | undefined> {
      let res: ApiResponse<BaseDietDefinition.DietHomepageOutputV2> | null | undefined =
        await post<ApiResponse<BaseDietDefinition.DietHomepageOutputV2>>(
          BaseDietUrlConstant.BASE_DIET_V2_DIET_HOMEPAGE,
          {},
          {},
          {},
          input
        );

      return res;
    }
  }
}
