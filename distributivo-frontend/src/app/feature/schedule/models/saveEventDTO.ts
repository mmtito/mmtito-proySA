import { DayWeekSelect } from "./dayWeekSelect";
import { RangeOptEvent } from "./rangeOptEvent";

export interface SaveEventDTO {
    schoolPeriod : string,
    classroom : string,
    date : string,
    hour : string,
    occupiedBy : string,
    rangeOpt : RangeOptEvent | null
}