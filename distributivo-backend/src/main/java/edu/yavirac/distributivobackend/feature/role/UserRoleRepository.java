package edu.yavirac.distributivobackend.feature.role;
import java.util.Set;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface UserRoleRepository extends CrudRepository<UserRole,Long> {

    final String FIND_BY_USER = "SELECT r.role_id,ur.user_role_id, r.name, ur.user_id FROM  auth.users_roles ur JOIN auth.roles r ON r.role_id= ur.role_id  WHERE ur.user_id = :id";

    Set<UserRole> findAll();
    @Query(FIND_BY_USER)
    public Set<UserRoleConsult> findbyUser(@Param("id") Long id );

    
}
