package edu.yavirac.distributivobackend.feature.schedule;

import lombok.Data;

@Data
public class Event {
    private Long id;
    private String day;
    private String hour;
    private String subject;
    private Teacher teacher;
    private String classroom;
    private String grade;
}
