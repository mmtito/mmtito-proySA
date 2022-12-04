package edu.yavirac.distributivobackend.feature.grade;
import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data()
public class GradeForCareer {
    private String name;
    private List<Grade> grades = new ArrayList<Grade>() ;
    
}
