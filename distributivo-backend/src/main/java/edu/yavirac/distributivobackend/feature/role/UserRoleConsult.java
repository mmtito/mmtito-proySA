package edu.yavirac.distributivobackend.feature.role;

import org.springframework.data.relational.core.mapping.Column;

import lombok.Data;

@Data

public class UserRoleConsult {

    @Column("user_role_id")
    private Long id;
    @Column("name")
    private String name; 

    @Column("user_id")
    private Long userId; 

    @Column("role_id")
    private Long roleId;

    
}