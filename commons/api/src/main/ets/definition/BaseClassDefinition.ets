import { PaginableResponse, UserDeviceInfo, } from './BaseDefinition'

export namespace BaseClassDefinition {

  ///////////////OutputInterface
  //测试
  export interface TodoUnfinishScheduleOutput {
    unfinish?: number;
  }
  //根据id获取课程列表
  export interface ClassGetCurrentCourseListOutput {
    rows?: ClassGetCurrentCourseInterface[];
  }
  export interface ClassGetCurrentCourseInterface {
    beginLessonNo?: number;
    classroom?: string;
    courseName?: string;
    courseEntity:courseEntityInterface;
    courseNameId?: string;
    duration?:number;
    lessonType?: string;
    teacher?: string;
    weekType?:number;
    weekValue?:number;
  }
  export interface courseEntityInterface{
    classroom?:string;
    colour?:string;
    courseName?:string;
    id?:string;
    teacher?:string;
    termId?:string;
    type?:number;
    weekType?:number;
  }

////InputInterface
  //根据id获取课程列表
  export interface ClassGetCurrentCourseListInput {
    id:string
  }

}

