package edu.yavirac.distributivobackend.feature.grade;
import org.springframework.data.relational.core.mapping.Column;

import lombok.Data;

@Data
public class GradeConsult {
    private Long id;
    private String name;
    private Long workingDay;
    private Long level;
    private Long parallel;
    private Long career;
    @Column(value = "career_name")
    private String careerName;
    private boolean status =  true;
    
}
