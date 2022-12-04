package edu.yavirac.distributivobackend.feature.schoolPeriod;

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
@RequestMapping("/api/schoolPeriod")
@CrossOrigin({"*"})

public class SchoolPeriodController {
    @Autowired
    SchoolPeriodService schoolPeriodService;

    @GetMapping("/findAll")
    public List<SchoolPeriod>findAll(){
        return schoolPeriodService.findAll();
    }

    @PostMapping("/save")
    public SchoolPeriod save (@RequestBody SchoolPeriod schoolPeriod){
        return schoolPeriodService.save(schoolPeriod);
    }

    @GetMapping("/findById/{id}")
    public SchoolPeriod findById(@PathVariable long id){
        return schoolPeriodService.findById(id);
    }

    @DeleteMapping("/deleteById/{id}")
    public void deleteById(@PathVariable long id ){
        schoolPeriodService.deleteById(id);
    }
}
