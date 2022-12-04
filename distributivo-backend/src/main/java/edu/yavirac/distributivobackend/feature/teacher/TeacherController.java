package edu.yavirac.distributivobackend.feature.teacher;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;


@RestController
@RequestMapping("/api/teacher")
@CrossOrigin({"*"})
public class TeacherController {
    @Autowired
    TeacherService teacherService;
    
    @GetMapping("/findAll")
    public List<Teacher> findAll(){
        return teacherService.findAll();
    }

    @PostMapping("/save")
    public Teacher save(@RequestBody Teacher teacher){
        return teacherService.save(teacher);
    }

    @GetMapping("/findById/{id}")
    public Teacher findById (@PathVariable long id ){
        return teacherService.findById(id);
    }

    @GetMapping("/findByName/{term}")
    public List<Teacher> findByName( @PathVariable String term){
        return teacherService.findByNameLikeIgnoreCase(term + "%");
    }
    
    @GetMapping("/exportExcel")
    public void generateExcelFile(HttpServletResponse response) throws IOException {
        teacherService.generateExcelFile(response);
    }
}
