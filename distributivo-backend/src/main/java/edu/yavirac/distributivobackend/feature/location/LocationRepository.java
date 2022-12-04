package edu.yavirac.distributivobackend.feature.location;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Modifying;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

public interface LocationRepository extends CrudRepository<Location, Long> {

    final String DELETE = "UPDATE locations SET status=false WHERE id=:id";
    final String SELECT_ALL_PAGEABLE = "SELECT * FROM locations WHERE status=true LIMIT :limit offset :offset";
    final String FIND_IGNORE_CASE = "SELECT * FROM locations WHERE status=true and name LIKE '%' || :name || '%'";
    final String FIND_ALL = "SELECT * FROM locations WHERE status=true";
    final String FIND = "SELECT * FROM locations WHERE status=true and id=:id";
    final String COUNT = "SELECT COUNT(*) FROM locations WHERE status = true";

    @Query(value = SELECT_ALL_PAGEABLE)
    List<Location> findAllPageable(@Param("limit") long limit, @Param("offset") long offset );

    @Query(value = FIND_IGNORE_CASE)
    List<Location> findByNameLikeIgnoreCase(@Param("name") String term);
    
    @Query(value = FIND_ALL)
    List<Location> findAll();

    @Query(value = FIND)
    Optional<Location> findById(@Param("id") Long id);

    @Query(value = DELETE)
    @Modifying()
    @Transactional()
    void deleteLocation(@Param("id") Long id);

    @Query(value = COUNT)
    long count();
}