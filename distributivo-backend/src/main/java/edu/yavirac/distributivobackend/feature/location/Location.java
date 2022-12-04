package edu.yavirac.distributivobackend.feature.location;

import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

@Data
@Table("public\".\"locations")
public class Location {
    @Id
    @Column("id") 
    private Long id;
    private String name;
    private String description;
    private long latitude;
    private long longitude;
    private boolean status =  true;
}