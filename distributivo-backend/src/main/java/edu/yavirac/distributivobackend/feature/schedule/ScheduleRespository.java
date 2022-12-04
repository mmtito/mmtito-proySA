package edu.yavirac.distributivobackend.feature.schedule;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import edu.yavirac.distributivobackend.config.Conexion;
import edu.yavirac.distributivobackend.util.NumberUtils;
import edu.yavirac.distributivobackend.util.StringUtils;

@Repository
public interface ScheduleRespository extends CrudRepository<TimeConfiguration, Long> {
    final String SELECT_BY_TEACHER = "SELECT cl.name classroom ,d.posicion day_number,ht.time_position, tc.id, teacher.name as teacher,grade.name grade, subject.name subject,periood.name period,teacher.color, tc.date, d.name, ht.hour FROM teacher_distributive dis  JOIN school_period periood ON periood.id = dis.school_time  JOIN teacher ON teacher.id = dis.teacher  JOIN subject ON subject.id = dis.course  JOIN grade ON grade.id = dis.grade  JOIN time_configuration tc ON dis.id = tc.occupied_by JOIN hours_table ht ON ht.id = tc.hour JOIN day d ON d.id = tc.day  JOIN classrooms cl ON cl.id=tc.classroom  WHERE tc.status=true";
    final String SELECT_CAREER_ID = "SELECT id FROM career WHERE status = true and name ~*'DESA'";
    final String SELECT_ID_HOUR_AND_PERIOD = "SELECT dis.id, ht.id AS hour,d.id as day, periood.id AS period, cl.id AS classroom FROM teacher_distributive dis JOIN school_period periood ON periood.id= dis.school_time JOIN teacher ON teacher.id=dis.teacher JOIN subject ON subject.id = dis.course JOIN grade ON grade.id = dis.grade JOIN day d ON d.name ilike :day JOIN classrooms cl ON cl.code ilike :classroom JOIN hours_table ht ON ht.hour = :hour WHERE teacher.dni ilike :dni AND periood.name = :period AND subject.code ILIKE :subject AND grade.name ILIKE :grade AND cl.code ilike :classroom AND ht.hour = :hour AND d.name ilike :day";
    final String GET_SCHEDULE_EVENTS = "SELECT * FROM schedule";
    final String GET_HOURS = "SELECT * FROM hours_table";
    final String GET_ID_DIS_TEACHER = "SELECT dis.id FROM teacher_distributive dis JOIN school_period periood ON periood.id= dis.school_time JOIN teacher ON teacher.id=dis.teacher JOIN subject ON subject.id = dis.course  JOIN grade ON grade.id = dis.grade WHERE teacher.name ilike :teacher AND periood.name = :period AND subject.name ILIKE :subject AND grade.name ILIKE :grade";
    final String GET_HOUR_AND_DAY_ID = "SELECT h.id as hour_id, d.id as day_id FROM day d JOIN hours_table h ON h.hour = :hour WHERE d.name ilike :day AND h.hour=:hour";
    final String SELECT_ID_HOUR ="SELECT id  FROM hours_table h WHERE h.hour=:hour";
    final String SELECT_ID_DAY ="SELECT id FROM day WHERE day.name ilike :day";
    final String SELECT_ALL_DAYS = "SELECT * FROM day";
    @Query(GET_SCHEDULE_EVENTS)
    List<ScheduleConsult> findScheduleEvents();

    @Query(SELECT_ID_HOUR_AND_PERIOD)
    ConsultIds getIdDisByParameters(
            @Param("dni") String dni, @Param("period") String period,
            @Param("subject") String subject, @Param("grade") String grade,
            @Param("hour") String hour,@Param("classroom") String classroom,
            @Param("day") String day);

    @Query(GET_HOURS)
    public List<HourEntity> findHours();

    @Query(SELECT_ID_DAY)
    public Integer findIdDay(@Param("day") String day );
    @Query(SELECT_ID_HOUR)
    public Integer findIdHour(@Param("hour") String hour );

    @Query(GET_HOUR_AND_DAY_ID)
    public HourAndDay selectIdHourAndDay(@Param("hour") String hour,@Param("day") String day);

    @Query(SELECT_ALL_DAYS)
    public List<Day> findAllDays();
    

    public static List<ScheduleConsult> findAllFilteredEvents(ScheduleOptionsConsultDto params) {

        List<ScheduleConsult> scheduleConsults = new ArrayList<>();

        try {
            Connection connection = Conexion.getConnetion();
            StringBuilder query = new StringBuilder(SELECT_BY_TEACHER);

            if (!StringUtils.isNullOrEmpty(params.getFrom())) {
                query.append(" AND tc.date >='").append(params.getFrom()).append("'");
            }

            if (!StringUtils.isNullOrEmpty(params.getTo())) {
                query.append(" AND tc.date <='").append(params.getTo()).append("'");
            }

            if (!NumberUtils.isNullOrEmpty(params.getPeriood())) {
                query.append(" AND periood.id=").append(params.getPeriood());

            }
            if (!NumberUtils.isNullOrEmpty(params.getGrade())) {
                query.append(" AND grade.id=").append(params.getGrade());

            }
            if (!NumberUtils.isNullOrEmpty(params.getTeacher())) {
                query.append(" AND teacher.id=").append(params.getTeacher());

            }

            if (!NumberUtils.isNullOrEmpty(params.getClassroom())) {
                query.append(" AND cl.id=").append(params.getClassroom());

            }

            PreparedStatement preparedStatement = connection.prepareStatement(query.toString());
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                ScheduleConsult scheduleConsult = new ScheduleConsult();

                scheduleConsult.setId(resultSet.getLong("id"));
                scheduleConsult.setClassroom(resultSet.getString("classroom"));
                scheduleConsult.setDayNumber(resultSet.getString("day_number"));
                scheduleConsult.setHour(resultSet.getString("hour"));
                scheduleConsult.setDate(resultSet.getString("date"));
                scheduleConsult.setName(resultSet.getString("name"));
                scheduleConsult.setColor(resultSet.getString("color"));
                scheduleConsult.setGrade(resultSet.getString("grade"));
                scheduleConsult.setPeriod(resultSet.getString("period"));
                scheduleConsult.setSubject(resultSet.getString("subject"));
                scheduleConsult.setTeacher(resultSet.getString("teacher"));

                scheduleConsults.add(scheduleConsult);

            }
            connection.close();
        } catch (SQLException err) {
            throw new Error(err);
        }
        return scheduleConsults;
    }

}


