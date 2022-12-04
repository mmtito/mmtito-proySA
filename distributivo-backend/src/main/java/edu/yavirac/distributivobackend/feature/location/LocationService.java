package edu.yavirac.distributivobackend.feature.location;
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
public class LocationService {
    @Autowired
    LocationRepository locationRepository;

    public LocationDTO findAllPageable(long capacity,long page){
    
       long offset = page <= 0? 0 : page * capacity;
        
        LocationDTO dto = new LocationDTO();
        dto.setLocations(locationRepository.findAllPageable(capacity, offset));
        dto.setTotal(locationRepository.count());
        dto.setTotalPages(dto.getTotal() / capacity + 1);
        dto.setCapacity(capacity);
        dto.setPage(page);
        return dto;
       
    }

    public List<Location> findAll(){
        return locationRepository.findAll();
    }

    public Location save(Location Location){

        return locationRepository.save(Location);
    }

    public Location findById(long id){
        return locationRepository.findById(id).orElse(new Location());
    }

    public Location update(Long id,Location location){
         return locationRepository.save(location);
    }

    public void deleteById(long id){
        locationRepository.deleteLocation(id);
    }


    public List<Location> findByName(String name){
        return locationRepository.findByNameLikeIgnoreCase(name+"%");
    }
    
    public void generateExcelFile(HttpServletResponse response) throws IOException{

        response.setContentType("application/octet-stream");
        String headerKey = "Content-Disposition";
        String headerValue = "attachment; filename=location.xlsx";
        response.setHeader(headerKey, headerValue);
        List<String> rows  = Arrays.asList("NAME", "DESCRIPTION", "LATITUD", "LONGITUD");
        ExcelGenerator excelGenerator = new ExcelGenerator();
        excelGenerator.generateExcelFile(response, rows);

    }
    
    public List<Location> importExcel(MultipartFile files) throws IOException{
        List<Location> locationList = new ArrayList<>();

        try (XSSFWorkbook workbook = new XSSFWorkbook(files.getInputStream())) {
            XSSFSheet worksheet = workbook.getSheetAt(0);

            for (int index = 0; index < worksheet.getPhysicalNumberOfRows(); index++) {
                if (index > 0) {
                    Location location = new Location();

                    XSSFRow row = worksheet.getRow(index);

                    location.setName(row.getCell(0).getStringCellValue());
                    location.setDescription(row.getCell(1).getStringCellValue());
                    location.setLatitude(Math.round(row.getCell(2).getNumericCellValue()));
                    location.setLongitude(Math.round(row.getCell(3).getNumericCellValue()));

                    locationList.add(locationRepository.save(location));
                     
                }
            }
        }
        return locationList;
    }
    
}