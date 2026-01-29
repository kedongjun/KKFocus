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
import { BaseSysDefinition } from './../definition/BaseSysDefinition';
import { BaseSysUrlConstant } from './../constant/BaseSysUrlConstant';
import { AppConfigDefinition } from '../definition/AppConfigDefinition';

export namespace BaseSysOperation {
  export class EveryDayMottoTemplateController {
    static async baseSystemEverydayUMottoUTemplateBatchUInsertPost(input: BaseSysDefinition.EveryDayMottoTemplateBatchInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSysUrlConstant.BASE_SYSTEM_EVERYDAY_MOTTO_TEMPLATE_BATCH_INSERT_URL,
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

    static async baseSystemEverydayUMottoUTemplateGetUNewestPost():Promise<ApiResponse<BaseSysDefinition.EveryDayMottoTemplateNewestDataOutput> | null | undefined> {
      let res: ApiResponse<BaseSysDefinition.EveryDayMottoTemplateNewestDataOutput> | null | undefined = await post<ApiResponse<BaseSysDefinition.EveryDayMottoTemplateNewestDataOutput>>(
        BaseSysUrlConstant.BASE_SYSTEM_EVERYDAY_MOTTO_TEMPLATE_GET_NEWEST_URL,
        {
        },
        {
        },
        {
        },
      );

      return res;
    }

    static async baseSystemEverydayUMottoUTemplateInsertUOrUUpdatePost(input: BaseSysDefinition.EveryDayMottoTemplateInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSysUrlConstant.BASE_SYSTEM_EVERYDAY_MOTTO_TEMPLATE_INSERT_OR_UPDATE_URL,
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

    static async baseSystemEverydayUMottoUTemplateSearchPost(input: BaseSysDefinition.EveryDayMottoTemplateSearchInput):Promise<ApiResponse<Page<BaseSysDefinition.EveryDayMottoTemplateOutput>> | null | undefined> {
      let res: ApiResponse<Page<BaseSysDefinition.EveryDayMottoTemplateOutput>> | null | undefined = await post<ApiResponse<Page<BaseSysDefinition.EveryDayMottoTemplateOutput>>>(
        BaseSysUrlConstant.BASE_SYSTEM_EVERYDAY_MOTTO_TEMPLATE_SEARCH_URL,
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

    static async baseSystemLatestUEverydayUMottoUTemplatePost(input: BaseSysDefinition.LatestEveryDayMottoTemplateInput):Promise<ApiResponse<BaseSysDefinition.EveryDayMottoTemplateOutput> | null | undefined> {
      let res: ApiResponse<BaseSysDefinition.EveryDayMottoTemplateOutput> | null | undefined = await post<ApiResponse<BaseSysDefinition.EveryDayMottoTemplateOutput>>(
        BaseSysUrlConstant.BASE_SYSTEM_LATEST_EVERYDAY_MOTTO_TEMPLATE_URL,
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

    static async baseSystemLatestUEverydayUMottoUTemplateUByUPagePost(input: BaseSysDefinition.LatestEveryDayMottoTemplatePageInput):Promise<PaginableResponse<Array<BaseSysDefinition.EveryDayMottoTemplateOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseSysDefinition.EveryDayMottoTemplateOutput>> | null | undefined = await post<PaginableResponse<Array<BaseSysDefinition.EveryDayMottoTemplateOutput>>>(
        BaseSysUrlConstant.BASE_SYSTEM_LATEST_EVERYDAY_MOTTO_TEMPLATE_BY_PAGE_URL,
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


  export class SysSkinInfoController {
    static async baseSysSkinMInfoPost(dto: BaseSysDefinition.SysSkinInfoInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSysUrlConstant.BASE_SYS_SKIN_INFO_URL,
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

    static async baseSysSkinMInfoMNewPost(dto: BaseSysDefinition.SysSkinNewInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSysUrlConstant.BASE_SYS_SKIN_INFO_NEW_URL,
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
  }


  export class MsgListSpecialDayController {
    static async baseSysGetmsglistspecialdaylistPost(input: BaseSysDefinition.MsgListSpecialDayInput):Promise<RowResponse<Array<BaseSysDefinition.GetOsTeamPushUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseSysDefinition.GetOsTeamPushUsingPOSTRsp>> | null | undefined = await post<RowResponse<Array<BaseSysDefinition.GetOsTeamPushUsingPOSTRsp>>>(
        BaseSysUrlConstant.BASE_SYS_GET_MSG_LIST_SPECIAL_DAY_LIST,
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


  export class SysThemeController {
    static async baseSysGetthemesPost(input: BaseSysDefinition.SysThemeInput):Promise<RowResponse<Array<BaseSysDefinition.GetThemesUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseSysDefinition.GetThemesUsingPOSTRsp>> | null | undefined = await post<RowResponse<Array<BaseSysDefinition.GetThemesUsingPOSTRsp>>>(
        BaseSysUrlConstant.BASE_SYS_GET_THEMES,
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


  export class MsgListTemplateController {
    static async baseSysGetmsglisttemplatePost(input: BaseSysDefinition.MsgListTemplateInput):Promise<ApiResponse<BaseSysDefinition.MsgListTemplateOutput> | null | undefined> {
      let res: ApiResponse<BaseSysDefinition.MsgListTemplateOutput> | null | undefined = await post<ApiResponse<BaseSysDefinition.MsgListTemplateOutput>>(
        BaseSysUrlConstant.BASE_SYS_GET_MSG_LIST_TEMPLATE,
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


  export class MsgListTeamPushController {
    static async baseSysMsgMListMTeamMPushPost(input: BaseSysDefinition.MsgListInput):Promise<RowResponse<Array<BaseSysDefinition.GetOsTeamPushUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseSysDefinition.GetOsTeamPushUsingPOSTRsp>> | null | undefined = await post<RowResponse<Array<BaseSysDefinition.GetOsTeamPushUsingPOSTRsp>>>(
        BaseSysUrlConstant.BASE_SYS_MSG_LIST_TEAM_PUSH_URL,
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


  export class CheckAliveController {
    static async checkaliveGet():Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseSysUrlConstant.CHECKALIVE,
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


  export class SysUserAdviceController {
    static async baseSysV2AdviceAddPost(channelType: string, dto: BaseSysDefinition.SysUserAdviceInputV2, ip: string, userId: number):Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseSysUrlConstant.BASE_SYS_V2_ADVICE_ADD,
        {
        },
        {
        },
        {
            "channel_type": channelType,
            "ip": ip,
            "user_id": userId
        },
        dto
      );

      return res;
    }
  }


  export class SysUserAdviceReplyController {
    static async baseSysAdviceReplyAddorupdatePost(input: BaseSysDefinition.SysUserAdviceReplyInput):Promise<ApiResponse<BaseSysDefinition.SysUserAdviceReplyIdOutput> | null | undefined> {
      let res: ApiResponse<BaseSysDefinition.SysUserAdviceReplyIdOutput> | null | undefined = await post<ApiResponse<BaseSysDefinition.SysUserAdviceReplyIdOutput>>(
        BaseSysUrlConstant.BASE_SYS_ADVICE_REPLY_ADD_OR_UPDATE,
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

    static async baseSysAdviceReplyBatchaddorupdatePost(input: BaseSysDefinition.SysUserAdviceReplyBatchInput):Promise<ApiResponse<BaseSysDefinition.SysUserAdviceReplyBatchIdOutput> | null | undefined> {
      let res: ApiResponse<BaseSysDefinition.SysUserAdviceReplyBatchIdOutput> | null | undefined = await post<ApiResponse<BaseSysDefinition.SysUserAdviceReplyBatchIdOutput>>(
        BaseSysUrlConstant.BASE_SYS_ADVICE_REPLY_BATCH_ADD_OR_UPDATE,
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


  export class SysConfigController {
    static async baseSysAppMConfigPost( dto: BaseSysDefinition.AppConfigInput):Promise<ApiResponse<AppConfigDefinition.AppConfig> | null | undefined> {
      let res: ApiResponse<AppConfigDefinition.AppConfig> | null | undefined = await post<ApiResponse<AppConfigDefinition.AppConfig>>(
        BaseSysUrlConstant.BASE_SYS_APP_CONFIG_URL,
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

    static async baseSysDictPost(dto: BaseSysDefinition.DictInput):Promise<RowResponse<Array<BaseSysDefinition.DictOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSysDefinition.DictOutput>> | null | undefined = await post<RowResponse<Array<BaseSysDefinition.DictOutput>>>(
        BaseSysUrlConstant.BASE_SYS_DICT,
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

    static async baseSysFindMTodoMTextMTipsPost(dto: BaseSysDefinition.TodoTextTipsInput):Promise<RowResponse<Array<BaseSysDefinition.DictOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSysDefinition.DictOutput>> | null | undefined = await post<RowResponse<Array<BaseSysDefinition.DictOutput>>>(
        BaseSysUrlConstant.BASE_SYS_FIND_TODO_TEXT_TIPS_URL,
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

    static async baseSysRandomMDictPost(input: BaseSysDefinition.RandomDictInput):Promise<ApiResponse<BaseSysDefinition.RandomDictOutput> | null | undefined> {
      let res: ApiResponse<BaseSysDefinition.RandomDictOutput> | null | undefined = await post<ApiResponse<BaseSysDefinition.RandomDictOutput>>(
        BaseSysUrlConstant.BASE_SYS_RANDOM_DICT_URL,
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

    static async baseSysReadconfigPost(dto: BaseSysDefinition.SysExcelConfigInput):Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseSysUrlConstant.BASE_SYS_READ_CONFIG,
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

    static async baseSysSysMConfigPost(dto: BaseSysDefinition.SysConfigInput):Promise<RowResponse<Array<BaseSysDefinition.SysConfigCache>> | null | undefined> {
      let res: RowResponse<Array<BaseSysDefinition.SysConfigCache>> | null | undefined = await post<RowResponse<Array<BaseSysDefinition.SysConfigCache>>>(
        BaseSysUrlConstant.BASE_SYS_SYS_CONFIG_URL,
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
  }


  export class SysClassifyController {
    static async baseSysClassifyPost(channelType: string, dto: BaseSysDefinition.SysClassifyInput):Promise<RowResponse<Array<BaseSysDefinition.SysClassifyOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSysDefinition.SysClassifyOutput>> | null | undefined = await post<RowResponse<Array<BaseSysDefinition.SysClassifyOutput>>>(
        BaseSysUrlConstant.BASE_SYS_CLASSIFY,
        {
        },
        {
        },
        {
            "channel_type": channelType,
        },
        dto
      );

      return res;
    }

    static async baseSysClassifyMInfoPost(dto: BaseSysDefinition.SysClassifyInfoInput):Promise<RowResponse<Array<Map<string, object>>> | null | undefined> {
      let res: RowResponse<Array<Map<string, object>>> | null | undefined = await post<RowResponse<Array<Map<string, object>>>>(
        BaseSysUrlConstant.BASE_SYS_CLASSIFY_INFO_URL,
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

    static async baseSysMultiMClassifyPost(channelType: string, dto: BaseSysDefinition.SysClassifyMultiInput):Promise<RowResponse<Array<BaseSysDefinition.SysClassifyOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSysDefinition.SysClassifyOutput>> | null | undefined = await post<RowResponse<Array<BaseSysDefinition.SysClassifyOutput>>>(
        BaseSysUrlConstant.BASE_SYS_MULTI_CLASSIFY_URL,
        {
        },
        {
        },
        {
            "channel_type": channelType,
        },
        dto
      );

      return res;
    }
  }


  export class MsgListDailyCareController {
    static async baseSysGetmsglistdailycarelistPost(input: BaseSysDefinition.MsgListDailyCareInput):Promise<RowResponse<Array<BaseSysDefinition.GetOsTeamPushUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseSysDefinition.GetOsTeamPushUsingPOSTRsp>> | null | undefined = await post<RowResponse<Array<BaseSysDefinition.GetOsTeamPushUsingPOSTRsp>>>(
        BaseSysUrlConstant.BASE_SYS_GET_MSG_LIST_DAILY_CARE_LIST,
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


  export class SysTemplateThemeController {
    static async baseSysTemplateMThemePost(dto: BaseSysDefinition.SysTemplateThemeInput):Promise<RowResponse<Array<BaseSysDefinition.SysTemplateThemeOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseSysDefinition.SysTemplateThemeOutput>> | null | undefined = await post<RowResponse<Array<BaseSysDefinition.SysTemplateThemeOutput>>>(
        BaseSysUrlConstant.BASE_SYS_TEMPLATE_THEME_URL,
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
  }
}
