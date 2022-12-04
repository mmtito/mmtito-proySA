package edu.yavirac.distributivobackend.feature.schedule;
import java.util.ArrayList;
import java.util.List;
import lombok.Data;

@Data
public class Schedule {
    private List<String> toFrom = new ArrayList<String>();
    private String month;
    private List<Hour> hours;
}
