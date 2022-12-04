package edu.yavirac.distributivobackend.feature.schedule;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class RangeOptEvent {
    private LocalDate start;
    private LocalDate end ;
    private List<DayWeekSelect> days = new ArrayList<>();
  
}
