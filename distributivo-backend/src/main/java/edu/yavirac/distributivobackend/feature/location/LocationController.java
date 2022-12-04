package edu.yavirac.distributivobackend.feature.location;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@CrossOrigin({"*"})
@RestController
@RequestMapping("/api/location")
public class LocationController {
    @Autowired
    LocationService LocationService;

    @PostMapping()
    public Location save(@RequestBody Location Location){
        return LocationService.save(Location);
    }

    @GetMapping("/{id}")
    public Location findById(@PathVariable long id){
        return LocationService.findById(id);
    }

    @GetMapping()
    public LocationDTO findAll(
        @RequestParam(value="count", defaultValue = "20", required = false) long capacity,
        @RequestParam(value = "page", defaultValue = "0", required = true) long page
    ){
       
        return LocationService.findAllPageable(capacity, page);
    }

    @PutMapping("/")
    public Location update(@RequestBody Location Location,@PathVariable long id)
    {
        return LocationService.update(id,Location);
    }
    @ResponseStatus(HttpStatus.NO_CONTENT)
    @GetMapping("delete/{id}")
    
    public String delete(@PathVariable long id){
        LocationService.deleteById(id);
        return "si";
    }

    @GetMapping("/findAll")
    public List<Location> findAll(){
       
        return LocationService.findAll();
    }


    @GetMapping("/find/{name}")
    public List<Location> findByName(@PathVariable String name){
        return LocationService.findByName(name);
    }
    @PostMapping(value = "/import-excel")
    public List<Location> importExcelFile(@RequestParam("file") MultipartFile files) throws IOException {
        return new ArrayList<Location>();
    }
    
    @GetMapping("/export-to-excel")
    public void exportIntoExcelFile(HttpServletResponse response) throws IOException {

        LocationService.generateExcelFile(response);
    }
   
}
