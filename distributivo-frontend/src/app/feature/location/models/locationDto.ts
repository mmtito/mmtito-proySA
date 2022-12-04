import { Location } from "./location"

interface LocationDto {
    total : number 
    page : number 
    totalPages : number
    capacity : number 
    locations : Location[] 
}

export { LocationDto };