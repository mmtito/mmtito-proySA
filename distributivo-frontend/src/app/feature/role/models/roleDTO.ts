import { Role } from "./role"

interface RoleDto {
    total : number 
    page : number 
    totalPages : number
    capacity : number 
    roles: Role[] 
}

export { RoleDto };