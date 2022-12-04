package edu.yavirac.distributivobackend.feature.schedule;

import java.util.List;
import lombok.Data;

@Data
public class Hour {
    private String position;
    private List<Event> events;
}
