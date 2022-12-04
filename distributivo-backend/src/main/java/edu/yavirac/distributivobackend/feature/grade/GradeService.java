package edu.yavirac.distributivobackend.feature.grade;

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
public class GradeService {
    @Autowired
    GradeRepository gradeRepository;
    
    //services

    public GradeDTO findAllConsult(long capacity, long page) {

        long offset = page <= 0 ? 0 : page * capacity;
        GradeDTO dto = new GradeDTO();
        dto.setGrades(gradeRepository.findAll(capacity, offset));
        dto.setTotal(gradeRepository.count());
        dto.setTotalPages(dto.getTotal() / capacity + 1);
        dto.setCapacity(capacity);
        dto.setPage(page);
        return dto;

    }

    public List<GradeForCareer> findAllByCareer() {

        List<Grade> grades = gradeRepository.getAll();

        return separarteByCareer(grades);

    }

    public List<Grade> findAll(){
        return gradeRepository.getAll();
    }

    public Grade save(Grade grade) {

        return this.executeSave(grade);

    }

    public Grade findById(long id) {
        return gradeRepository.findById(id).orElse(new Grade());

    }

    public Grade update(Grade grade) {
        return this.executeUpdate(grade);
    }

    public void deleteById(long id) {
        gradeRepository.deleteGrade(id);
    }

    public List<GradeForCareer> findByNameForCareer(String name) {
        return separarteByCareer(gradeRepository.findByNameLikeIgnoreCase(name + "%"));
    }

    public void generateExcelFile(HttpServletResponse response) throws IOException {

        response.setContentType("application/octet-stream");
        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filename=grade.xlsx";
        response.setHeader(headerKey, headerValue);
        List<String> rows = Arrays.asList("NAME", "CARRERA", "NIVEL", "PARALELO", "JORNADA");
        ExcelGenerator excelGenerator = new ExcelGenerator();
        excelGenerator.generateExcelFile(response, rows);
    }

    public List<Grade> importExcel(MultipartFile files) throws IOException {
        List<Grade> gradeList = new ArrayList<>();

        try (XSSFWorkbook workbook = new XSSFWorkbook(files.getInputStream())) {
            XSSFSheet worksheet = workbook.getSheetAt(0);

            for (int index = 0; index < worksheet.getPhysicalNumberOfRows(); index++) {
                if (index > 0) {
                    Grade grade = new Grade();

                    XSSFRow row = worksheet.getRow(index);

                    if (row.getCell(0) != null)
                        grade.setName(row.getCell(0).getStringCellValue());
                    if (row.getCell(1) != null)
                        grade.setCareer(Math.round(row.getCell(1).getNumericCellValue()));
                    if (row.getCell(2) != null)
                        grade.setLevel(Math.round(row.getCell(2).getNumericCellValue()));
                    if (row.getCell(3) != null)
                        grade.setParallel(Math.round(row.getCell(3).getNumericCellValue()));
                    if (row.getCell(4) != null)
                        grade.setWorkingDay(Math.round(row.getCell(4).getNumericCellValue()));

                    gradeList.add(this.executeSave(grade));

                }
            }
        }
        return gradeList;
    }

    public List<Career> getCareers() {
        return gradeRepository.getCareers();
    }

    //functions to services

    private List<GradeForCareer> separarteByCareer(List<Grade> grades) {
        List<GradeForCareer> gradesForCareer = new ArrayList<GradeForCareer>();
        List<Career> careers = gradeRepository.getCareers();

        for (Career career : careers) {
            GradeForCareer gradeForCareer = new GradeForCareer();

            gradeForCareer.setName(career.getName());

            List<Grade> gradesByCareer = new ArrayList<Grade>();

            grades.stream().filter(g -> g.getCareer() == career.getId()).forEach(g -> gradesByCareer.add(g));

            gradeForCareer.setGrades(gradesByCareer);
            if (gradeForCareer.getGrades().size() == 0)
                continue;
            gradesForCareer.add(gradeForCareer);

        }

        return gradesForCareer;

    }

    private Grade executeSave(Grade g) {
        return gradeRepository.findById(
                gradeRepository.mySave(g.getName(), g.getWorkingDay(), g.getLevel(), g.getParallel(), g.getCareer()))
                .get();

    }

    private Grade executeUpdate(Grade g) {
        return gradeRepository.findById(
                gradeRepository.update(
                        g.getId(), g.getName(), g.getWorkingDay(), g.getLevel(), g.getParallel(), g.getCareer()))
                .get();

    }

}
