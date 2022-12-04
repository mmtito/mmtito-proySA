package edu.yavirac.distributivobackend.feature.schedule;

import lombok.Data;

@Data
public class HourEntity {
    private Long id;
    private String hour;
    private Integer timePosition; 
}
