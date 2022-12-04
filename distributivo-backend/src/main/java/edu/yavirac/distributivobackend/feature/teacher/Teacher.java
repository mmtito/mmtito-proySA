package edu.yavirac.distributivobackend.feature.teacher;

import java.util.HashSet;
import java.util.Set;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.MappedCollection;
import org.springframework.data.relational.core.mapping.Table;
import lombok.Data;

@Data
@Table("teacher")
public class Teacher {
    @Id
    @Column("id")
    private long id;
    private String dni;
    private String name;
    private String lastname;
    private String color;
    private String email;
    private Boolean archived;

    @MappedCollection(idColumn = "id")
    private Set<TeacherDistributive> teacherDistributives = new HashSet<>();
}
