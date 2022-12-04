package edu.yavirac.distributivobackend.feature.grade;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;


@Data
@Table("public\".\"classrooms")
public class Grade {
    @Id
    @Column("id") 
    private Long id;
    private String name;
    private Long workingDay;
    private Long level;
    private Long parallel;
    private Long career;
    private boolean status =  true;
}
