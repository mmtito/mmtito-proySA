package edu.yavirac.distributivobackend.feature.schedule;

import java.time.LocalDate;

import org.springframework.data.annotation.Id;

import lombok.Data;

@Data
public class TimeConfiguration {
    @Id
    private Long id;
    private Integer schoolPeriod;
    private Integer classroom;
    private Integer day;
    private LocalDate date;
    private Integer hour; 
    private Integer occupiedBy;     
    private boolean status = true; 
    private String color;
}
