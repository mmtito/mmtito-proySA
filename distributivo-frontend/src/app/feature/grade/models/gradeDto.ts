import { Grade } from "./grade"

interface GradeDto {
    total : number 
    page : number 
    totalPages : number
    capacity : number 
    grades : Grade[] 
}

export { GradeDto };