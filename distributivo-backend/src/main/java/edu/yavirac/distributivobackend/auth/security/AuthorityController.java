package edu.yavirac.distributivobackend.auth.security;

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
@CrossOrigin({"*"})
@RequestMapping("/api/authority/")
public class AuthorityController {

    @Autowired
    AuthorityService authorityService;

    //Create and update
    @PostMapping("save")
    public Authority save(@RequestBody Authority authority){
        return authorityService.save(authority);
    }

    @GetMapping("findById/{id}")
    public Authority findById(@PathVariable long id){
        return authorityService.findById(id);
    }

    @DeleteMapping("deleteById/{id}")
    public void deleteById(@PathVariable long id){
        authorityService.deleteById(id);
    }

    @GetMapping("findAll")
    public List<Authority> findAll(){
        return authorityService.findAll();
    }

    @GetMapping("/findByName/{term}")
    public List<Authority> findByName(@PathVariable String term){
        return authorityService.findByName(term);
    }
    
}
