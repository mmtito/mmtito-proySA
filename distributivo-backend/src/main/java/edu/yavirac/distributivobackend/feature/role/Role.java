package edu.yavirac.distributivobackend.feature.role;

import java.util.HashSet;
import java.util.Set;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.MappedCollection;
import org.springframework.data.relational.core.mapping.Table;

import edu.yavirac.distributivobackend.auth.security.RoleAuthority;
import lombok.Data;

@Data
@Table("auth\".\"roles")
public class Role {
    
    @Id
    @Column("role_id")
    private long roleId;

    private String name;
    //private boolean enabled;

    @MappedCollection(idColumn = "role_id")
    private Set<RoleAuthority> authorities = new HashSet<>();


}
