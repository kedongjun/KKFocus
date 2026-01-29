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
import { BaseManageDefinition } from './../definition/BaseManageDefinition';
import { BaseManageUrlConstant } from './../constant/BaseManageUrlConstant';

export namespace BaseManageOperation {
  export class AppletController {
    static async baseManageV1AppletCheckmyappletidsPost(input: BaseManageDefinition.AppletIdsRequest,
      userId: number): Promise<BaseManageDefinition.IdsResponse | null | undefined> {
      let res: BaseManageDefinition.IdsResponse | null | undefined = await post<BaseManageDefinition.IdsResponse>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_CHECK_MY_APPLET_IDS,
        {},
        {},
        {
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseManageV1AppletCheckmyappletsubidsPost(input: BaseManageDefinition.AppletIdsRequest,
      userId: number): Promise<BaseManageDefinition.IdsResponse | null | undefined> {
      let res: BaseManageDefinition.IdsResponse | null | undefined = await post<BaseManageDefinition.IdsResponse>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_CHECK_MY_APPLET_SUB_IDS,
        {},
        {},
        {
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseManageV1AppletClickPost(input: BaseManageDefinition.AppletIdAndDataVersionRequest, ip: string,
      userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_CLICK,
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

    static async baseManageV1AppletFirstenterPost(input: BaseManageDefinition.AppletFirstEnterInput, ip: string,
      userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_FIRST_ENTER,
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

    static async baseManageV1AppletGetappletbyidsPost(input: BaseManageDefinition.AppletIdsRequest,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_GET_APPLET_BY_IDS,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseManageV1AppletGetappletbysubidsPost(input: BaseManageDefinition.AppletIdsRequest,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_GET_APPLET_BY_SUB_IDS,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseManageV1AppletGetappletfirstenterstatusPost(input: BaseManageDefinition.AppletFirstEnterInput,
      userId: number): Promise<ApiResponse<BaseManageDefinition.GetAppletFirstEnterStatusUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.GetAppletFirstEnterStatusUsingPOSTRsp> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.GetAppletFirstEnterStatusUsingPOSTRsp>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_GET_APPLET_FIRST_ENTER_STATUS,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseManageV1AppletGetmyappletswitchPost(input: BaseManageDefinition.DataVersionInput): Promise<RowResponse<Array<BaseManageDefinition.GetMyAppletSwitchUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.GetMyAppletSwitchUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.GetMyAppletSwitchUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_GET_MY_APPLET_SWITCH,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseManageV1AppletPreviewPost(input: BaseManageDefinition.AppletIdsRequest, ip: string,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.PreviewUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.PreviewUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.PreviewUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_PREVIEW,
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

    static async baseManageV1AppletQueryallPost(input: BaseManageDefinition.DataVersionInput,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_QUERY_ALL,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseManageV1AppletQueryappletwithstatePost(input: BaseManageDefinition.QueryAppletWithStateInput,
      ip: string,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.QueryAppletWithStateUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.QueryAppletWithStateUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.QueryAppletWithStateUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_QUERY_APPLET_WITH_STATE,
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

    static async baseManageV1AppletQuerymyappletPost(input: BaseManageDefinition.DataVersionInput, ip: string,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_QUERY_MY_APPLET,
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

    static async baseManageV1AppletQuerymyappletbyclickPost(input: BaseManageDefinition.DataVersionInput, ip: string,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_QUERY_MY_APPLET_BY_CLICK,
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

    static async baseManageV1AppletSortPost(input: BaseManageDefinition.AppletIdsRequest): Promise<BaseManageDefinition.IdsResponse | null | undefined> {
      let res: BaseManageDefinition.IdsResponse | null | undefined = await post<BaseManageDefinition.IdsResponse>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_SORT,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseManageV1AppletSubscribePost(input: BaseManageDefinition.AppletIdsAndPositionRequest, ip: string,
      userId: number): Promise<BaseManageDefinition.IdsResponse | null | undefined> {
      let res: BaseManageDefinition.IdsResponse | null | undefined = await post<BaseManageDefinition.IdsResponse>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_SUBSCRIBE,
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

    static async baseManageV1AppletSubscribeincrementPost(input: BaseManageDefinition.AppletIdsRequest, ip: string,
      userId: number): Promise<BaseManageDefinition.IdsResponse | null | undefined> {
      let res: BaseManageDefinition.IdsResponse | null | undefined = await post<BaseManageDefinition.IdsResponse>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_SUBSCRIBE_INCREMENT,
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

    static async baseManageV1AppletUnsubscribePost(input: BaseManageDefinition.AppletIdsRequest): Promise<BaseManageDefinition.IdsResponse | null | undefined> {
      let res: BaseManageDefinition.IdsResponse | null | undefined = await post<BaseManageDefinition.IdsResponse>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_UNSUBSCRIBE,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseManageV1TabListPost(input: BaseManageDefinition.DataVersionInput): Promise<ApiResponse<BaseManageDefinition.QueryTabListUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.QueryTabListUsingPOSTRsp> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.QueryTabListUsingPOSTRsp>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_TAB_LIST,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseManageV1Top5Post(input: BaseManageDefinition.DataVersionInput,
      userId: number): Promise<ApiResponse<BaseManageDefinition.AppletCountDto> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.AppletCountDto> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.AppletCountDto>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_TOP5,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseManageV2AppletNewusersubscribePost(input: BaseManageDefinition.NewUserSubscribeRequest, ip: string,
      userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V2_APPLET_NEW_USER_SUBSCRIBE,
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

    static async baseManageV2AppletQuerymyappletPost(input: BaseManageDefinition.DataVersionInput, ip: string,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_MANAGE_V2_APPLET_QUERY_MY_APPLET,
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


  export class SpecialSkinImgController {
    static async baseManageV1SpecialSkinImgListPost(input: BaseManageDefinition.SpecialSkinImgInput): Promise<ApiResponse<BaseManageDefinition.SpecialSkinImgListOutput> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.SpecialSkinImgListOutput> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.SpecialSkinImgListOutput>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_SPECIAL_SKIN_IMG_LIST,
          {},
          {},
          {},
          input
        );

      return res;
    }
  }


  export class ViewDisplayController {
    static async baseManageV1ViewdisplayGetbyappletidPost(input: BaseManageDefinition.ViewDisplayByAppletIdUsingPOSTRequestBody,
      ip: string, userId: number): Promise<ApiResponse<BaseManageDefinition.ViewDisplayOutput> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.ViewDisplayOutput> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.ViewDisplayOutput>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_VIEW_DISPLAY_GET_BY_APPLET_ID,
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

    static async baseManageV1ViewdisplayListPost(input: BaseManageDefinition.ViewTypeInput, ip: string,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.ViewDisplayOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.ViewDisplayOutput>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.ViewDisplayOutput>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_VIEW_DISPLAY_LIST,
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

    static async baseManageV1ViewdisplayModifyswitchPost(input: BaseManageDefinition.ViewDisplayModifySwitchInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_VIEW_DISPLAY_MODIFY_SWITCH,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseManageV2ViewdisplayListPost(input: BaseManageDefinition.ViewTypeInput): Promise<RowResponse<BaseManageDefinition.ViewDisplayOutputV2List> | null | undefined> {
      let res: RowResponse<BaseManageDefinition.ViewDisplayOutputV2List> | null | undefined =
        await post<RowResponse<BaseManageDefinition.ViewDisplayOutputV2List>>(
          BaseManageUrlConstant.BASE_MANAGE_V2_VIEW_DISPLAY_LIST,
          {},
          {},
          {},
          input
        );

      return res;
    }
  }


  export class SkinController {
    static async baseManageV1SkinAddsystemskinimgPost(input: BaseManageDefinition.AddSystemSkinImgInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_SKIN_ADD_SYSTEM_SKIN_IMG,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseManageV1SkinAilistPost(): Promise<RowResponse<Array<BaseManageDefinition.SystemSkinAiOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.SystemSkinAiOutput>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.SystemSkinAiOutput>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_SKIN_AI_LIST,
          {},
          {},
          {},
        );

      return res;
    }

    static async baseManageV1SkinDeleteskinimgPost(input: BaseManageDefinition.DeleteSkinInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_SKIN_DELETE_SKIN_IMG,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseManageV1SkinListPost(): Promise<ApiResponse<BaseManageDefinition.SkinOutput> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.SkinOutput> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.SkinOutput>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_SKIN_LIST,
          {},
          {},
          {},
        );

      return res;
    }

    static async baseManageV1SkinMylistPost(userId: number): Promise<ApiResponse<BaseManageDefinition.MySkinOutput> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.MySkinOutput> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.MySkinOutput>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_SKIN_MY_LIST,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async baseManageV1SkinNameplatelistPost(): Promise<RowResponse<Array<BaseManageDefinition.SystemSkinNameplateOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.SystemSkinNameplateOutput>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.SystemSkinNameplateOutput>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_SKIN_NAMEPLATE_LIST,
          {},
          {},
          {},
        );

      return res;
    }
  }


  export class SkinThemeController {
    static async baseManageV1SkinThemeAddPost(input: BaseManageDefinition.AddSystemSkinThemeInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_SKIN_THEME_ADD,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseManageV1SkinThemeDeletePost(input: BaseManageDefinition.DeleteSkinInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_SKIN_THEME_DELETE,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseManageV1SkinThemeListPost(): Promise<ApiResponse<BaseManageDefinition.ThemeCenterOutput> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.ThemeCenterOutput> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.ThemeCenterOutput>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_SKIN_THEME_LIST,
          {},
          {},
          {},
        );

      return res;
    }

    static async baseManageV1SkinThemeMylistPost(): Promise<ApiResponse<BaseManageDefinition.MyThemeListOutput> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.MyThemeListOutput> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.MyThemeListOutput>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_SKIN_THEME_MY_LIST,
          {},
          {},
          {},
        );

      return res;
    }
  }


  export class GuideController {
    static async baseManageV1GuideGetguidePost(input: BaseManageDefinition.GuideQueryInput,
      userId: number): Promise<ApiResponse<BaseManageDefinition.GuideOutPut> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.GuideOutPut> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.GuideOutPut>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_GUIDE_GET_GUIDE,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseManageV1GuideGetguidesPost(input: BaseManageDefinition.GuideBacthQueryInput,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.GuideOutPut>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.GuideOutPut>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.GuideOutPut>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_GUIDE_GET_GUIDES,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseManageV1GuideUpdateguidePost(input: BaseManageDefinition.GuideAddInput, ip: string,
      userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_GUIDE_UPDATE_GUIDE,
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


  export class CheckAliveController {
    static async checkaliveGet(): Promise<number | null | undefined> {
      let res: number | null | undefined = await get<number>(
        BaseManageUrlConstant.CHECKALIVE,
        {},
        {},
        {},
      );

      return res;
    }
  }


  export class StickerController {
    static async baseManageV1StickerListPost(): Promise<ApiResponse<BaseManageDefinition.StickerListOutput> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.StickerListOutput> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.StickerListOutput>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_STICKER_LIST,
          {},
          {},
          {},
        );

      return res;
    }
  }


  export class OverAllRecordController {
    static async baseManageV1OverallrecordAddoverallrecordPost(input: BaseManageDefinition.OverAllRecordAddInput,
      ip: string, userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_OVER_ALL_RECORD_ADD_OVER_ALL_RECORD,
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

    static async baseManageV1OverallrecordGetuseroverallrecordsPost(input: BaseManageDefinition.OverAllRecordQueryInput,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.OverAllRecordOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.OverAllRecordOutput>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.OverAllRecordOutput>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_OVER_ALL_RECORD_GET_USER_OVER_ALL_RECORDS,
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


  export class AppletGuideController {
    static async baseManageV1AppletFinishappletguidePost(input: BaseManageDefinition.FinishAppletGuideInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_FINISH_APPLET_GUIDE,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseManageV1AppletGetappletguidePost(userId: number): Promise<ApiResponse<BaseManageDefinition.AppletGuideOutput> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.AppletGuideOutput> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.AppletGuideOutput>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_GET_APPLET_GUIDE,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }
  }


  export class AppletTransferControllerV2 {
    static async baseManageV2TransferGetappletimportlogPost(userId: number): Promise<RowResponse<Array<BaseManageDefinition.GetAppletImportLogUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.GetAppletImportLogUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.GetAppletImportLogUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_MANAGE_V2_TRANSFER_GET_APPLET_IMPORT_LOG,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async baseManageV2TransferGetappletimportlogbyidPost(input: BaseManageDefinition.AppletIdRequest,
      userId: number): Promise<ApiResponse<BaseManageDefinition.GetAppletImportLogUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.GetAppletImportLogUsingPOSTRsp> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.GetAppletImportLogUsingPOSTRsp>>(
          BaseManageUrlConstant.BASE_MANAGE_V2_TRANSFER_GET_APPLET_IMPORT_LOG_BY_ID,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseManageV2TransferGetsystemappletimportlogPost(userId: number): Promise<RowResponse<Array<BaseManageDefinition.GetAppletImportLogUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.GetAppletImportLogUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.GetAppletImportLogUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_MANAGE_V2_TRANSFER_GET_SYSTEM_APPLET_IMPORT_LOG,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async baseManageV2TransferTryaddappletimportlogPost(input: BaseManageDefinition.AppletImportLogInput,
      ip: string, userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V2_TRANSFER_TRY_ADD_APPLET_IMPORT_LOG,
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

    static async baseManageV2TransferUpdateappletimportlogPost(input: BaseManageDefinition.AppletImportLogInput,
      userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V2_TRANSFER_UPDATE_APPLET_IMPORT_LOG,
        {},
        {},
        {
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async nativeBaseManageV2TransferUpdateappletimportconfigPost(input: BaseManageDefinition.UpdateAppletImportConfigInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.NATIVE_BASE_MANAGE_V2_TRANSFER_UPDATE_APPLET_IMPORT_CONFIG,
        {},
        {},
        {},
        input
      );

      return res;
    }
  }


  export class AppletRemindController {
    static async baseManageV1AppremindGetappletremindconfigPost(input: BaseManageDefinition.AppletRemindTemplateInput,
    ): Promise<ApiResponse<BaseManageDefinition.GetAppletRemindConfigUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.GetAppletRemindConfigUsingPOSTRsp> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.GetAppletRemindConfigUsingPOSTRsp>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APP_REMIND_GET_APPLET_REMIND_CONFIG,
          {},
          {},
          {
            // "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseManageV1AppremindQueryappletremindPost(input: BaseManageDefinition.AppletRemindQueryInput): Promise<ApiResponse<BaseManageDefinition.QueryAppletRemindUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.QueryAppletRemindUsingPOSTRsp> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.QueryAppletRemindUsingPOSTRsp>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APP_REMIND_QUERY_APPLET_REMIND,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseManageV1AppremindQuerymyappremindlistPost(input: BaseManageDefinition.RemindQueryInput, ip: string,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.QueryAppletRemindUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.QueryAppletRemindUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.QueryAppletRemindUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APP_REMIND_QUERY_MY_APP_RE_MIND_LIST,
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

    static async baseManageV1AppremindQuerymyappremindlistwithmasterPost(input: BaseManageDefinition.RemindQueryInput,
      ip: string,
      userId: number): Promise<ApiResponse<BaseManageDefinition.QueryMyAppReMindListWithMasterUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.QueryMyAppReMindListWithMasterUsingPOSTRsp> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.QueryMyAppReMindListWithMasterUsingPOSTRsp>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APP_REMIND_QUERY_MY_APP_RE_MIND_LIST_WITH_MASTER,
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

    static async baseManageV1AppremindSetappletremindPost(input: BaseManageDefinition.AppletRemindInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APP_REMIND_SET_APPLET_REMIND,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseManageV1AppremindSetappletreminddayPost(input: BaseManageDefinition.SetAppletRemindDayInput,
    ): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APP_REMIND_SET_APPLET_REMIND_DAY,
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

    static async baseManageV1AppremindSetappletremindtimePost(input: BaseManageDefinition.SetAppletRemindTimeInput,
      ip: string, userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APP_REMIND_SET_APPLET_REMIND_TIME,
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

    static async baseManageV1AppremindSetmasterremindPost(input: BaseManageDefinition.MasterRemindInput, ip: string,
      userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APP_REMIND_SET_MASTER_REMIND,
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

    static async nativeBaseManageV1AppremindGetbatchappletremindtemplatePost(input: BaseManageDefinition.BatchAppletRemindTemplateInput): Promise<RowResponse<Array<BaseManageDefinition.BatchAppletRemindTemplateOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.BatchAppletRemindTemplateOutput>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.BatchAppletRemindTemplateOutput>>>(
          BaseManageUrlConstant.NATIVE_BASE_MANAGE_V1_APP_REMIND_GET_BATCH_APPLET_REMIND_TEMPLATE,
          {},
          {},
          {},
          input
        );

      return res;
    }
  }


  export class AppletCommandController {
    static async baseManageV1AppletAppletcommandtiplistPost(): Promise<RowResponse<Array<BaseManageDefinition.AppletCommandTipOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.AppletCommandTipOutput>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.AppletCommandTipOutput>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_APPLET_COMMAND_TIP_LIST,
          {},
          {},
          {},
        );

      return res;
    }

    static async baseManageV1AppletGetcommandhelpPost(input: BaseManageDefinition.GetCommandHelpInput): Promise<RowResponse<Array<BaseManageDefinition.AppletCommandHelpOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.AppletCommandHelpOutput>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.AppletCommandHelpOutput>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_GET_COMMAND_HELP,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseManageV2AppletAppletcommandtiplistPost(): Promise<ApiResponse<BaseManageDefinition.AppletCommandTipListOutputV2> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.AppletCommandTipListOutputV2> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.AppletCommandTipListOutputV2>>(
          BaseManageUrlConstant.BASE_MANAGE_V2_APPLET_APPLET_COMMAND_TIP_LIST,
          {},
          {},
          {},
        );

      return res;
    }
  }


  export class AppletTransferControllerV1 {
    static async baseManageV1TransferGetappletimportlogPost(userId: number): Promise<RowResponse<Array<BaseManageDefinition.GetAppletImportLogUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.GetAppletImportLogUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.GetAppletImportLogUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_TRANSFER_GET_APPLET_IMPORT_LOG,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async baseManageV1TransferGetappletimportlogbyidPost(input: BaseManageDefinition.AppletIdRequest,
      userId: number): Promise<ApiResponse<BaseManageDefinition.GetAppletImportLogUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.GetAppletImportLogUsingPOSTRsp> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.GetAppletImportLogUsingPOSTRsp>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_TRANSFER_GET_APPLET_IMPORT_LOG_BY_ID,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseManageV1TransferTryaddappletimportlogPost(input: BaseManageDefinition.AppletImportLogInput,
      ip: string,
      userId: number): Promise<ApiResponse<BaseManageDefinition.TryAddAppletImportLogOutput> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.TryAddAppletImportLogOutput> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.TryAddAppletImportLogOutput>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_TRANSFER_TRY_ADD_APPLET_IMPORT_LOG,
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

    static async baseManageV1TransferUpdateappletimportlogPost(input: BaseManageDefinition.AppletImportLogInput,
      userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_TRANSFER_UPDATE_APPLET_IMPORT_LOG,
        {},
        {},
        {
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async nativeBaseManageV1TransferUpdateappletimportconfigPost(input: BaseManageDefinition.UpdateAppletImportConfigInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.NATIVE_BASE_MANAGE_V1_TRANSFER_UPDATE_APPLET_IMPORT_CONFIG,
        {},
        {},
        {},
        input
      );

      return res;
    }
  }


  export class SyncFastAppletController {
    static async basePlanSyncMPlanPost(dto: BaseManageDefinition.SyncDataRequest,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.SyncSortUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.SyncSortUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.SyncSortUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_PLAN_SYNC_PLAN_URL,
          {},
          {},
          {
            "user_id": userId
          },
          dto
        );

      return res;
    }
  }


  export class AppletMsgController {
    static async baseManageV1AppletClickappletPost(dto: BaseManageDefinition.AppletIdInput, ip?: string,
      userId?: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_CLICK_APPLET,
        {},
        {},
        {
          // "ip": ip,
          // "user_id": userId
        },
        dto
      );

      return res;
    }

    static async baseManageV1AppletClickappletonebyonePost(dto: BaseManageDefinition.AppletIdInput, ip: string,
      userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_CLICK_APPLET_ONE_BY_ONE,
        {},
        {},
        {
          "ip": ip,
          "user_id": userId
        },
        dto
      );

      return res;
    }

    static async baseManageV1AppletFindappletmsgPost(userId: number): Promise<RowResponse<Array<BaseManageDefinition.MyAppletTipsOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.MyAppletTipsOutput>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.MyAppletTipsOutput>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_FIND_APPLET_MSG,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async baseManageV1AppletFindappletmsgcountPost(userId: number): Promise<ApiResponse<BaseManageDefinition.AppletCountOutput> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.AppletCountOutput> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.AppletCountOutput>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_FIND_APPLET_MSG_COUNT,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }

    static async baseManageV1AppletReadedPost(dto: BaseManageDefinition.AppletReadedInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_READED,
        {},
        {},
        {},
        dto
      );

      return res;
    }

    static async baseManageV1AppletTopedPost(dto: BaseManageDefinition.AppletTopedInput, ip: string,
      userId: number): Promise<ApiResponse<Map<string, object>> | null | undefined> {
      let res: ApiResponse<Map<string, object>> | null | undefined = await post<ApiResponse<Map<string, object>>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_TOPED,
        {},
        {},
        {
          "ip": ip,
          "user_id": userId
        },
        dto
      );

      return res;
    }
  }


  export class MyTabController {
    static async baseManageV1MytabDiscoverAddPost(input: BaseManageDefinition.DataVersionInput,
      userId: number): Promise<ApiResponse<BaseManageDefinition.NeedSyncOutput> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.NeedSyncOutput> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.NeedSyncOutput>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_MY_TAB_DISCOVER_ADD,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseManageV1MytabGetPost(input: BaseManageDefinition.DataVersionInput): Promise<RowResponse<Array<string>> | null | undefined> {
      let res: RowResponse<Array<string>> | null | undefined = await post<RowResponse<Array<string>>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_MY_TAB_GET,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseManageV1MytabUpdatePost(input: BaseManageDefinition.MyTabInput): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_MY_TAB_UPDATE,
        {},
        {},
        {},
        input
      );

      return res;
    }
  }


  export class AppletSearchController {
    static async baseManageV1AppletSearchPost(input: BaseManageDefinition.AppletKeywordInput, ip: string,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.GetAppletByIdsUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_SEARCH,
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


  export class AppletConfigController {
    static async baseManageV1AppletconfigAddorupdatehidefinishedPost(input: BaseManageDefinition.HideFinishedInput,
      ip: string, userId: number): Promise<ApiResponse<BaseManageDefinition.HideFinishedOutput> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.HideFinishedOutput> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.HideFinishedOutput>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_CONFIG_ADD_OR_UPDATE_HIDE_FINISHED,
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

    static async baseManageV1AppletconfigGethidefinishedPost(userId: number): Promise<ApiResponse<BaseManageDefinition.HideFinishedOutput> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.HideFinishedOutput> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.HideFinishedOutput>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_CONFIG_GET_HIDE_FINISHED,
          {},
          {},
          {
            "user_id": userId
          },
        );

      return res;
    }
  }


  export class FocusFullScreenSkinController {
    static async baseManageV1FocusFullScreenSkinPost(): Promise<ApiResponse<BaseManageDefinition.FocusFullScreenSkinOutput> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.FocusFullScreenSkinOutput> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.FocusFullScreenSkinOutput>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_FOCUS_FULL_SCREEN_SKIN,
          {},
          {},
          {},
        );

      return res;
    }
  }


  export class AppletHistoryController {
    static async baseManageV1ApplethistoryAddapplethistoryPost(input: BaseManageDefinition.AddAppletHistoryInput,
      ip: string,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.GetAppletHistoryOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.GetAppletHistoryOutput>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.GetAppletHistoryOutput>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_HISTORY_ADD_APPLET_HISTORY,
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

    static async baseManageV1ApplethistoryDelapplethistoryPost(input: BaseManageDefinition.IdsRequest,
      userId: number): Promise<ApiResponse<void> | null | undefined> {
      let res: ApiResponse<void> | null | undefined = await post<ApiResponse<void>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_HISTORY_DEL_APPLET_HISTORY,
        {},
        {},
        {
          "user_id": userId
        },
        input
      );

      return res;
    }

    static async baseManageV1ApplethistoryGetapplethistoryPost(input: BaseManageDefinition.PaginableRequest,
      userId: number): Promise<PaginableResponse<Array<BaseManageDefinition.GetAppletHistoryOutput>> | null | undefined> {
      let res: PaginableResponse<Array<BaseManageDefinition.GetAppletHistoryOutput>> | null | undefined =
        await post<PaginableResponse<Array<BaseManageDefinition.GetAppletHistoryOutput>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_HISTORY_GET_APPLET_HISTORY,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseManageV1ApplethistoryGetapplethistorybydatePost(input: BaseManageDefinition.AppletHistoryDateInput,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.GetAppletHistoryOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.GetAppletHistoryOutput>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.GetAppletHistoryOutput>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_APPLET_HISTORY_GET_APPLET_HISTORY_BY_DATE,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseManageV2ApplethistoryAddapplethistoryPost(input: BaseManageDefinition.AddAppletHistoryInputV2,
      ip: string, userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V2_APPLET_HISTORY_ADD_APPLET_HISTORY,
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

    static async baseManageV2ApplethistoryBatchaddapplethistoryPost(inputs: Array<BaseManageDefinition.AddAppletHistoryInputV2>,
      ip: string, userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V2_APPLET_HISTORY_BATCH_ADD_APPLET_HISTORY,
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

    static async baseManageV2ApplethistoryGetapplethistoryPost(input: BaseManageDefinition.GetAppletHistoryInput,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.GetAppletHistoryOutputV2>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.GetAppletHistoryOutputV2>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.GetAppletHistoryOutputV2>>>(
          BaseManageUrlConstant.BASE_MANAGE_V2_APPLET_HISTORY_GET_APPLET_HISTORY,
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


  export class FastAppletController {
    static async baseManageV1FastappletAppletmanagePost(input: BaseManageDefinition.AppletManageV2UsingPOSTRequestBody,
      ip: string, userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_FAST_APPLET_APPLET_MANAGE,
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

    static async baseManageV1FastappletAppletsortandsubscribePost(input: BaseManageDefinition.PppletSortAndSubscribeUsingPOSTResuestBody): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_FAST_APPLET_APPLET_SORT_AND_SUBSCRIBE,
        {},
        {},
        {},
        input
      );

      return res;
    }

    static async baseManageV1FastappletGetfastappletstatePost(input: BaseManageDefinition.GetFastAppletStateUsingPOSTRequestBody,
      userId: number): Promise<ApiResponse<BaseManageDefinition.GetFastAppletStateUsingPOSTRsp> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.GetFastAppletStateUsingPOSTRsp> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.GetFastAppletStateUsingPOSTRsp>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_FAST_APPLET_GET_FAST_APPLET_STATE,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseManageV1FastappletQueryPost(input: BaseManageDefinition.DataVersionInput, ip: string,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.QueryUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.QueryUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.QueryUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_FAST_APPLET_QUERY,
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

    static async baseManageV1FastappletQueryallPost(channelType: string, input: BaseManageDefinition.DataVersionInput,
      ip: string,
      userId: number): Promise<ApiResponse<BaseManageDefinition.QueryAllUsingPOST_1Rsp> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.QueryAllUsingPOST_1Rsp> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.QueryAllUsingPOST_1Rsp>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_FAST_APPLET_QUERY_ALL,
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

    static async baseManageV2FastappletAppletmanagePost(input: BaseManageDefinition.AppletManageV2UsingPOSTRequestBody,
      ip: string, userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V2_FAST_APPLET_APPLET_MANAGE,
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

    static async baseManageV2FastappletQueryallPost(input: BaseManageDefinition.DataVersionInput): Promise<ApiResponse<BaseManageDefinition.QueryAllUsingPOST_1Rsp> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.QueryAllUsingPOST_1Rsp> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.QueryAllUsingPOST_1Rsp>>(
          BaseManageUrlConstant.BASE_MANAGE_V2_FAST_APPLET_QUERY_ALL,
          {},
          {},
          {},
          input
        );

      return res;
    }

    static async baseManageV3FastappletQueryallPost(input: BaseManageDefinition.DataVersionInput, ip: string,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.QueryUsingPOSTRsp>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.QueryUsingPOSTRsp>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.QueryUsingPOSTRsp>>>(
          BaseManageUrlConstant.BASE_MANAGE_V3_FAST_APPLET_QUERY_ALL,
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


  export class RingController {
    static async baseManageV1RingGetallringsPost(dataVersion: BaseManageDefinition.DataVersionInput): Promise<RowResponse<Array<BaseManageDefinition.RingOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.RingOutput>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.RingOutput>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_RING_GET_ALL_RINGS,
          {},
          {},
          {},
          dataVersion
        );

      return res;
    }

    static async baseManageV1RingGetprogramringPost(input: BaseManageDefinition.RingQueryByUserInput,
      userId: number): Promise<ApiResponse<BaseManageDefinition.RingRecordOutput> | null | undefined> {
      let res: ApiResponse<BaseManageDefinition.RingRecordOutput> | null | undefined =
        await post<ApiResponse<BaseManageDefinition.RingRecordOutput>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_RING_GET_PROGRAM_RING,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseManageV1RingGetprogramringsPost(input: BaseManageDefinition.DataVersionInput,
      userId: number): Promise<RowResponse<Array<BaseManageDefinition.RingRecordOutput>> | null | undefined> {
      let res: RowResponse<Array<BaseManageDefinition.RingRecordOutput>> | null | undefined =
        await post<RowResponse<Array<BaseManageDefinition.RingRecordOutput>>>(
          BaseManageUrlConstant.BASE_MANAGE_V1_RING_GET_PROGRAM_RINGS,
          {},
          {},
          {
            "user_id": userId
          },
          input
        );

      return res;
    }

    static async baseManageV1RingSetprogramringPost(input: BaseManageDefinition.RingRecordAddInput, ip: string,
      userId: number): Promise<ApiResponse<object> | null | undefined> {
      let res: ApiResponse<object> | null | undefined = await post<ApiResponse<object>>(
        BaseManageUrlConstant.BASE_MANAGE_V1_RING_SET_PROGRAM_RING,
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
}
