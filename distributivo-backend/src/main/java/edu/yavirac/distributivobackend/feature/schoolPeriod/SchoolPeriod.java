package edu.yavirac.distributivobackend.feature.schoolPeriod;

import java.util.Date;

import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

import lombok.Data;


@Data
@Table("school_period")
public class SchoolPeriod {
    @Id
    private long id;
    private String name;
    @Column("start_date")
    private Date startDate;
    @Column("end_date")
    private Date endDate;
    private boolean status;    
}
