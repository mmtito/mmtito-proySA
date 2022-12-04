package edu.yavirac.distributivobackend.feature.grade;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@CrossOrigin({"*"})
@RestController
@RequestMapping("/api/grade")
public class GradeController {
    @Autowired
    GradeService gradeService;

    @PostMapping()
    public Grade save(@RequestBody Grade grade){
        return gradeService.save(grade);
    }

    @GetMapping("/{id}")
    public Grade findById(@PathVariable long id){
        return gradeService.findById(id);
    }
    
    @GetMapping()
    public List<GradeForCareer> findAllByCareer(
    ){
       
        return gradeService.findAllByCareer();
    }

   /* @GetMapping()
    public GradeDTO findAll(
        @RequestParam(value="count", defaultValue = "20", required = false) long capacity,
        @RequestParam(value = "page", defaultValue = "0", required = true) long page
    ){
       
        return gradeService.findAll(capacity, page);
    }
    */
    @PostMapping("/update")
    public Grade update(@RequestBody Grade grade)
    {
        return gradeService.update(grade);
    }

    @GetMapping("delete/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public String delete(@PathVariable long id){
        gradeService.deleteById(id);
        return "si";
    }

    @GetMapping("/find/{name}")
    public List<GradeForCareer> findByName(@PathVariable String name){
        return gradeService.findByNameForCareer(name);
    }
    @PostMapping(value = "/import-excel")
    public List<Grade> importExcelFile(@RequestParam("file") MultipartFile files) throws IOException {
        
        return gradeService.importExcel(files);
    }
    
    @GetMapping("/export-to-excel")
    public void exportIntoExcelFile(HttpServletResponse response) throws IOException {

        gradeService.generateExcelFile(response);
    }

    @GetMapping("/findAll")
    public List<Grade> findAll(){
        return gradeService.findAll();
    }

    @GetMapping("/careers")
    public List<Career> getCareers(){
        return gradeService.getCareers();
    }
    
   
}
