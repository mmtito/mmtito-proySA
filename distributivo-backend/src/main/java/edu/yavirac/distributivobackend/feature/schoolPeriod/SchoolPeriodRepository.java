package edu.yavirac.distributivobackend.feature.schoolPeriod;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

public interface SchoolPeriodRepository extends CrudRepository<SchoolPeriod, Long> {
    List<SchoolPeriod>findAll();
}