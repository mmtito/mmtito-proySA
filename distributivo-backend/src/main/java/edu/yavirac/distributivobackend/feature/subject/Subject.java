package edu.yavirac.distributivobackend.feature.subject;


import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("subject")
public class Subject {
    @Id
    @Column("id")
    private long id;
    private String code;
    private String name;
    @Column("theoretical_hours")
    private String theoreticalHours;
    @Column("laboratory_hours")
    private String laboratoryHours;
    private Number career;

}
