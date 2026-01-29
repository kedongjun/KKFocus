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
import { BaseDailyDefinition } from './../definition/BaseDailyDefinition';
import { BaseDailyUrlConstant } from './../constant/BaseDailyUrlConstant';

export namespace BaseDailyOperation {
  export class DailyController {
    static async baseDailyDaystarPost(dto: BaseDailyDefinition.DayConstellationInput):Promise<ApiResponse<BaseDailyDefinition.ConstellationDto> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.ConstellationDto> | null | undefined = await post<ApiResponse<BaseDailyDefinition.ConstellationDto>>(
        BaseDailyUrlConstant.BASE_DAILY_DAY_STAR,
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

    static async baseDailyFinishPost(input: BaseDailyDefinition.DailyFinishedInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDailyUrlConstant.BASE_DAILY_FINISH,
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

    static async baseDailyGetdailyremindconfigPost(input:BaseDailyDefinition.GetDailyRemindInput):Promise<ApiResponse<BaseDailyDefinition.DailyRemindConfigOutput> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.DailyRemindConfigOutput> | null | undefined = await post<ApiResponse<BaseDailyDefinition.DailyRemindConfigOutput>>(
        BaseDailyUrlConstant.BASE_DAILY_GET_DAILY_REMIND_CONFIG,
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

    static async baseDailyGethistorystoryPost(userId?: number):Promise<ApiResponse<BaseDailyDefinition.StoryDto> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.StoryDto> | null | undefined = await post<ApiResponse<BaseDailyDefinition.StoryDto>>(
        BaseDailyUrlConstant.BASE_DAILY_GET_HISTORY_STORY,
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

    static async baseDailyGettodaystoryPost(userId?: number):Promise<ApiResponse<BaseDailyDefinition.StoryDto> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.StoryDto> | null | undefined = await post<ApiResponse<BaseDailyDefinition.StoryDto>>(
        BaseDailyUrlConstant.BASE_DAILY_GET_TODAY_STORY,
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

    static async baseDailyLicenseplatenumlimitPost(dto: BaseDailyDefinition.LicensePlateNumLimitInput):Promise<ApiResponse<BaseDailyDefinition.LicensePlateNumLimitDto> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.LicensePlateNumLimitDto> | null | undefined = await post<ApiResponse<BaseDailyDefinition.LicensePlateNumLimitDto>>(
        BaseDailyUrlConstant.BASE_DAILY_LICENSE_PLATE_NUM_LIMIT,
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

    static async baseDailySetdailyremindconfigPost(input: BaseDailyDefinition.DailyRemindConfigInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDailyUrlConstant.BASE_DAILY_SET_DAILY_REMIND_CONFIG,
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

    static async baseDailyStarPost(dto: BaseDailyDefinition.ConstellationInput):Promise<ApiResponse<BaseDailyDefinition.ConstellationDto> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.ConstellationDto> | null | undefined = await post<ApiResponse<BaseDailyDefinition.ConstellationDto>>(
        BaseDailyUrlConstant.BASE_DAILY_STAR,
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

    static async baseDailyStarM21Post(dto: BaseDailyDefinition.ConstellationInput):Promise<ApiResponse<BaseDailyDefinition.DailyConstellation21UsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.DailyConstellation21UsingPOSTRsp> | null | undefined = await post<ApiResponse<BaseDailyDefinition.DailyConstellation21UsingPOSTRsp>>(
        BaseDailyUrlConstant.BASE_DAILY_STAR_21_URL,
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

    static async baseDailyStarv2Post(dto: BaseDailyDefinition.ConstellationInput):Promise<RowResponse<Array<BaseDailyDefinition.ConstellationDto>> | null | undefined> {
      let res: RowResponse<Array<BaseDailyDefinition.ConstellationDto>> | null | undefined = await post<RowResponse<Array<BaseDailyDefinition.ConstellationDto>>>(
        BaseDailyUrlConstant.BASE_DAILY_STAR_V2,
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

    static async baseDailyStockPost():Promise<RowResponse<Array<BaseDailyDefinition.StockIndexDto>> | null | undefined> {
      let res: RowResponse<Array<BaseDailyDefinition.StockIndexDto>> | null | undefined = await post<RowResponse<Array<BaseDailyDefinition.StockIndexDto>>>(
        BaseDailyUrlConstant.BASE_DAILY_STOCK,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseDailyStoryPost(userId: number):Promise<RowResponse<Array<BaseDailyDefinition.StoryDto>> | null | undefined> {
      let res: RowResponse<Array<BaseDailyDefinition.StoryDto>> | null | undefined = await post<RowResponse<Array<BaseDailyDefinition.StoryDto>>>(
        BaseDailyUrlConstant.BASE_DAILY_STORY,
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

    static async baseDailySyncfinishdataPost(syncDataInput: BaseDailyDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseDailyDefinition.SyncDataAppletFinishResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseDailyDefinition.SyncDataAppletFinishResponse>> | null | undefined = await post<RowResponse<Array<BaseDailyDefinition.SyncDataAppletFinishResponse>>>(
        BaseDailyUrlConstant.BASE_DAILY_SYNC_FINISH_DATA,
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

    static async baseDailyTypesPost(dto: BaseDailyDefinition.DailyTypesInput):Promise<RowResponse<Array<Map<string, object>>> | null | undefined> {
      let res: RowResponse<Array<Map<string, object>>> | null | undefined = await post<RowResponse<Array<Map<string, object>>>>(
        BaseDailyUrlConstant.BASE_DAILY_TYPES,
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

    static async baseDailyV1GetcirclejokebyuserPost(ip: string, userId: number):Promise<ApiResponse<BaseDailyDefinition.JokeOutput> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.JokeOutput> | null | undefined = await post<ApiResponse<BaseDailyDefinition.JokeOutput>>(
        BaseDailyUrlConstant.BASE_DAILY_V1_GET_CIRCLE_JOKE_BY_USER,
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

    static async baseDailyV1GetcircletipsbyuserPost(ip: string, userId: number):Promise<ApiResponse<BaseDailyDefinition.TipsOutput> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.TipsOutput> | null | undefined = await post<ApiResponse<BaseDailyDefinition.TipsOutput>>(
        BaseDailyUrlConstant.BASE_DAILY_V1_GET_CIRCLE_TIPS_BY_USER,
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

    static async baseDailyV1HistorydatacountPost(userId: number):Promise<ApiResponse<Map<string, number>> | null | undefined> {
      let res: ApiResponse<Map<string, number>> | null | undefined = await post<ApiResponse<Map<string, number>>>(
        BaseDailyUrlConstant.BASE_DAILY_V1_HISTORY_DATA_COUNT,
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

    static async baseDailyV2GetdailyjokePost(userId?: number):Promise<ApiResponse<BaseDailyDefinition.JokeOutput> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.JokeOutput> | null | undefined = await post<ApiResponse<BaseDailyDefinition.JokeOutput>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_GET_DAILY_JOKE,
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

    static async baseDailyV2GetdailytipsPost(userId?: number):Promise<ApiResponse<BaseDailyDefinition.TipsOutput> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.TipsOutput> | null | undefined = await post<ApiResponse<BaseDailyDefinition.TipsOutput>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_GET_DAILY_TIPS,
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

    static async baseDailyV2GetrandomjokePost(userId?: number):Promise<ApiResponse<BaseDailyDefinition.JokeOutput> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.JokeOutput> | null | undefined = await post<ApiResponse<BaseDailyDefinition.JokeOutput>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_GET_RANDOM_JOKE,
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

    static async baseDailyV2GetrandomtipsPost(userId?: number):Promise<ApiResponse<BaseDailyDefinition.TipsOutput> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.TipsOutput> | null | undefined = await post<ApiResponse<BaseDailyDefinition.TipsOutput>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_GET_RANDOM_TIPS,
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

    static async baseDailyVversionStarPost(dto: BaseDailyDefinition.ConstellationInput, version: string):Promise<ApiResponse<BaseDailyDefinition.ConstellationDto> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.ConstellationDto> | null | undefined = await post<ApiResponse<BaseDailyDefinition.ConstellationDto>>(
        BaseDailyUrlConstant.BASE_DAILY_V_VERSION_STAR,
        {
            "version": version
        },
        {
        },
        {
        },
        dto
      );

      return res;
    }

    static async nativeBaseDailyTododailyviewlistPost(userId: number):Promise<ApiResponse<BaseDailyDefinition.DailyTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.DailyTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseDailyDefinition.DailyTodoViewListOutput>>(
        BaseDailyUrlConstant.NATIVE_BASE_DAILY_TODO_DAILY_VIEW_LIST,
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

    static async nativeBaseDailyV1LoadjokejobPost():Promise<ApiResponse<void> | null | undefined> {
      let res: ApiResponse<void> | null | undefined = await post<ApiResponse<void>>(
        BaseDailyUrlConstant.NATIVE_BASE_DAILY_V1_LOAD_JOKE_JOB,
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


  export class DailyControllerV2 {
    static async baseDailyV2EnglishBydayPost(input: BaseDailyDefinition.ShowDayInput):Promise<RowResponse<Array<BaseDailyDefinition.DailyEnglishDto>> | null | undefined> {
      let res: RowResponse<Array<BaseDailyDefinition.DailyEnglishDto>> | null | undefined = await post<RowResponse<Array<BaseDailyDefinition.DailyEnglishDto>>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_ENGLISH_BY_DAY,
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

    static async baseDailyV2EnglishListPost(input: BaseDailyDefinition.PaginableRequest, ip: string, userId: number):Promise<PaginableResponse<Array<BaseDailyDefinition.DailyEnglishDto>> | null | undefined> {
      let res: PaginableResponse<Array<BaseDailyDefinition.DailyEnglishDto>> | null | undefined = await post<PaginableResponse<Array<BaseDailyDefinition.DailyEnglishDto>>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_ENGLISH_LIST,
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

    static async baseDailyV2EnglishRandomPost():Promise<ApiResponse<BaseDailyDefinition.DailyEnglishDto> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.DailyEnglishDto> | null | undefined = await post<ApiResponse<BaseDailyDefinition.DailyEnglishDto>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_ENGLISH_RANDOM,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseDailyV2EnglishTodayPost():Promise<ApiResponse<BaseDailyDefinition.DailyEnglishDto> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.DailyEnglishDto> | null | undefined = await post<ApiResponse<BaseDailyDefinition.DailyEnglishDto>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_ENGLISH_TODAY,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseDailyV2NewsPost(userId: number):Promise<RowResponse<Array<BaseDailyDefinition.NewsDto>> | null | undefined> {
      let res: RowResponse<Array<BaseDailyDefinition.NewsDto>> | null | undefined = await post<RowResponse<Array<BaseDailyDefinition.NewsDto>>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_NEWS,
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

    static async baseDailyV2PaintingBydayPost(input: BaseDailyDefinition.ShowDayInput):Promise<RowResponse<Array<BaseDailyDefinition.DailyPaintingDto>> | null | undefined> {
      let res: RowResponse<Array<BaseDailyDefinition.DailyPaintingDto>> | null | undefined = await post<RowResponse<Array<BaseDailyDefinition.DailyPaintingDto>>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_PAINTING_BY_DAY,
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

    static async baseDailyV2PaintingTodayPost():Promise<ApiResponse<BaseDailyDefinition.DailyPaintingDto> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.DailyPaintingDto> | null | undefined = await post<ApiResponse<BaseDailyDefinition.DailyPaintingDto>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_PAINTING_TODAY,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseDailyV2PoetryBydayPost(input: BaseDailyDefinition.ShowDayInput):Promise<RowResponse<Array<BaseDailyDefinition.DailyPoetryDto>> | null | undefined> {
      let res: RowResponse<Array<BaseDailyDefinition.DailyPoetryDto>> | null | undefined = await post<RowResponse<Array<BaseDailyDefinition.DailyPoetryDto>>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_POETRY_BY_DAY,
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

    static async baseDailyV2PoetryTodayPost():Promise<ApiResponse<BaseDailyDefinition.DailyPoetryDto> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.DailyPoetryDto> | null | undefined = await post<ApiResponse<BaseDailyDefinition.DailyPoetryDto>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_POETRY_TODAY,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseDailyV2ScenicspotBydayPost(input: BaseDailyDefinition.ShowDayInput):Promise<RowResponse<Array<BaseDailyDefinition.DailyScenicSpotDto>> | null | undefined> {
      let res: RowResponse<Array<BaseDailyDefinition.DailyScenicSpotDto>> | null | undefined = await post<RowResponse<Array<BaseDailyDefinition.DailyScenicSpotDto>>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_SCENIC_SPOT_BY_DAY,
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

    static async baseDailyV2ScenicspotListPost(input: BaseDailyDefinition.PaginableRequest, ip: string, userId: number):Promise<PaginableResponse<Array<BaseDailyDefinition.DailyScenicSpotDto>> | null | undefined> {
      let res: PaginableResponse<Array<BaseDailyDefinition.DailyScenicSpotDto>> | null | undefined = await post<PaginableResponse<Array<BaseDailyDefinition.DailyScenicSpotDto>>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_SCENIC_SPOT_LIST,
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

    static async baseDailyV2ScenicspotTodayPost():Promise<ApiResponse<BaseDailyDefinition.DailyScenicSpotDto> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.DailyScenicSpotDto> | null | undefined = await post<ApiResponse<BaseDailyDefinition.DailyScenicSpotDto>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_SCENIC_SPOT_TODAY,
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


  export class CollectControllerV2 {
    static async baseDailyV2AdddailyenglishcollectPost(input: BaseDailyDefinition.CollectIdInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_ADD_DAILY_ENGLISH_COLLECT,
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

    static async baseDailyV2AdddailypaintingcollectPost(input: BaseDailyDefinition.CollectIdInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_ADD_DAILY_PAINTING_COLLECT,
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

    static async baseDailyV2AdddailypoetrycollectPost(input: BaseDailyDefinition.CollectIdInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_ADD_DAILY_POETRY_COLLECT,
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

    static async baseDailyV2AdddailyscenicspotcollectPost(input: BaseDailyDefinition.CollectIdInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_ADD_DAILY_SCENIC_SPOT_COLLECT,
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

    static async baseDailyV2DeletedailyenglishcollectPost(input: BaseDailyDefinition.CollectIdListInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_DELETE_DAILY_ENGLISH_COLLECT,
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

    static async baseDailyV2DeletedailypaintingcollectPost(input: BaseDailyDefinition.CollectIdListInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_DELETE_DAILY_PAINTING_COLLECT,
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

    static async baseDailyV2DeletedailypoetrycollectPost(input: BaseDailyDefinition.CollectIdListInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_DELETE_DAILY_POETRY_COLLECT,
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

    static async baseDailyV2DeletedailyscenicspotcollectPost(input: BaseDailyDefinition.CollectIdListInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_DELETE_DAILY_SCENIC_SPOT_COLLECT,
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

    static async baseDailyV2EnglishcollectdetailPost(input: BaseDailyDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseDailyDefinition.DailyEnglishCollectDto> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.DailyEnglishCollectDto> | null | undefined = await post<ApiResponse<BaseDailyDefinition.DailyEnglishCollectDto>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_ENGLISH_COLLECT_DETAIL,
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

    static async baseDailyV2EnglishcollectlistPost(input: BaseDailyDefinition.PaginableRequest):Promise<PaginableResponse<Array<BaseDailyDefinition.DailyEnglishCollectDto>> | null | undefined> {
      let res: PaginableResponse<Array<BaseDailyDefinition.DailyEnglishCollectDto>> | null | undefined = await post<PaginableResponse<Array<BaseDailyDefinition.DailyEnglishCollectDto>>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_ENGLISH_COLLECT_LIST,
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

    static async baseDailyV2PaintingcollectdetailPost(input: BaseDailyDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseDailyDefinition.DailyPaintingCollectDto> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.DailyPaintingCollectDto> | null | undefined = await post<ApiResponse<BaseDailyDefinition.DailyPaintingCollectDto>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_PAINTING_COLLECT_DETAIL,
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

    static async baseDailyV2PaintingcollectlistPost(input: BaseDailyDefinition.PaginableRequest):Promise<PaginableResponse<Array<BaseDailyDefinition.DailyPaintingCollectDto>> | null | undefined> {
      let res: PaginableResponse<Array<BaseDailyDefinition.DailyPaintingCollectDto>> | null | undefined = await post<PaginableResponse<Array<BaseDailyDefinition.DailyPaintingCollectDto>>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_PAINTING_COLLECT_LIST,
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

    static async baseDailyV2PoetrycollectdetailPost(input: BaseDailyDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseDailyDefinition.DailyPoetryCollectDto> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.DailyPoetryCollectDto> | null | undefined = await post<ApiResponse<BaseDailyDefinition.DailyPoetryCollectDto>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_POETRY_COLLECT_DETAIL,
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

    static async baseDailyV2PoetrycollectlistPost(input: BaseDailyDefinition.PaginableRequest):Promise<PaginableResponse<Array<BaseDailyDefinition.DailyPoetryCollectDto>> | null | undefined> {
      let res: PaginableResponse<Array<BaseDailyDefinition.DailyPoetryCollectDto>> | null | undefined = await post<PaginableResponse<Array<BaseDailyDefinition.DailyPoetryCollectDto>>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_POETRY_COLLECT_LIST,
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

    static async baseDailyV2ScenicspotcollectdetailPost(input: BaseDailyDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseDailyDefinition.DailyScenicSpotCollectDto> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.DailyScenicSpotCollectDto> | null | undefined = await post<ApiResponse<BaseDailyDefinition.DailyScenicSpotCollectDto>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_SCENIC_SPOT_COLLECT_DETAIL,
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

    static async baseDailyV2ScenicspotcollectlistPost(input: BaseDailyDefinition.PaginableRequest):Promise<PaginableResponse<Array<BaseDailyDefinition.DailyScenicSpotCollectDto>> | null | undefined> {
      let res: PaginableResponse<Array<BaseDailyDefinition.DailyScenicSpotCollectDto>> | null | undefined = await post<PaginableResponse<Array<BaseDailyDefinition.DailyScenicSpotCollectDto>>>(
        BaseDailyUrlConstant.BASE_DAILY_V2_SCENIC_SPOT_COLLECT_LIST,
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


  export class CollectController {
    static async baseDailyAddjokecollectPost(input: BaseDailyDefinition.CollectIdInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDailyUrlConstant.BASE_DAILY_ADD_JOKE_COLLECT,
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

    static async baseDailyAddstorycollectPost(input: BaseDailyDefinition.CollectIdInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDailyUrlConstant.BASE_DAILY_ADD_STORY_COLLECT,
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

    static async baseDailyAddtipscollectPost(input: BaseDailyDefinition.CollectIdInput, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDailyUrlConstant.BASE_DAILY_ADD_TIPS_COLLECT,
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

    static async baseDailyDeletejokecollectPost(input: BaseDailyDefinition.CollectIdListInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDailyUrlConstant.BASE_DAILY_DELETE_JOKE_COLLECT,
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

    static async baseDailyDeletestorycollectPost(input: BaseDailyDefinition.CollectIdListInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDailyUrlConstant.BASE_DAILY_DELETE_STORY_COLLECT,
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

    static async baseDailyDeletetipscollectPost(input: BaseDailyDefinition.CollectIdListInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseDailyUrlConstant.BASE_DAILY_DELETE_TIPS_COLLECT,
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

    static async baseDailyJokecollectlistPost(input: BaseDailyDefinition.PaginableRequest, userId: number):Promise<PaginableResponse<Array<BaseDailyDefinition.JokeCollectOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseDailyDefinition.JokeCollectOutput>> | null | undefined = await post<PaginableResponse<Array<BaseDailyDefinition.JokeCollectOutput>>>(
        BaseDailyUrlConstant.BASE_DAILY_JOKE_COLLECT_LIST,
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

    static async baseDailyJokeiscollectedPost(input: BaseDailyDefinition.CollectIdInput, userId: number):Promise<ApiResponse<BaseDailyDefinition.IsCollectOutput> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.IsCollectOutput> | null | undefined = await post<ApiResponse<BaseDailyDefinition.IsCollectOutput>>(
        BaseDailyUrlConstant.BASE_DAILY_JOKE_IS_COLLECTED,
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

    static async baseDailyStorycollectlistPost(input: BaseDailyDefinition.PaginableRequest, userId: number):Promise<PaginableResponse<Array<BaseDailyDefinition.StoryCollectOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseDailyDefinition.StoryCollectOutput>> | null | undefined = await post<PaginableResponse<Array<BaseDailyDefinition.StoryCollectOutput>>>(
        BaseDailyUrlConstant.BASE_DAILY_STORY_COLLECT_LIST,
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

    static async baseDailyStoryiscollectedPost(input: BaseDailyDefinition.CollectIdInput, userId: number):Promise<ApiResponse<BaseDailyDefinition.IsCollectOutput> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.IsCollectOutput> | null | undefined = await post<ApiResponse<BaseDailyDefinition.IsCollectOutput>>(
        BaseDailyUrlConstant.BASE_DAILY_STORY_IS_COLLECTED,
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

    static async baseDailyTipscollectlistPost(input: BaseDailyDefinition.PaginableRequest, userId: number):Promise<PaginableResponse<Array<BaseDailyDefinition.TipsCollectOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseDailyDefinition.TipsCollectOutput>> | null | undefined = await post<PaginableResponse<Array<BaseDailyDefinition.TipsCollectOutput>>>(
        BaseDailyUrlConstant.BASE_DAILY_TIPS_COLLECT_LIST,
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

    static async baseDailyTipsiscollectedPost(input: BaseDailyDefinition.CollectIdInput, userId: number):Promise<ApiResponse<BaseDailyDefinition.IsCollectOutput> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.IsCollectOutput> | null | undefined = await post<ApiResponse<BaseDailyDefinition.IsCollectOutput>>(
        BaseDailyUrlConstant.BASE_DAILY_TIPS_IS_COLLECTED,
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

    static async baseDailyV1DaterangecountPost(input: BaseDailyDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseDailyDefinition.CollectCountDto> | null | undefined> {
      let res: ApiResponse<BaseDailyDefinition.CollectCountDto> | null | undefined = await post<ApiResponse<BaseDailyDefinition.CollectCountDto>>(
        BaseDailyUrlConstant.BASE_DAILY_V1_DATE_RANGE_COUNT,
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
        BaseDailyUrlConstant.CHECKALIVE,
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
}
