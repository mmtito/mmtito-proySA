import { UserRole } from "../../role/models/userRole";

interface User{
    id : string,
    name : string,
    password : string,
    username : string,
    looked : boolean,
    roles : UserRole[]

}

export { User};