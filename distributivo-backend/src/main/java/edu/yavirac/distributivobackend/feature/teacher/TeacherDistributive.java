package edu.yavirac.distributivobackend.feature.teacher;

import lombok.Data;

@Data
public class TeacherDistributive {
    private long id;
    private Long teacher;
    private Long schoolTime;
    private Long course;
    private Long grade;
    }
