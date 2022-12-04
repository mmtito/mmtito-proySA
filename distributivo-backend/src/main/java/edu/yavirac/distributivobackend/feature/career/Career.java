package edu.yavirac.distributivobackend.feature.career;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;

@Data
@Table("career")
public class Career {
    @Id
    private Long id;
    private String name;
    private Integer duration;
    private String img;
    private boolean status = true;   
    private String code;
}
