package edu.yavirac.distributivobackend.feature.schedule;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/api/schedule")
public class ScheduleControllers {
    @Autowired
    private ScheduleService scheduleService;

    @GetMapping()
    public Schedule findEvenetsSchedule(
        @RequestParam( value = "teacher" , required = false ) Long teacher,
        @RequestParam( value = "period" , required = false ) Long periood,
        @RequestParam( value = "grade", required = false ) Long grade,
        @RequestParam( value = "room", required = false ) Long classroom,
        @RequestParam( value = "td", required = false) String to,
        @RequestParam( value = "fd", required = false) String from
        
    ){
        ScheduleOptionsConsultDto options = new ScheduleOptionsConsultDto(teacher, periood, grade, classroom, from, to);
        return scheduleService.findEventsSchedule(options);
    }

    @PostMapping("")
    public TimeConfiguration save(@RequestBody SaveEventDTO event){
        return scheduleService.save(event);
    }

    @PostMapping("import-excel")
    public void importExcel(@RequestParam("file") MultipartFile file) throws IOException {
     scheduleService.importExcel(file);

    }

    @PostMapping("/range")
    public void saveRange(@RequestBody SaveRangeDTO data){
        scheduleService.saveRange(data);
    }


    @GetMapping("delete/{id}")
    @ResponseStatus(HttpStatus.NO_CONTENT)
    public void deleteEvent(@PathVariable Long id){
        this.scheduleService.deleteEvent(id);
    }

}
