import { User } from "./user"

interface UserDto {
    total : number 
    page : number 
    totalPages : number
    capacity : number 
    users: User[] 
}

export { UserDto };