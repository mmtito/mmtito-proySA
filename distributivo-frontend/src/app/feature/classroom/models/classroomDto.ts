import { ClassRoom } from "./classroom"

interface ClassRoomDto {
    total : number 
    page : number 
    totalPages : number
    capacity : number 
    classrooms : ClassRoom[] 
}

export { ClassRoomDto };