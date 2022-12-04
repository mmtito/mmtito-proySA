package edu.yavirac.distributivobackend.feature.user;

import java.util.HashSet;
import java.util.Set;

import org.springframework.data.annotation.Transient;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import edu.yavirac.distributivobackend.feature.role.UserRoleConsult;
import lombok.Data;



@Data
@Table
public class UserConsult {
    @Column("user_id")
    private Long id;
    private String password;
    private String name;
    private String username;
    private boolean looked = false;

    @Transient
    private Set<UserRoleConsult> roles = new HashSet<>();
    
}
