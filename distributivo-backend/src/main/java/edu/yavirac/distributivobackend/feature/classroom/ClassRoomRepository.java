package edu.yavirac.distributivobackend.feature.classroom;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Modifying;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

public interface ClassRoomRepository extends CrudRepository<Classroom, Long> {

    final String DELETE = "UPDATE classrooms SET status=false WHERE id=:id";
    final String FIND_ALL ="SELECT * FROM classrooms WHERE status=true";
    final String SELECT_ALL_CONSULT = "SELECT classrooms.description, classrooms.id,classrooms.name, classrooms.status, classrooms.capacity,location.name as location_name,location.id as location, type.id as type,type.name as type_name FROM classrooms LEFT OUTER JOIN classroom_types type ON type.id = classrooms.type and type.status=true LEFT OUTER JOIN locations location ON location.id = classrooms.location and location.status=true WHERE classrooms.status = true LIMIT :limit offset :offset";
    final String FIND_IGNORE_CASE = "SELECT * FROM classrooms WHERE status=true and name ILIKE '%' || :name || '%'";
    final String FIND = "SELECT * FROM classrooms WHERE id=:id and status=true";
    final String COUNT = "SELECT COUNT(*) FROM classrooms WHERE status = true";
    final String SAVE = "INSERT INTO classrooms (status,capacity,name,type,location,description) VALUES(:status,:capacity,:name,:type,:location,:description) RETURNING id";
    final String UPDATE = "UPDATE public.classrooms SET type=:type, location=:location, name=:name, capacity=:capacity, status=true, description=:description WHERE id=:id RETURNING id ";
    @Query(value = SELECT_ALL_CONSULT)
    List<ClassroomConsult> findAllConsult(@Param("limit") long limit, @Param("offset") long offset );

    @Query(value = FIND_IGNORE_CASE)
    List<Classroom> findByNameLikeIgnoreCase(@Param("name") String term);

    @Query(value = FIND)
    Optional<Classroom> findById(@Param("id") Long id);

    @Query(value = FIND_ALL)
    List<Classroom> finAll();

    @Query(value = UPDATE)
    Long update(@Param("id") long id,@Param("name") String name,@Param("capacity") Long 
    capacity,@Param("type") Long type,@Param("location") Long location,
    @Param("description") String description );

    @Query(value = DELETE)
    @Modifying()
    @Transactional()
    void deleteclassroom(@Param("id") Long id);

    @Query(value = COUNT)
    long count();

    @Query(value = SAVE)
    Long mySave(@Param("name") String name, @Param("status") boolean status,@Param("capacity") Long 
    capacity,@Param("type") Long type,@Param("location") Long location,
    @Param("description") String description );
        
}