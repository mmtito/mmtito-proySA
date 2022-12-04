package edu.yavirac.distributivobackend.feature.user;
import java.util.List;

import lombok.Data;

@Data()
public class UserDTO {
    private long total;
    private long page;
    private long totalPages;
    private long capacity;
    private List<UserConsult> users;
}
