package edu.yavirac.distributivobackend.feature.career;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/api/career")
@CrossOrigin({ "*" })
public class CareerController {
    @Autowired
    CareerService careerService;

    // FIND ALL

    @GetMapping("/findAll")
    public List<Career> findAll() {
        return careerService.findAll();
    }

    // FIND BY ID

    @GetMapping("/findById/{id}")
    public Career findById(@PathVariable long id) {
        return careerService.findById(id);
    }

    // DELETE BY ID

    @GetMapping("/deleteById/{id}")
    public void deleteById(@PathVariable long id) {
        careerService.deleteById(id);
    }

    // SAVE

    @PostMapping(path = "/save"

    )
    public Career save(
            @RequestParam String name,
            @RequestParam(required = false) MultipartFile image,

            @RequestParam Integer duration) {
        return careerService.save(image, name, duration);

    }

    // UPDATE
    @PostMapping(path = "/update"

    )
    public Career update(
            @RequestParam String name,
            @RequestParam(required = false) MultipartFile image,
            @RequestParam() Long id,
            @RequestParam Integer duration) {
        return careerService.update(image, name, duration, id);

    }

}
