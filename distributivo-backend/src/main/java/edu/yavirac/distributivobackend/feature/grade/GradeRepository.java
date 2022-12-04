package edu.yavirac.distributivobackend.feature.grade;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Modifying;
import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

public interface GradeRepository extends CrudRepository<Grade, Long> {

    final String DELETE = "UPDATE grade SET status=false WHERE id=:id";
    final String SELECT_ALL_CONSULT = "SELECT grade.id, grade.name,grade.level, grade.parallel, career.id as career, grade.working_day, career.name as career_name, grade.status FROM grade LEFT OUTER JOIN career ON career.id = grade.career and  career.status = true WHERE grade.status=true LIMIT :limit offset :offset";
    final String FIND_IGNORE_CASE = "SELECT * FROM grade WHERE status=true and name LIKE '%' || :name || '%'";
    final String FIND = "SELECT * FROM grade WHERE id=:id and status=true";
    final String SELECT_ALL = "SELECT * FROM grade WHERE status=true";
    final String COUNT = "SELECT COUNT(*) FROM grade WHERE status = true";
    final String SAVE = "INSERT INTO grade (name,working_day,level,parallel,career) VALUES(:name,:modality,:level,:parallel,:career) RETURNING id";
    final String GET_CAREERS = "SELECT id, name FROM career";
    final String UPDATE = "UPDATE public.grade SET name=:name, working_day=:modality, level=:level, parallel=:parallel, career=:career WHERE id=:id RETURNING id ";

    @Query(value = SELECT_ALL_CONSULT)
    List<GradeConsult> findAll(@Param("limit") long limit, @Param("offset") long offset);
    
    @Query(value=SELECT_ALL)
    List<Grade> getAll();

    @Query(value=GET_CAREERS)
    List<Career> getCareers();

    @Query(value = FIND_IGNORE_CASE)
    List<Grade> findByNameLikeIgnoreCase(@Param("name") String term);

    @Query(value = FIND)
    Optional<Grade> findById(@Param("id") Long id);

    @Query(value = UPDATE)
    Long update(@Param("id") long id, @Param("name") String name, @Param("modality") 
    Long modality, @Param("level") Long level, 
    @Param("parallel") Long parallel, @Param("career") Long career);

    @Query(value = DELETE)
    @Modifying()
    @Transactional()
    void deleteGrade(@Param("id") Long id);

    @Query(value = COUNT)
    long count();

    @Query(value = SAVE)
    Long mySave( @Param("name") String name, @Param("modality")
    Long modality,  @Param("level") Long level, 
    @Param("parallel") Long parallel, @Param("career") Long career);

}
