package edu.yavirac.distributivobackend.feature.subject;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface SubjectRepository extends CrudRepository<Subject, Long > {
    List<Subject>findAll();
 }
