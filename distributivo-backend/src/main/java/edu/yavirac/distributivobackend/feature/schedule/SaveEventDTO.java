package edu.yavirac.distributivobackend.feature.schedule;

import java.time.LocalDate;

import lombok.Data;

@Data
public class SaveEventDTO {
    private Long id;
    private Integer schoolPeriod;
    private Integer classroom;
    private LocalDate date;
    private String hour; 
    private Integer occupiedBy;       
}
