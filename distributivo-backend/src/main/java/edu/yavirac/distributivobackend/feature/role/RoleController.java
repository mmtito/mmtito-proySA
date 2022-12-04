package edu.yavirac.distributivobackend.feature.role;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/role")
public class RoleController {
    
    @Autowired RoleService roleService;



    @PostMapping()
    public Role save(@RequestBody Role Role){
        return roleService.save(Role);
    }

    @PostMapping("/update")
    public Role update(@RequestBody Role Role){
        return roleService.save(Role);
    }

    @GetMapping("/{id}")
    public Role  findById(@PathVariable Long id){
        return roleService.findById(id);

    }

    @GetMapping("/find/{name}")
    public List<Role> findByName(@PathVariable String name){
        return roleService.findByName(name);
    }

    @GetMapping("/delete/{id}") 
    public void deleteRole(@PathVariable Long id ) {
        roleService.deleteById(id);
    }
   
    @GetMapping("/findAll")
    public List<Role> findAll(){
        return roleService.findAll();
    }

       /* @GetMapping()
    public RoleDTO findAlllPageable(
        @RequestParam(value="count", defaultValue = "20", required = false) long capacity,
        @RequestParam(value = "page", defaultValue = "0", required = true) long page
    ){
       
        return roleService.findAllPageable(capacity, page);
    }
    */
    
}

