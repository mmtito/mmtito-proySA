package edu.yavirac.distributivobackend.feature.schoolPeriod;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SchoolPeriodService {
    @Autowired
    SchoolPeriodRepository schoolPeriodRepository;
    
    public SchoolPeriod save(SchoolPeriod schoolPeriod){
        return schoolPeriodRepository.save(schoolPeriod);
    }

    public List<SchoolPeriod>findAll(){
        return schoolPeriodRepository.findAll();
    }

    public SchoolPeriod findById(long id){
        return schoolPeriodRepository.findById(id).orElse(new SchoolPeriod());
    }

    public void deleteById( long id){
        schoolPeriodRepository.deleteById(id);
    }
}
