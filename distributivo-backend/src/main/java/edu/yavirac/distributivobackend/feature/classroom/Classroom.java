package edu.yavirac.distributivobackend.feature.classroom;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;


@Data
@Table("public\".\"classrooms")
public class Classroom {
    @Id
    @Column("id") 
    private Long id;
    private String code;
    private Long type;
    private Long location;
    private String name;
    private Long capacity;
    private String description;
    private boolean status =  true;
}