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

export namespace BaseEncyclopediasDefinition {
  export interface AddUserEncyclopediasInput {
    encyclopediasTemplateCode: string;
    items: UserEncyclopediasItemsOutput;
    templateVersion: string;
  }

  export interface CommentSortInput {
    fromId: number;
    toId?: number;
  }

  export interface DelUserEncyclopediasInput {
    id: number;
  }

  export interface GetUserAllEncyclopediasIntput {
    templateVersion: string;
  }

  export interface GetUserEncyclopediasListIntput {
    encyclopediasTemplateCode: string;
    templateVersion: string;
  }

  export interface JbxxOutput {
    birthday?: string;
    calendarType?: string;
    description?: string;
    gender?: string;
    id?: number;
    name?: string;
    nickname?: string;
    photo?: string;
  }

  export interface PersonalCommentInput {
    comments?: Array<string>;
    encyclopediasTemplateCode: string;
    templateVersion: string;
  }

  export interface UpdateCommentSortInput {
    ids?: Array<string>;
  }

  export interface UpdateUserEncyclopediasInput {
    encyclopediasTemplateCode: string;
    id: number;
    items: UserEncyclopediasItemsOutput;
    templateVersion: string;
  }

  export interface UserAllEncyclopediasOutput {
    encyclopediasTemplateCode?: string;
    isExampleData?: boolean;
    userEncyclopediasOutputList?: Array<UserEncyclopediasOutput>;
  }

  export interface UserEncyclopediasOutput {
    encyclopediasTemplateCode?: string;
    id?: number;
    items?: UserEncyclopediasItemsOutput;
  }
  export interface UserEncyclopediasItemsOutput {
    birthday?: string;
    calendarType?: number;
    gender?: number;
    startDate?: string;
    endDate?: string;
    name?: string;
    description?: string;
    checked?: number;
    comment?: string;
    defaulted?: number;
    position?: string;
    address?: string;
    department?: string;
    photo?: string;
    photos?: string[];
  }

  export interface UserLifeTrackInput {
    endDate?: string;
    startDate?: string;
    templateVersion: string;
  }

  export interface UserLifeTrackOutput {
    date?: string;
    description?: string;
    encyclopediasTemplateCode?: string;
    photo?: string;
    title?: string;
  }
}
