package edu.yavirac.distributivobackend.feature.classroom;
import java.util.List;

import lombok.Data;

@Data()
public class ClassroomDTO {
    private long total;
    private long page;
    private long totalPages;
    private long capacity;
    private List<ClassroomConsult> classrooms;
}
