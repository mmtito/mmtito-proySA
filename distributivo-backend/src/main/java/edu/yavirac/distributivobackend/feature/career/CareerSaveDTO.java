package edu.yavirac.distributivobackend.feature.career;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class CareerSaveDTO {
    private String name;
    private MultipartFile image;
    private Integer duration;
}
