package edu.yavirac.distributivobackend.feature.user;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Modifying;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;


public interface UserRepository extends CrudRepository <User, Long>{
    
    final String SELECT_ALL_PAGEABLE = "SELECT user_id, password, name , username, looked FROM auth.users WHERE enabled=true LIMIT :limit offset :offset";
    final String FIND_IGNORE_CASE = "SELECT user_id, password, name , username, looked FROM auth.users WHERE enabled=true and name LIKE '%' || :name || '%'" ;
    final String FIND_ALL = "SELECT user_id, password, name , username, looked FROM auth.users WHERE enabled=true";
    final String DELETE = "UPDATE auth.users SET enabled=false WHERE user_id=:id";
    final String FIND_BY_ID = " SELECT user_id, password, name , username, looked FROM auth.users WHERE user_id=:id";
    @Query(FIND_ALL)
    List<User> findAll();

    User findByUsername(String username);

    @Query(value = SELECT_ALL_PAGEABLE)
    List<UserConsult> findAllPageable(@Param("limit") long limit, @Param("offset") long offset );
    @Query(value = FIND_IGNORE_CASE)
    List<UserConsult> findByNameLikeIgnoreCase(@Param("name") String term);

    /**
     * @param id
     * @return
     */
    @Query(FIND_BY_ID)
   Optional<UserConsult> findUserId(@Param("id") Long id);
    
    @Query(value = DELETE)
    @Modifying()
    @Transactional()
    void deleteUser(@Param("id") Long id);
}