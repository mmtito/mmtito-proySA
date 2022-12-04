package edu.yavirac.distributivobackend.feature.career;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import edu.yavirac.distributivobackend.util.CloudinaryService;
import edu.yavirac.distributivobackend.util.NumberUtils;

@Service
public class CareerService {
    @Autowired
    CareerRepository careerRepository;
    @Autowired CloudinaryService cloudinaryService;
    
    // FIND ALL

    public List<Career>findAll(){
        return careerRepository.findAll();
    }
    
    // FIND BY ID

    public Career findById(long id){
        return careerRepository.findById(id).orElse(new Career());
    }

    // DELETE BY ID
    public void deleteById(long id){
        careerRepository.deleteCareer(id);
    } 

    //SAVE

    public Career save(MultipartFile file, String name, Integer duration){

        String link = (file == null) 
        ? "https://res.cloudinary.com/dx5lme7oc/image/upload/v1663865264/cld-sample-4.jpg"
        : cloudinaryService.uploadFile(file);

       return careerRepository.save(fromParamsToCareerEntity(name, duration, link, null));

    }

    //UPDATE

    public Career update(MultipartFile file, String name, Integer duration, Long id){

        if(NumberUtils.isNullOrEmpty(id)) throw new Error("Id is not present");
        
        Career career = new Career();
        if(file ==null) {
        career = fromParamsToCareerEntity(name, duration, null, id);
        career = careerRepository.saveNotImage(id, name, duration);
        }
        else{
         String link = cloudinaryService.uploadFile(file);
         career = fromParamsToCareerEntity(name, duration, link, id);
         career = careerRepository.save((career));

        }

        return career;


    }

    private Career fromParamsToCareerEntity(String name, Integer duration, String img, Long id){
        Career career = new Career();
        career.setDuration(duration);
        career.setImg(img);
        career.setName(name);
        career.setId(id);
        return career;
    }
    
}
