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
} from './BaseDefinition'

export namespace BaseCallbackDefinition {
  export interface AttributionDto {
    adGroupId?: number;
    attribution?: boolean;
    campaignId?: number;
    clickDate?: Date;
    conversionType?: string;
    countryOrRegion?: string;
    creativeSetId?: number;
    keywordId?: number;
    orgId?: number;
  }

  export interface ErrorIosAttributionInput {
    device: UserDeviceInfo;
    errorDesc: string;
  }

  export interface IosAttributionInput {
    attribution: AttributionDto;
    device: UserDeviceInfo;
  }

  export interface LocalDateInput {
    endDate?: Date;
    startDate?: Date;
  }

  export interface OssInput {
    key?: string;
  }

  export interface OssOutput {
    url?: string;
  }

  export interface VivoInput {
    adId?: string;
    adName?: string;
    advertisementId?: string;
    advertiserId?: string;
    advertiserName?: string;
    campaignId?: string;
    campaignName?: string;
    channelType?: string;
    clickTime?: number;
    creativeId?: string;
    groupId?: string;
    groupName?: string;
    imei?: string;
    ip?: string;
    mediaType?: string;
    oaid?: string;
    placeType?: string;
    requestId?: string;
    ua?: string;
  }
}
