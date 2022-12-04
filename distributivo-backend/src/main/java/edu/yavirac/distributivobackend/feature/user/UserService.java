package edu.yavirac.distributivobackend.feature.user;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import edu.yavirac.distributivobackend.auth.security.SecurityConfiguration;
import edu.yavirac.distributivobackend.feature.role.RoleService;
import edu.yavirac.distributivobackend.feature.role.UserRole;
import edu.yavirac.distributivobackend.feature.role.UserRoleRepository;
import edu.yavirac.distributivobackend.util.ExcelGenerator;

@Service
public class UserService implements UserDetailsService {

    @Autowired
    UserRepository userRepository;
    @Autowired
    RoleService roleService;
    @Autowired
    UserRoleRepository userRoleRepository;

    // Create and update
    public UserConsult save(User entity) {
        Set<UserRole> roles = entity.getRoles();
        SecurityConfiguration securityConfiguration = new SecurityConfiguration();
        BCryptPasswordEncoder encoder = securityConfiguration.bCryptPasswordEncoder();
        entity.setPassword(encoder.encode(entity.getPassword()));
        User newUser = userRepository.save(entity);
        roles.forEach((userRole) ->{ 
            if(userRole.getId() == null ){
            userRole.setUserId(newUser.getId());
            userRoleRepository.save(userRole);
            }
        });

        UserConsult userConsult = new UserConsult();
        userConsult.setId(newUser.getId());
        userConsult.setName(newUser.getName());
        userConsult.setUsername(newUser.getUsername());
        userConsult.setPassword(newUser.getPassword());
        userConsult.setRoles(userRoleRepository.findbyUser(newUser.getId()));
   
        return userConsult;
    }

    public void deleteRole( Long id){
        userRoleRepository.deleteById(id);

    }

    // Read
    
    public UserConsult findById(long id) {
        UserConsult user = userRepository.findUserId(id).orElseThrow();
        user.setRoles(userRoleRepository.findbyUser(user.getId()));
        return user;
    }

    // Delete
    public void deleteById(long id) {
        userRepository.deleteUser(id);
    }

    public List<User> findAll() {
        return userRepository.findAll();
    }

    public List<UserConsult> findByName(String name) {
        return userRepository.findByNameLikeIgnoreCase(name + '%');

    }

    public UserDTO findAllPageable(long capacity, long page) {

        long offset = page <= 0 ? 0 : page * capacity;

        UserDTO dto = new UserDTO();

        List<UserConsult> users = userRepository.findAllPageable(capacity, offset);
        for (int i = 0; i < users.size(); i++) {
            UserConsult userConsult = users.get(i);
            userConsult.setRoles(userRoleRepository.findbyUser(userConsult.getId()));
            users.set(i, userConsult);
            
        }

        dto.setUsers(users);
        dto.setTotal(userRepository.count());
        dto.setTotalPages(dto.getTotal() / capacity + 1);
        dto.setCapacity(capacity);
        dto.setPage(page);
        

        return dto;

    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        return this.getUserAuthoritiesByUsername(username);
    }

    public User getUserAuthoritiesByUsername(String username) {
        User user = userRepository.findByUsername(username);
        List<GrantedAuthority> grantedAuthorities = new ArrayList<>();

        for (UserRole userRole : user.getRoles()) {
            List<String> authorities = roleService.getAuthoritiesByRolid(userRole.getRoleId());
            for (String authorityName : authorities) {
                grantedAuthorities.add(new SimpleGrantedAuthority(authorityName));
            }
        }
        user.setAuthorities(grantedAuthorities);
        return user;
    }

    public void generateExcelFile(HttpServletResponse response) throws IOException {

        response.setContentType("application/octet-stream");
        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filename=User.xlsx";
        response.setHeader(headerKey, headerValue);
        List<String> rows = Arrays.asList("NAME", "USERNAME", "CONTRASENA", "ROL");
        ExcelGenerator excelGenerator = new ExcelGenerator();
        excelGenerator.generateExcelFile(response, rows);

    }

    public List<User> importExcel(MultipartFile files) throws IOException {

        try (XSSFWorkbook workbook = new XSSFWorkbook(files.getInputStream())) {
            XSSFSheet worksheet = workbook.getSheetAt(0);

            for (int index = 0; index < worksheet.getPhysicalNumberOfRows(); index++) {
                if (index > 0) {
                    User user = new User();
                    UserRole role = new UserRole();

                    XSSFRow row = worksheet.getRow(index);
                    if (row.getCell(0) != null)
                        user.setName(row.getCell(0).getStringCellValue());
                    if (row.getCell(1) != null)
                        user.setUsername(row.getCell(1).getStringCellValue());
                    if (row.getCell(2) != null) {
                        user.setPassword(row.getCell(2).getRawValue());
                        SecurityConfiguration securityConfiguration = new SecurityConfiguration();
                        BCryptPasswordEncoder encoder = securityConfiguration.bCryptPasswordEncoder();
                        user.setPassword(encoder.encode(user.getPassword()));

                    }
                    ;
                    if (row.getCell(3) != null) {
                        role.setRoleId(Math.round(row.getCell(3).getNumericCellValue()));

                    }
                    ;

                    User newUser = userRepository.save(user);
                    role.setUserId(newUser.getId());
                    
                    userRoleRepository.save(role);

                };
             
            }
        }
        return new ArrayList<User>();
    }

}
