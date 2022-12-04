package edu.yavirac.distributivobackend.feature.teacher;

import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;

public interface TeacherRepository extends CrudRepository <Teacher, Long> {
    
    //List<Teacher> findAll();
    //List<Teacher> findByArchived(boolean isarchived);
    @Query(value = "SELECT * FROM teacher WHERE archived=true")
    List<Teacher>findAll();

    List<Teacher> findByNameLikeIgnoreCase(String term);
    
}
