package edu.yavirac.distributivobackend.feature.role;
import java.util.List;


import org.springframework.data.repository.CrudRepository;


public interface RoleRepository extends CrudRepository <Role, Long> {
    


    List<Role> findAll();

 
    List<Role> findByNameLikeIgnoreCase(String name);

}
