package edu.yavirac.distributivobackend.feature.distributive;


import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("distributive")
public class DistributiveDTO{
    @Id
    private long id;
    private Long teacherid;
    private String teacherCedula;
    private String teacherNombre;
    private String teacherApellido;
    private String grade;
    private String subject;
    private String period;
    private String color;
    private Long gradeid;
    private String cursoName;
    private Long subjectid;
    private String asignaturaName;
    private String asignaturaCode;
    private Long perioodid;
    private String periodName;
    private Long   careeid;
    private String careerName;
    private String careerCode;
}