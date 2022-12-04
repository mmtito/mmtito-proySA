export interface Role {
    roleId:      string;
    name:        string;
    authorities: Authority[];
}

export interface Authority {
    id:          number;
    roleId:      number;
    authorityId: number;
}
