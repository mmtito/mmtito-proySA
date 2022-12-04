package edu.yavirac.distributivobackend.feature.distributive;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@RestController
@RequestMapping("/api/distributive")
@CrossOrigin({ "*" })
public class DistributiveController {
    @Autowired
    DistributiveService distributiveService;

    @GetMapping("/findAll")
    public List<DistributiveDTO> findAll() {
        return distributiveService.findAll();
    }

    @GetMapping("/findByDistributiveId/{id}")
    public DistributiveDTO findByIdDistributive(@PathVariable long id) {
        return distributiveService.findByDistributiveId(id);
    }

    @GetMapping("/findByIdTeacher/{id}")
    public List<DistributiveDTO> findByTeacherId(@PathVariable long id) {
        return distributiveService.findByTeacherId(id);
    }

    @PostMapping("/save")
    public Distributive save(@RequestBody Distributive distributive) {
        return distributiveService.save(distributive);
    }

    @GetMapping("/findByName/{name}")
    public List<DistributiveDTO> findByName(@PathVariable String name){
        return distributiveService.findByName(name);
    }

  
    @GetMapping("/findByTeacherDni/{dni}")
    public List<DistributiveDTO> findByTeacherDni(@PathVariable String dni) {
        return distributiveService.findByTeacherDni(dni + "%");
    }

    @GetMapping("/findByTeacherName/{name}")
    public List<DistributiveDTO> findByTeacherName(@PathVariable String name) {
        return distributiveService.findByTeacherName(name + "%");
    }

    @GetMapping("/findByTeacherLastname/{lastname}")
    public List<DistributiveDTO> findByTeacherLastname(@PathVariable String lastname) {
        return distributiveService.findByTeacherLastname(lastname + "%");
    }

    @GetMapping("/findByPeriodoName/{periodo}")
    public List<DistributiveDTO> findByPeriodoName(@PathVariable String periodo) {
        return distributiveService.findByPeriodoName(periodo + "%");
    }

    @GetMapping("/findByCareerName/{career}")
    public List<DistributiveDTO> findByCareerName(@PathVariable String career) {
        return distributiveService.findByCareerName(career + "%");
    }

    @GetMapping("/exportExcel")
    public void generateExcelFile(HttpServletResponse response) throws IOException{
        distributiveService.generateExcelFile(response);
    }
}