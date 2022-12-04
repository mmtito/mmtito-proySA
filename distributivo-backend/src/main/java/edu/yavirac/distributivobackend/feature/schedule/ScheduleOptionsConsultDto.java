package edu.yavirac.distributivobackend.feature.schedule;

import lombok.Data;
@Data
public class ScheduleOptionsConsultDto {
    private Long teacher;
    private Long periood;
    private Long grade;
    private Long classroom;
    private String from;
    private String to;

    public ScheduleOptionsConsultDto(
        Long teacher, Long periood, Long grade, Long classroom, String from, String to) {
        this.classroom = classroom;
        this.from = from;
        this.to = to;
        this.periood = periood;
        this.teacher = teacher;
        this.grade = grade;

    }

    public ScheduleOptionsConsultDto(){
        //
    }

}
