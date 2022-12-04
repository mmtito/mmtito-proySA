package edu.yavirac.distributivobackend.feature.subject;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SubjectService {
    @Autowired
    SubjectRepository  subjectRepository;

    public List<Subject> findAll(){
        return subjectRepository.findAll();
    }

    public Subject findById(long id){
        return subjectRepository.findById(id).orElse(new Subject());
    }

    public Subject save(Subject subject){
        return subjectRepository.save(subject);

    }

    public void deleteById(long id){
        subjectRepository.deleteById(id);
    }
}
