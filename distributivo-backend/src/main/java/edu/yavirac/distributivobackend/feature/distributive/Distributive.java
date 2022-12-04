package edu.yavirac.distributivobackend.feature.distributive;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("teacher_distributive")
public class Distributive {
    @Id
    private long id;
    private Long schoolTime;
    private Long teacher ;
    private Long course;
    private Long grade;
    private Long career;
}
