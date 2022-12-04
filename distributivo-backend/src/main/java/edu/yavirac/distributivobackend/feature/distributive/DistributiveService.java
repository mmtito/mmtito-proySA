package edu.yavirac.distributivobackend.feature.distributive;

import edu.yavirac.distributivobackend.util.ExcelGenerator;
import java.io.IOException;
import java.util.Arrays;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class DistributiveService {
    @Autowired
    DistributiveRepository distributiveRepository;

    public List<DistributiveDTO> findAll() {
        return distributiveRepository.findByDistibutiveAll();
    }

    public DistributiveDTO findByDistributiveId(long id) {
        return distributiveRepository.findByDistributiveId(id).orElse(new DistributiveDTO());
    }

    public List<DistributiveDTO> findByTeacherId(long id) {
        return distributiveRepository.findByTeacherId(id);
    }

    public Distributive save(Distributive distributive) {
        return distributiveRepository.save(distributive);

    }

    // public Distributive savetd(Distributive distributive) {
    //     return this.executeSave(distributive);
    // }

    public List<DistributiveDTO> findByName(String name) {
        return distributiveRepository.findByName(name);
    }

    public List<DistributiveDTO> findByEmail(String email) {
        return distributiveRepository.findByEmail(email);
    }

    public List<DistributiveDTO> findByTeacherDni(String dni) {
        return distributiveRepository.findByTeacherDni(dni + "%");
    }

    public List<DistributiveDTO> findByTeacherName(String name) {
        return distributiveRepository.findByTeacherName(name + "%");
    }

    public List<DistributiveDTO> findByTeacherLastname(String lastname) {
        return distributiveRepository.findByTeacherLastname(lastname + "%");
    }

    public List<DistributiveDTO> findByPeriodoName(String periodo) {
        return distributiveRepository.findByPeriodoName(periodo + "%");
    }

    public List<DistributiveDTO> findByCareerName(String career) {
        return distributiveRepository.findByCareerName(career + "%");
    }

    public Distributive findById(long id) {
        return distributiveRepository.findById(id).orElse(new Distributive());
    }

    public void generateExcelFile(HttpServletResponse response) throws IOException {

        response.setContentType("application/octet-stream");
        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filename=distributive.xlsx";
        response.setHeader(headerKey, headerValue);
        List<String> rows = Arrays.asList("codigoAsignatura", "nombreAsignatura", "Docente", "idCurso", "nombreCurso");
        ExcelGenerator excelGenerator = new ExcelGenerator();
        excelGenerator.generateExcelFile(response, rows);
    }

    public List<Distributive> importExcel(MultipartFile files) throws IOException {
        List<Distributive> distributiveList = new ArrayList<>();

        try (XSSFWorkbook workbook = new XSSFWorkbook(files.getInputStream())) {
            XSSFSheet workSheet = workbook.getSheetAt(0);
            for (int index = 0; index < workSheet.getPhysicalNumberOfRows(); index++) {
                if (index > 0) {
                    Distributive distributive = new Distributive();
                    XSSFRow row = workSheet.getRow(index);

                    if (row.getCell(0) != null)
                        distributive.setSchoolTime(Math.round(row.getCell(0).getNumericCellValue()));

                    if (row.getCell(1) != null)
                        distributive.setTeacher(Math.round(row.getCell(1).getNumericCellValue()));

                    if (row.getCell(2) != null)
                        distributive.setCourse(Math.round(row.getCell(2).getNumericCellValue()));

                    if (row.getCell(3) != null)
                        distributive.setGrade(Math.round(row.getCell(3).getNumericCellValue()));

                    if (row.getCell(4) != null)
                        distributive.setCareer(Math.round(row.getCell(4).getNumericCellValue()));

                    distributiveList.add(this.save(distributive));
                }

            }
        }
        return distributiveList;
    }

    // private Distributive executeSave(Distributive distributive) {
    //     return distributiveRepository.findById(
    //         distributiveRepository.saves(
    //             distributive.getSchoolTime(),
    //             distributive.getTeacher(),
    //             distributive.getCourse(),
    //             distributive.getGrade(),
    //             distributive.getCareer())).get();
    // }
}
