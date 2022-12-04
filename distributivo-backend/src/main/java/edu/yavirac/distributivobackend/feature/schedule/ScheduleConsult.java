package edu.yavirac.distributivobackend.feature.schedule;

import lombok.Data;

@Data
public class ScheduleConsult {
    private Long id;
    private String teacher;
    private String grade;
    private String subject;
    private String period;
    private String color;
    private String date;
    private String name;
    private String hour;
    private String dayNumber;
    private String classroom;

}
