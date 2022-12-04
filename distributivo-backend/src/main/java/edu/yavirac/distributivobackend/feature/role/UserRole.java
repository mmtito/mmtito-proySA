package edu.yavirac.distributivobackend.feature.role;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;


import lombok.Data;

@Data
@Table("auth\".\"users_roles")
public class UserRole {
    @Id
    @Column("user_role_id")
    private Long id;

    @Column("user_id")
    private Long userId;

    @Column("role_id")
    private Long roleId;



}
