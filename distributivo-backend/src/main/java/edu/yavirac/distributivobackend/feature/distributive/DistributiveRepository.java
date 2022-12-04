package edu.yavirac.distributivobackend.feature.distributive;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface DistributiveRepository extends CrudRepository<Distributive, Long> {
    
    final String SELECT_TEACHER = "SELECT dis.id, teacher.dni as teacher_cedula, teacher.name as teacher, teacher.lastname as teacher_apellido, grade.name as grade, subject.name subject,periood.name period FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade";
    
    final String SELECT_TEACHER_ID = "SELECT dis.id, teacher.dni as teacher_cedula, teacher.name as teacher, teacher.lastname as teacher_apellido, grade.name as grade, subject.name subject,periood.name period FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade WHERE id=:id";
    
    final String SELECT_FOR_TEACHER_ID = "SELECT dis.id, teacher.dni as teacher_cedula, teacher.name as teacher, teacher.lastname as teacher_apellido, grade.name as grade, subject.name subject,periood.name period FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade WHERE teacher.id=:id";  
    
    final String SELECT_FOR_TEACHER_NAME = "SELECT dis.id, teacher.color,teacher.dni as teacher_cedula, teacher.name as teacher, teacher.lastname as teacher_apellido, grade.name as grade, subject.name subject,periood.name period FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade WHERE teacher.name ~* :name ";
    final String SELECT_FOR_EMAIL = "SELECT dis.id , teacher.color, teacher.dni as teacher_cedula, teacher.name as teacher, teacher.lastname as teacher_apellido, grade.name as grade, subject.name subject,periood.name period FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade WHERE teacher.email ~*  :email";
    

    @Query( SELECT_TEACHER )
    List<DistributiveDTO>findAllDistibutive();
    @Query( SELECT_FOR_TEACHER_ID )
    List<DistributiveDTO>findByTeacher(@Param("id") Long id);
    @Query( SELECT_TEACHER_ID )
    Optional<DistributiveDTO>findByIdDto(@Param("id") Long id);
    @Query( SELECT_FOR_TEACHER_NAME )
    List<DistributiveDTO>findByName(@Param("name") String name);
    @Query(SELECT_FOR_EMAIL)
    List<DistributiveDTO>findByEmail(@Param("email") String email);


    final String FIND_BY_DISTRIBUTIVE_ALL = "SELECT DISTINCT ON (teacher.id) dis.id, teacher.id as teacherid, teacher.dni as teacher_cedula, teacher.name as teacher_nombre, teacher.lastname as teacher_apellido, grade.id as gradeid, grade.name as curso_name, subject.id as subjectid, subject.name as asignatura_name, subject.code as asignatura_code, periood.id as perioodid,periood.name as period_name, career.id as careeid, career.name as career_name, career.code as career_code FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade JOIN career ON career.id = dis.career";
    final String FIND_BY_DISTRIBUTIVE_ID = "SELECT dis.id,teacher.id as teacherid, teacher.dni as teacher_cedula, teacher.name as teacher_nombre, teacher.lastname as teacher_apellido, grade.id as gradeid, grade.name as curso_name, subject.id as subjectid, subject.name as asignatura_name, subject.code as asignatura_code, periood.id as perioodid,periood.name as period_name, career.id as careeid, career.name as career_name, career.code as career_code FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course  JOIN grade ON grade.id = dis.grade JOIN career ON career.id = dis.career WHERE dis.id=:id";
    final String FIND_BY_TEACHER_ID = "SELECT dis.id,teacher.id as teacherid, teacher.dni as teacher_cedula, teacher.name as teacher_nombre, teacher.lastname as teacher_apellido, grade.id as gradeid, grade.name as curso_name, subject.id as subjectid, subject.name as asignatura_name, subject.code as asignatura_code, periood.id as perioodid,periood.name as period_name, career.id as careeid, career.name as career_name, career.code as career_code FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course  JOIN grade ON grade.id = dis.grade JOIN career ON career.id = dis.career WHERE teacher.id=:id";
    final String FIND_BY_TEACHER_DNI = "SELECT dis.id,teacher.id as teacherid, teacher.dni as teacher_cedula, teacher.name as teacher_nombre, teacher.lastname as teacher_apellido, grade.id as gradeid, grade.name as curso_name, subject.id as subjectid, subject.name as asignatura_name, subject.code as asignatura_code, periood.id as perioodid,periood.name as period_name, career.id as careeid, career.name as career_name, career.code as career_code FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course  JOIN grade ON grade.id = dis.grade JOIN career ON career.id = dis.career WHERE teacher.dni LIKE '%' || :dni || '%'";
    final String FIND_BY_TEACHER_NAME = "SELECT dis.id,teacher.id as teacherid, teacher.dni as teacher_cedula, teacher.name as teacher_nombre, teacher.lastname as teacher_apellido, grade.id as gradeid, grade.name as curso_name, subject.id as subjectid, subject.name as asignatura_name, subject.code as asignatura_code, periood.id as perioodid,periood.name as period_name, career.id as careeid, career.name as career_name, career.code as career_code FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course  JOIN grade ON grade.id = dis.grade JOIN career ON career.id = dis.career WHERE teacher.name ILIKE '%' || :name || '%'";
    final String FIND_BY_TEACHER_LASTNAME = "SELECT dis.id,teacher.id as teacherid, teacher.dni as teacher_cedula, teacher.name as teacher_nombre, teacher.lastname as teacher_apellido, grade.id as gradeid, grade.name as curso_name, subject.id as subjectid, subject.name as asignatura_name, subject.code as asignatura_code, periood.id as perioodid,periood.name as period_name, career.id as careeid, career.name as career_name, career.code as career_code FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course  JOIN grade ON grade.id = dis.grade JOIN career ON career.id = dis.career WHERE teacher.lastname ILIKE '%' || :lastname || '%'";
    final String FIND_BY_TEACHER_PERIODO = "SELECT dis.id,teacher.id as teacherid, teacher.dni as teacher_cedula, teacher.name as teacher_nombre, teacher.lastname as teacher_apellido, grade.id as gradeid, grade.name as curso_name, subject.id as subjectid, subject.name as asignatura_name, subject.code as asignatura_code, periood.id as perioodid,periood.name as period_name, career.id as careeid, career.name as career_name, career.code as career_code FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course  JOIN grade ON grade.id = dis.grade JOIN career ON career.id = dis.career WHERE periood.name ILIKE '%' || :periodo || '%'";
    final String FIND_BY_CAREER_NAME = "SELECT dis.id,teacher.id as teacherid, teacher.dni as teacher_cedula, teacher.name as teacher_nombre, teacher.lastname as teacher_apellido, grade.id as gradeid, grade.name as curso_name, subject.id as subjectid, subject.name as asignatura_name, subject.code as asignatura_code, periood.id as perioodid,periood.name as period_name, career.id as careeid, career.name as career_name, career.code as career_code FROM teacher_distributive dis JOIN school_period periood ON periood.id = dis.school_time JOIN teacher ON teacher.id = dis.teacher JOIN subject ON subject.id = dis.course  JOIN grade ON grade.id = dis.grade JOIN career ON career.id = dis.career WHERE career.name ILIKE '%' || :career || '%'";

    final String FIND_BY_ID= "SELECT * FROM teacher_distributive WHERE id=:id";
    final String SAVE_D_T = "INSERT INTO teacher_distributive (school_time,teacher,course,grade,career) VALUES(:school_time,:teacher,:course,:grade,:career) RETURNING id";
    
    @Query(FIND_BY_DISTRIBUTIVE_ALL)
    List<DistributiveDTO> findByDistibutiveAll();

    @Query(FIND_BY_DISTRIBUTIVE_ID)
    Optional<DistributiveDTO> findByDistributiveId(@Param("id") Long id);

    @Query(FIND_BY_TEACHER_ID)
    List<DistributiveDTO> findByTeacherId(@Param("id") Long id);

    @Query(FIND_BY_TEACHER_DNI)
    List<DistributiveDTO> findByTeacherDni(@Param("dni") String dni);

    @Query(FIND_BY_TEACHER_NAME)
    List<DistributiveDTO> findByTeacherName(@Param("name") String name);

    @Query(FIND_BY_TEACHER_LASTNAME)
    List<DistributiveDTO> findByTeacherLastname(@Param("lastname") String lastname);

    @Query(FIND_BY_TEACHER_PERIODO)
    List<DistributiveDTO> findByPeriodoName(@Param("periodo") String periodo);

    @Query(FIND_BY_CAREER_NAME)
    List<DistributiveDTO>findByCareerName(@Param("career") String career);

    @Query(SAVE_D_T)
    Long saves(
        @Param("school_time") Long schoolTime, 
        @Param("course") Long teacher, 
        @Param("course") Long course,
        @Param("grade") Long grade,
        @Param("career") Long career
    );

    @Query(FIND_BY_ID)
    Optional<Distributive>findById(@Param("id") Long id);
}
