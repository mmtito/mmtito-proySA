package edu.yavirac.distributivobackend.feature.grade;

import java.util.HashSet;
import java.util.Set;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.MappedCollection;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("public\".\"classroom_types")
public class GradeType {
    @Id
    private Long id;
    private String code;
    private String name;
    private boolean status = true;
    @MappedCollection(keyColumn = "type", idColumn = "id")
    private Set<Grade> classroom = new HashSet<Grade>();
}
