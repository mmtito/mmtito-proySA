package edu.yavirac.distributivobackend.feature.career;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Modifying;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

public interface CareerRepository extends CrudRepository<Career, Long> {
    
    final String DELETE_CAREER = "UPDATE career SET status=false WHERE id=:id";
    final String SELECT_ALL_CAREER = "SELECT * FROM career WHERE status=true";
    final String SELECT_BY_ID = "SELECT * FROM career WHERE status=true AND id=:id";
    final String UPDATE_NOT_IMAGE = "UPDATE career SET name=:name, duration=:duration WHERE id=:id RETURNING *";
    final String DELETE = "DELETE FROM career WHERE id=:id";
    
    @Query(SELECT_ALL_CAREER)
    List<Career> findAll();
  
    @Modifying
    @Transactional
    @Query(DELETE_CAREER)
    void deleteCareer(@Param("id") Long id);
  
    @Query(SELECT_BY_ID)
    Optional<Career> findById(@Param("id") Long id);

    @Query(UPDATE_NOT_IMAGE)
    Career saveNotImage(@Param("id")Long id,@Param("name")String name,@Param("duration")Integer duration );
    

       
}
