package edu.yavirac.distributivobackend.feature.grade;
import java.util.List;

import lombok.Data;

@Data()
public class GradeDTO {
    private long total;
    private long page;
    private long totalPages;
    private long capacity;
    private List<GradeConsult> grades;
}
