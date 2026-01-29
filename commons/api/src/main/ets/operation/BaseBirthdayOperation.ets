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
import { BaseBirthdayDefinition } from './../definition/BaseBirthdayDefinition';
import { BaseBirthdayUrlConstant } from './../constant/BaseBirthdayUrlConstant';

export namespace BaseBirthdayOperation {
  export class BirthdayRelationshipController {
    static async baseBirthdayRelationshipV1AddPost(input: BaseBirthdayDefinition.BirthdayRelationshipAddInput):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayRelationshipDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayRelationshipDetailOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayRelationshipDetailOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_RELATIONSHIP_V1_ADD,
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

    static async baseBirthdayRelationshipV1DeletePost(input: BaseBirthdayDefinition.BirthdayRelationshipDeleteInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_RELATIONSHIP_V1_DELETE,
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

    static async baseBirthdayRelationshipV1DeleteallPost(input: BaseBirthdayDefinition.BirthdayRelationshipDeleteAllInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_RELATIONSHIP_V1_DELETE_ALL,
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

    static async baseBirthdayRelationshipV1QueryallPost():Promise<RowResponse<RowData<BaseBirthdayDefinition.BirthdayRelationshipDetailOutput[]>> | null | undefined> {
      let res: RowResponse<RowData<BaseBirthdayDefinition.BirthdayRelationshipDetailOutput[]>> | null | undefined = await post<RowResponse<RowData<BaseBirthdayDefinition.BirthdayRelationshipDetailOutput[]>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_RELATIONSHIP_V1_QUERY_ALL,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseBirthdayRelationshipV1SelectbyidPost(input: BaseBirthdayDefinition.BirthdayRelationshipIdInput, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayRelationshipDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayRelationshipDetailOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayRelationshipDetailOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_RELATIONSHIP_V1_SELECT_BY_ID,
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

    static async baseBirthdayRelationshipV1SortPost(input: BaseBirthdayDefinition.BirthdayRelationshipSortInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_RELATIONSHIP_V1_SORT,
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

    static async baseBirthdayRelationshipV1UpdatePost(input: BaseBirthdayDefinition.BirthdayRelationshipUpdateInput, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayRelationshipDetailOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayRelationshipDetailOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayRelationshipDetailOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_RELATIONSHIP_V1_UPDATE,
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


  export class BirthdayControllerV4 {
    static async baseBirthdayV4AddPost(acceptLanguage: string, input: BaseBirthdayDefinition.BirthdayAddV4Input, ip: string, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayOutputV4> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayOutputV4> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayOutputV4>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V4_ADD,
        {
        },
        {
        },
        {
            "Accept-Language": acceptLanguage,
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBirthdayV4DelbirthdaybyidPost(input: BaseBirthdayDefinition.IdRequest, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V4_DEL_BIRTHDAY_BY_ID,
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

    static async baseBirthdayV4FuzzyquerybirthdaybynicknamePost(acceptLanguage: string, input: BaseBirthdayDefinition.BirthdayNickNameInput, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV4>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV4>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV4>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V4_FUZZY_QUERY_BIRTHDAY_BY_NICK_NAME,
        {
        },
        {
        },
        {
            "Accept-Language": acceptLanguage,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBirthdayV4GetbirthdaybyidPost(input: BaseBirthdayDefinition.IdRequest):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayOutputV4> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayOutputV4> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayOutputV4>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V4_GET_BIRTHDAY_BY_ID,
        {
        },
        {
        },
        {
            // "Accept-Language": acceptLanguage,
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBirthdayV4GetearthdataPost(acceptLanguage: string, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayEarthOutputV4> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayEarthOutputV4> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayEarthOutputV4>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V4_GET_EARTH_DATA,
        {
        },
        {
        },
        {
            "Accept-Language": acceptLanguage,
            "user_id": userId
        },
      );

      return res;
    }

    static async baseBirthdayV4GetuserallbirthdayPost(acceptLanguage: string, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV4>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV4>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV4>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V4_GET_USER_ALL_BIRTHDAY,
        {
        },
        {
        },
        {
            "Accept-Language": acceptLanguage,
            "user_id": userId
        },
      );

      return res;
    }

    static async baseBirthdayV4TodoviewlistPost(input: BaseBirthdayDefinition.BirthdayTodoViewInput, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayTodoViewListOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V4_TODO_VIEW_LIST,
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

    static async baseBirthdayV4UpdatePost(acceptLanguage: string, channelType: string, input: BaseBirthdayDefinition.BirthdayAddV4Input, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayOutputV4> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayOutputV4> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayOutputV4>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V4_UPDATE,
        {
        },
        {
        },
        {
            "Accept-Language": acceptLanguage,
            "channel_type": channelType,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBirthdayV4UpdatebackgroundPost(input: BaseBirthdayDefinition.BackgroundInput, userId?: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V4_UPDATE_BACKGROUND,
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

    static async baseBirthdayV5AddPost(acceptLanguage: string, input: BaseBirthdayDefinition.BirthdayAddV4Input, ip: string, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayOutputV4> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayOutputV4> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayOutputV4>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V5_ADD,
        {
        },
        {
        },
        {
            "Accept-Language": acceptLanguage,
            "ip": ip,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBirthdayV5GetbirthdaybyidPost(acceptLanguage: string, input: BaseBirthdayDefinition.IdRequest, userId?: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayOutputV4> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayOutputV4> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayOutputV4>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V5_GET_BIRTHDAY_BY_ID,
        {
        },
        {
        },
        {
            "Accept-Language": acceptLanguage,
            // "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBirthdayV5GetuserallbirthdayPost(acceptLanguage: string, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV4>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV4>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV4>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V5_GET_USER_ALL_BIRTHDAY,
        {
        },
        {
        },
        {
            "Accept-Language": acceptLanguage,
            "user_id": userId
        },
      );

      return res;
    }

    static async nativeBaseBirthdayV4BatchupdateremindtimePost(input: BaseBirthdayDefinition.BatchUpdateRemindTimeInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBirthdayUrlConstant.NATIVE_BASE_BIRTHDAY_V4_BATCH_UPDATE_REMIND_TIME,
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
        BaseBirthdayUrlConstant.CHECKALIVE,
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


  export class BirthdayV3Controller {
    static async baseBirthdayV3BatchaddPost(input: BaseBirthdayDefinition.BatchAddUsingPOSTV2RequestBody, ip: string, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.BirthdayInfoOutputV3>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.BirthdayInfoOutputV3>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.BirthdayInfoOutputV3>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V3_BATCHADD,
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

    static async baseBirthdayV3GetUEarthUDataPost(userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayEarthOutputV3> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayEarthOutputV3> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayEarthOutputV3>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V3_GET_EARTH_DATA_URL,
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

    static async baseBirthdayV3GetlistbytypePost(birthdayListInput: BaseBirthdayDefinition.BirthdayListInputV3, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.BirthdayInfoOutputV3>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.BirthdayInfoOutputV3>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.BirthdayInfoOutputV3>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V3_GETLISTBYTYPE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        birthdayListInput
      );

      return res;
    }

    static async baseBirthdayV3InfoPost(input: BaseBirthdayDefinition.BirthdayIdInput, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayInfoOutputV3> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayInfoOutputV3> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayInfoOutputV3>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V3_INFO,
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

    static async baseBirthdayV3UpdatePost(channelType: string, input: BaseBirthdayDefinition.UpdateUsingPOST_2RequestBody, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayInfoOutputV3> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayInfoOutputV3> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayInfoOutputV3>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V3_UPDATE,
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


  export class BirthdayControllerV6 {
    static async baseBirthdayV1BatchaddPost(inputs: Array<BaseBirthdayDefinition.BirthdayAddV6Input>, ip: string, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V1_BATCH_ADD,
        {
        },
        {
        },
        {
            "ip": ip,
            "user_id": userId
        },
        inputs
      );

      return res;
    }

    static async baseBirthdayV1DaterangecountPost(input: BaseBirthdayDefinition.DateRangeRequest, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayCountDto> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayCountDto> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayCountDto>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V1_DATE_RANGE_COUNT,
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

    static async baseBirthdayV1GetbirthdayguidetemplatePost(acceptLanguage: string, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV6>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV6>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV6>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V1_GET_BIRTHDAY_GUIDE_TEMPLATE,
        {
        },
        {
        },
        {
            "Accept-Language": acceptLanguage,
            "user_id": userId
        },
      );

      return res;
    }

    static async baseBirthdayV1SearchbytitlePost(input: BaseBirthdayDefinition.KeywordRequest, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV6>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV6>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV6>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V1_SEARCH_BY_TITLE,
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

    static async baseBirthdayV1UpdatetimestylePost(input: BaseBirthdayDefinition.UpdateTimeStyleInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V1_UPDATE_TIME_STYLE,
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

    static async baseBirthdayV6AddPost(input: BaseBirthdayDefinition.BirthdayAddV6Input):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayOutputV6> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayOutputV6> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayOutputV6>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V6_ADD,
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

    static async baseBirthdayV6FuzzyquerybirthdaybynicknamePost(acceptLanguage: string, input: BaseBirthdayDefinition.BirthdayNickNameInput, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV6>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV6>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV6>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V6_FUZZY_QUERY_BIRTHDAY_BY_NICK_NAME,
        {
        },
        {
        },
        {
            "Accept-Language": acceptLanguage,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBirthdayV6GetbirthdaybyidPost(acceptLanguage: string, input: BaseBirthdayDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayOutputV6> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayOutputV6> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayOutputV6>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V6_GET_BIRTHDAY_BY_ID,
        {
        },
        {
        },
        {
            "Accept-Language": acceptLanguage,
            "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseBirthdayV6GetcountPost(userId: number):Promise<ApiResponse<BaseBirthdayDefinition.CountResponse> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.CountResponse> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.CountResponse>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V6_GET_COUNT,
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

    static async baseBirthdayV6GetearthdataPost():Promise<ApiResponse<BaseBirthdayDefinition.BirthdayEarthOutputV6> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayEarthOutputV6> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayEarthOutputV6>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V6_GET_EARTH_DATA,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseBirthdayV6GetuserallbirthdayPost(acceptLanguage: string, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV6>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV6>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.BirthdayOutputV6>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V6_GET_USER_ALL_BIRTHDAY,
        {
        },
        {
        },
        {
            "Accept-Language": acceptLanguage,
            "user_id": userId
        },
      );

      return res;
    }

    static async baseBirthdayV6UpdatePost(input: BaseBirthdayDefinition.BirthdayAddV6Input):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayOutputV6> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayOutputV6> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayOutputV6>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V6_UPDATE,
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


  export class BirthdayController {
    static async baseBirthdayAddorupdatePost(channelType: string, input: BaseBirthdayDefinition.BirthDayInfomation, ip: string, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_ADD_OR_UPDATE,
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

    static async baseBirthdayBatchaddPost(input: BaseBirthdayDefinition.BatchAddUsingPOSTRequestBody, ip: string, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.BirthdayInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.BirthdayInfoOutput>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.BirthdayInfoOutput>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_BATCHADD,
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

    static async baseBirthdayBlessingupdatePost(input: BaseBirthdayDefinition.BirthdayLogUpdateInput, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayTemplateOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayTemplateOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayTemplateOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_BLESSINGUPDATE,
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

    static async baseBirthdayDeletePost(input: BaseBirthdayDefinition.BirthdayIdInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_DELETE,
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

    static async baseBirthdayDeletebaddataPost(input: BaseBirthdayDefinition.BirthdayDeleteBadDataInput):Promise<RowResponse<Array<BaseBirthdayDefinition.BirthdayRelationOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.BirthdayRelationOutput>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.BirthdayRelationOutput>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_DELETE_BAD_DATA,
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

    static async baseBirthdayFindblessingwordstempsPost(input: BaseBirthdayDefinition.BlessingWordsTemplatesInput):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayTemplateBlessOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayTemplateBlessOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayTemplateBlessOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_FINDBLESSINGWORDSTEMPS,
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

    static async baseBirthdayFindcardtempsPost(input?: BaseBirthdayDefinition.BirthdayGetTemplateInput):Promise<RowResponse<Array<BaseBirthdayDefinition.BirthdayTemplateOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.BirthdayTemplateOutput>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.BirthdayTemplateOutput>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_FINDCARDTEMPS,
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

    static async baseBirthdayFinishPost(input: BaseBirthdayDefinition.BirthdayFinishedInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_FINISH,
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

    static async baseBirthdayGetbirthdayPost(input: BaseBirthdayDefinition.BirthdayIdInput, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_GET_BIRTHDAY,
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

    static async baseBirthdayGetbirthdaylistPost(userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayListOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayListOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayListOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_GET_BIRTHDAY_LIST,
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

    static async baseBirthdayGetbirthdayrelationlistPost(input: BaseBirthdayDefinition.BirthdayRelationInput, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.BirthdayRelationOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.BirthdayRelationOutput>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.BirthdayRelationOutput>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_GET_BIRTHDAY_RELATION_LIST,
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

    static async baseBirthdayGetUEarthUDataPost(userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayEarthOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayEarthOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayEarthOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_GET_EARTH_DATA_URL,
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

    static async baseBirthdayGetUWebUBirthdayUCardPost(birthdayCardWebInput: BaseBirthdayDefinition.GetWebBirthDayCardUsingPOSTRequestBody):Promise<ApiResponse<BaseBirthdayDefinition.GetWebBirthDayCardUsingPOSTRequestBody> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.GetWebBirthDayCardUsingPOSTRequestBody> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.GetWebBirthDayCardUsingPOSTRequestBody>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_GET_WEB_BIRTHDAY_CARD_URL,
        {
        },
        {
        },
        {
        },
        birthdayCardWebInput
      );

      return res;
    }

    static async baseBirthdayGetlistbytypePost(birthdayListInput: BaseBirthdayDefinition.BirthdayListInput, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.BirthdayInfoOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.BirthdayInfoOutput>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.BirthdayInfoOutput>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_GETLISTBYTYPE,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        birthdayListInput
      );

      return res;
    }

    static async baseBirthdayGetremindelementsPost(input: BaseBirthdayDefinition.BirthdayTodoViewInput, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayTodoViewListOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_GETREMINDELEMENTS,
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

    static async baseBirthdayInfoPost(input: BaseBirthdayDefinition.BirthdayIdInput, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayInfoOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayInfoOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_INFO,
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

    static async baseBirthdayLogaddPost(channelType: string, input: BaseBirthdayDefinition.BirthdayLogAddInput, ip: string, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayTemplateOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayTemplateOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayTemplateOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_LOGADD,
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

    static async baseBirthdaySyncUDataPost(syncDataInput: BaseBirthdayDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.SyncDataAppletResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.SyncDataAppletResponse>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.SyncDataAppletResponse>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_SYNC_DATA_URL,
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

    static async baseBirthdaySyncUFinishUDataPost(syncDataInput: BaseBirthdayDefinition.SyncDataRequest, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.SyncDataAppletFinishResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.SyncDataAppletFinishResponse>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.SyncDataAppletFinishResponse>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_SYNC_FINISH_DATA_URL,
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

    static async baseBirthdayTodoUViewUListPost(input: BaseBirthdayDefinition.BirthdayTodoViewInput, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayTodoViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayTodoViewListOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayTodoViewListOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_TODO_VIEW_LIST_URL,
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

    static async baseBirthdayUpdatePost(channelType: string, input: BaseBirthdayDefinition.BirthDayInfomation, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayInfoOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayInfoOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayInfoOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_UPDATE,
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

    static async baseBirthdayV1GetbirthdaycountPost(userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayCountOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayCountOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayCountOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V1_GET_BIRTHDAY_COUNT,
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

    static async baseBirthdayV1GetbirthdayidPost(input: BaseBirthdayDefinition.IdRequest, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.IdResponse> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.IdResponse> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.IdResponse>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V1_GET_BIRTHDAY_ID,
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

    static async baseBirthdayV1ImportdataPost(data: BaseBirthdayDefinition.BirthdayData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V1_IMPORT_DATA,
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

    static async baseBirthdayV1SelectMByMIdsPost(ids: BaseBirthdayDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.AppletHistoryResponse>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V1_SELECT_BY_IDS_URL,
        {
        },
        {
        },
        {
            "user_id": userId
        },
        ids
      );

      return res;
    }

    static async baseBirthdayV1ShortcutappletPost(input: BaseBirthdayDefinition.PaginableRequest, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.BirthdayShortcutAppletOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.BirthdayShortcutAppletOutput>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.BirthdayShortcutAppletOutput>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V1_SHORTCUT_APPLET,
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

    static async baseBirthdayV2FindcardtempsPost():Promise<RowResponse<RowData<BaseBirthdayDefinition.BirthdayTemplateOutput[]>> | null | undefined> {
      let res: RowResponse<RowData<BaseBirthdayDefinition.BirthdayTemplateOutput[]>> | null | undefined = await post<RowResponse<RowData<BaseBirthdayDefinition.BirthdayTemplateOutput[]>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V2_FINDCARDTEMPS,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseBirthdayV2GetapplethistoryPost(idsRequest: BaseBirthdayDefinition.IdsRequest, userId: number):Promise<RowResponse<Array<BaseBirthdayDefinition.AppletHistoryResponse>> | null | undefined> {
      let res: RowResponse<Array<BaseBirthdayDefinition.AppletHistoryResponse>> | null | undefined = await post<RowResponse<Array<BaseBirthdayDefinition.AppletHistoryResponse>>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V2_GET_APPLET_HISTORY,
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

    static async baseBirthdayV2ImportdataPost(data: BaseBirthdayDefinition.BirthdayData, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V2_IMPORT_DATA,
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

    static async baseBirthdayV2ViewReciprocalPost(input: BaseBirthdayDefinition.ReciprocalViewRequest, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayReciprocalViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayReciprocalViewListOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayReciprocalViewListOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_V2_VIEW_RECIPROCAL,
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

    static async baseBirthdayViewReciprocalPost(input: BaseBirthdayDefinition.PaginableRequest, userId: number):Promise<ApiResponse<BaseBirthdayDefinition.BirthdayReciprocalViewListOutput> | null | undefined> {
      let res: ApiResponse<BaseBirthdayDefinition.BirthdayReciprocalViewListOutput> | null | undefined = await post<ApiResponse<BaseBirthdayDefinition.BirthdayReciprocalViewListOutput>>(
        BaseBirthdayUrlConstant.BASE_BIRTHDAY_VIEW_RECIPROCAL,
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
