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
import { BaseEncyclopediasDefinition } from './../definition/BaseEncyclopediasDefinition';
import { BaseEncyclopediasUrlConstant } from './../constant/BaseEncyclopediasUrlConstant';

export namespace BaseEncyclopediasOperation {
  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseEncyclopediasUrlConstant.CHECKALIVE,
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


  export class UserEncyclopediasControllerV2 {
    static async baseEncyclopediasV1SortcommentPost(input: BaseEncyclopediasDefinition.CommentSortInput, userId: number):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V1_SORT_COMMENT,
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

    static async baseEncyclopediasV1UpdatecommentsortPost(input: BaseEncyclopediasDefinition.UpdateCommentSortInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V1_UPDATE_COMMENT_SORT,
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

    static async baseEncyclopediasV2AdduserencyclopediasPost(input: BaseEncyclopediasDefinition.AddUserEncyclopediasInput):Promise<ApiResponse<BaseEncyclopediasDefinition.UserEncyclopediasOutput> | null | undefined> {
      let res: ApiResponse<BaseEncyclopediasDefinition.UserEncyclopediasOutput> | null | undefined = await post<ApiResponse<BaseEncyclopediasDefinition.UserEncyclopediasOutput>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V2_ADD_USER_ENCYCLOPEDIAS,
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

    static async baseEncyclopediasV2DeluserencyclopediasPost(input: BaseEncyclopediasDefinition.DelUserEncyclopediasInput):Promise<ApiResponse<void> | null | undefined> {
      let res: ApiResponse<void> | null | undefined = await post<ApiResponse<void>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V2_DEL_USER_ENCYCLOPEDIAS,
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

    static async baseEncyclopediasV2GetuserencyclopediaslistPost(input: BaseEncyclopediasDefinition.GetUserEncyclopediasListIntput):Promise<ApiResponse<RowData<Array<BaseEncyclopediasDefinition.UserEncyclopediasOutput>>> | null | undefined> {
      let res: ApiResponse<RowData<Array<BaseEncyclopediasDefinition.UserEncyclopediasOutput>>> | null | undefined = await post<ApiResponse<RowData<Array<BaseEncyclopediasDefinition.UserEncyclopediasOutput>>>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V2_GET_USER_ENCYCLOPEDIAS_LIST,
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

    static async baseEncyclopediasV2UpdateuserencyclopediasPost(input: BaseEncyclopediasDefinition.UpdateUserEncyclopediasInput):Promise<ApiResponse<BaseEncyclopediasDefinition.UserEncyclopediasOutput> | null | undefined> {
      let res: ApiResponse<BaseEncyclopediasDefinition.UserEncyclopediasOutput> | null | undefined = await post<ApiResponse<BaseEncyclopediasDefinition.UserEncyclopediasOutput>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V2_UPDATE_USER_ENCYCLOPEDIAS,
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

    static async baseEncyclopediasV4GetuserallencyclopediasPost(input: BaseEncyclopediasDefinition.GetUserAllEncyclopediasIntput):Promise<ApiResponse<RowData<Array<BaseEncyclopediasDefinition.UserAllEncyclopediasOutput>>> | null | undefined> {
      let res: ApiResponse<RowData<Array<BaseEncyclopediasDefinition.UserAllEncyclopediasOutput>>> | null | undefined = await post<ApiResponse<RowData<Array<BaseEncyclopediasDefinition.UserAllEncyclopediasOutput>>>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V4_GET_USER_ALL_ENCYCLOPEDIAS,
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


  export class UserEncyclopediasController {
    static async baseEncyclopediasV1AdduserencyclopediasPost(input: BaseEncyclopediasDefinition.AddUserEncyclopediasInput, ip: string, userId: number):Promise<ApiResponse<BaseEncyclopediasDefinition.UserEncyclopediasOutput> | null | undefined> {
      let res: ApiResponse<BaseEncyclopediasDefinition.UserEncyclopediasOutput> | null | undefined = await post<ApiResponse<BaseEncyclopediasDefinition.UserEncyclopediasOutput>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V1_ADD_USER_ENCYCLOPEDIAS,
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

    static async baseEncyclopediasV1DeluserencyclopediasPost(input: BaseEncyclopediasDefinition.DelUserEncyclopediasInput, userId: number):Promise<ApiResponse<void> | null | undefined> {
      let res: ApiResponse<void> | null | undefined = await post<ApiResponse<void>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V1_DEL_USER_ENCYCLOPEDIAS,
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

    static async baseEncyclopediasV1GetjbxxPost(userId: number):Promise<ApiResponse<BaseEncyclopediasDefinition.JbxxOutput> | null | undefined> {
      let res: ApiResponse<BaseEncyclopediasDefinition.JbxxOutput> | null | undefined = await post<ApiResponse<BaseEncyclopediasDefinition.JbxxOutput>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V1_GET_JBXX,
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

    static async baseEncyclopediasV1GetuserallencyclopediasPost(input: BaseEncyclopediasDefinition.GetUserAllEncyclopediasIntput):Promise<RowResponse<Array<BaseEncyclopediasDefinition.UserAllEncyclopediasOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseEncyclopediasDefinition.UserAllEncyclopediasOutput>> | null | undefined = await post<RowResponse<Array<BaseEncyclopediasDefinition.UserAllEncyclopediasOutput>>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V1_GET_USER_ALL_ENCYCLOPEDIAS,
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

    static async baseEncyclopediasV1GetuserencyclopediaslistPost(input: BaseEncyclopediasDefinition.GetUserEncyclopediasListIntput, userId: number):Promise<RowResponse<Array<BaseEncyclopediasDefinition.UserEncyclopediasOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseEncyclopediasDefinition.UserEncyclopediasOutput>> | null | undefined = await post<RowResponse<Array<BaseEncyclopediasDefinition.UserEncyclopediasOutput>>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V1_GET_USER_ENCYCLOPEDIAS_LIST,
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

    static async baseEncyclopediasV1GetuserlifetrackPost(input: BaseEncyclopediasDefinition.UserLifeTrackInput):Promise<ApiResponse<RowData<Array<BaseEncyclopediasDefinition.UserLifeTrackOutput>>> | null | undefined> {
      let res: ApiResponse<RowData<Array<BaseEncyclopediasDefinition.UserLifeTrackOutput>>> | null | undefined = await post<ApiResponse<RowData<Array<BaseEncyclopediasDefinition.UserLifeTrackOutput>>>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V1_GET_USER_LIFE_TRACK,
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

    static async baseEncyclopediasV1SavepersonalcommentPost(input: BaseEncyclopediasDefinition.PersonalCommentInput):Promise<ApiResponse<void> | null | undefined> {
      let res: ApiResponse<void> | null | undefined = await post<ApiResponse<void>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V1_SAVE_PERSONAL_COMMENT,
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

    static async baseEncyclopediasV1UpdateuserencyclopediasPost(input: BaseEncyclopediasDefinition.UpdateUserEncyclopediasInput):Promise<ApiResponse<BaseEncyclopediasDefinition.UserEncyclopediasOutput> | null | undefined> {
      let res: ApiResponse<BaseEncyclopediasDefinition.UserEncyclopediasOutput> | null | undefined = await post<ApiResponse<BaseEncyclopediasDefinition.UserEncyclopediasOutput>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V1_UPDATE_USER_ENCYCLOPEDIAS,
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

    static async baseEncyclopediasV2GetuserallencyclopediasPost(input: BaseEncyclopediasDefinition.GetUserAllEncyclopediasIntput, userId: number):Promise<RowResponse<Array<BaseEncyclopediasDefinition.UserAllEncyclopediasOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseEncyclopediasDefinition.UserAllEncyclopediasOutput>> | null | undefined = await post<RowResponse<Array<BaseEncyclopediasDefinition.UserAllEncyclopediasOutput>>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V2_GET_USER_ALL_ENCYCLOPEDIAS,
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

    static async baseEncyclopediasV3GetuserallencyclopediasPost(input: BaseEncyclopediasDefinition.GetUserAllEncyclopediasIntput, userId: number):Promise<RowResponse<Array<BaseEncyclopediasDefinition.UserAllEncyclopediasOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseEncyclopediasDefinition.UserAllEncyclopediasOutput>> | null | undefined = await post<RowResponse<Array<BaseEncyclopediasDefinition.UserAllEncyclopediasOutput>>>(
        BaseEncyclopediasUrlConstant.BASE_ENCYCLOPEDIAS_V3_GET_USER_ALL_ENCYCLOPEDIAS,
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
