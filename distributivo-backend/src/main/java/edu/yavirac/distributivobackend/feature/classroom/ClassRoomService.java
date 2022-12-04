package edu.yavirac.distributivobackend.feature.classroom;

import edu.yavirac.distributivobackend.util.ExcelGenerator;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class ClassRoomService {
    @Autowired
    ClassRoomRepository classroomRepository;

    public ClassroomDTO findAllConsult(long capacity, long page) {

        long offset = page <= 0 ? 0 : page * capacity;

        ClassroomDTO dto = new ClassroomDTO();
        dto.setClassrooms(classroomRepository.findAllConsult(capacity, offset));
        dto.setTotal(classroomRepository.count());
        dto.setTotalPages(dto.getTotal() / capacity + 1);
        dto.setCapacity(capacity);
        dto.setPage(page);
        return dto;

    }

    public List<Classroom> findAll(){
        return classroomRepository.finAll();
    }

    public Classroom save(Classroom classroom) {

        return this.executeSave(classroom);

    }

    public Classroom findById(long id) {
        return classroomRepository.findById(id).orElse(new Classroom());

    }

    public Classroom update(Classroom classroom) {
        return this.executeUpdate(classroom);
    }

    public void deleteById(long id) {
        classroomRepository.deleteclassroom(id);
    }

    public List<Classroom> findByName(String name) {
        return classroomRepository.findByNameLikeIgnoreCase(name + "%");
    }

    public void generateExcelFile(HttpServletResponse response) throws IOException {

        response.setContentType("application/octet-stream");
        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filename=classroom.xlsx";
        response.setHeader(headerKey, headerValue);
        List<String> rows = Arrays.asList("NAME","DESCRIPCION" ,"UBICACION", "CAPACIDAD", "TIPO");
        ExcelGenerator excelGenerator = new ExcelGenerator();
        excelGenerator.generateExcelFile(response, rows);
    }

    public List<Classroom> importExcel(MultipartFile files) throws IOException {
        List<Classroom> classroomList = new ArrayList<>();

        try (XSSFWorkbook workbook = new XSSFWorkbook(files.getInputStream())) {
            XSSFSheet worksheet = workbook.getSheetAt(0);

            for (int index = 0; index < worksheet.getPhysicalNumberOfRows(); index++) {
                if (index > 0) {
                    Classroom classroom = new Classroom();

                    XSSFRow row = worksheet.getRow(index);

                    if(row.getCell(0) != null) classroom.setName(row.getCell(0).getStringCellValue());
                    if(row.getCell(1) != null) classroom.setDescription(row.getCell(1).getStringCellValue());
                    if(row.getCell(2) != null)  classroom.setLocation(Math.round(row.getCell(2).getNumericCellValue()));
                    if(row.getCell(3) != null) classroom.setCapacity(Math.round(row.getCell(3).getNumericCellValue()));
                    if(row.getCell(4) != null){ 
                       
                       if(row.getCell(4).getNumericCellValue() > 0) classroom.setType(Math.round(row.getCell(4).getNumericCellValue()));
                     
                    };
                    classroomList.add(this.executeSave(classroom));

                }
            }
        }
        return classroomList;
    }

    private Classroom executeSave(Classroom c) {
        return classroomRepository.findById(
                classroomRepository.mySave(
                        c.getName(), true, c.getCapacity(),
                        c.getType(), c.getLocation(), c.getDescription()))
                .get();

    }

    private Classroom executeUpdate(Classroom c) {
        return classroomRepository.findById(
                classroomRepository.update(
                        c.getId(), c.getName(), c.getCapacity(),
                        c.getType(), c.getLocation(), c.getDescription()))
                .get();

    }
}