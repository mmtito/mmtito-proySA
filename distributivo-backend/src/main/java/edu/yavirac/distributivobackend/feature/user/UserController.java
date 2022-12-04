package edu.yavirac.distributivobackend.feature.user;

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
@CrossOrigin("*")
@RequestMapping("/api/user")
public class UserController {

    @Autowired
    UserService userService;

    @GetMapping()
    public UserDTO findAlllPageable(
            @RequestParam(value = "count", defaultValue = "20", required = false) long capacity,
            @RequestParam(value = "page", defaultValue = "0", required = true) long page) {

        return userService.findAllPageable(capacity, page);
    }

    @PostMapping()
    public UserConsult save(@RequestBody User user) {
        return userService.save(user);
    }



    @PostMapping("/update")
    public UserConsult update(@RequestBody User user) {
        return userService.save(user);
    }

   
    @GetMapping("/delete/role/{id}")
    public void deleteRole(@PathVariable Long id) {
        userService.deleteRole(id);
    }
    @GetMapping("/{id}")
    public UserConsult findByName(@PathVariable Long id) {
        return userService.findById(id);
    }
    @GetMapping("/find/{name}")
    public List<UserConsult> findByName(@PathVariable String name) {
        return userService.findByName(name);
    }

    @GetMapping("/delete/{id}")
    public void deleteUser(@PathVariable Long id) {
        userService.deleteById(id);
    }

    @PostMapping(value = "/import-excel")
    public List<User> importExcelFile(@RequestParam("file") MultipartFile files) throws IOException {

        return userService.importExcel(files);
    }

    @GetMapping("/export-to-excel")
    public void exportIntoExcelFile(HttpServletResponse response) throws IOException {

        userService.generateExcelFile(response);
    }

}
