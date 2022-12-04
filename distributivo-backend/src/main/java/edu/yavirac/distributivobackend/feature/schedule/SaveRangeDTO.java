package edu.yavirac.distributivobackend.feature.schedule;

import java.time.LocalDate;

import lombok.Data;

@Data
public class SaveRangeDTO {
    private Integer schoolPeriod;
    private Integer classroom;
    private String day;
    private LocalDate date;
    private String hour; 
    private Integer occupiedBy;
    private RangeOptEvent rangeOpt;     
}
