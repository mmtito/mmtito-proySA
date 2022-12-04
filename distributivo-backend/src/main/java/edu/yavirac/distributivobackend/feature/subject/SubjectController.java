package edu.yavirac.distributivobackend.feature.subject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/subject")
@CrossOrigin({"*"})
public class SubjectController {
    @Autowired
    SubjectService subjectService;

    @GetMapping("/findAll")
    public List<Subject> findAll(){
        return subjectService.findAll();
    }

    @GetMapping("/findById/{id}")
    public Subject findById(@PathVariable long id){
        return subjectService.findById(id);
    }

    @PostMapping("/save")
    public Subject save(@RequestBody Subject subject){
        return subjectService.save(subject);
    }

    @DeleteMapping("/deleteById/{id}")
    public void deleteById(@PathVariable long id){
        subjectService.deleteById(id);
    }
}
