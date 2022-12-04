package edu.yavirac.distributivobackend.feature.schedule;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TimeConfigurationRepository extends CrudRepository<TimeConfiguration, Long> {
    List<TimeConfiguration> findAll();
}
