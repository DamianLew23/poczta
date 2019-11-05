package pl.smartdesign.pocztapolska.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.smartdesign.pocztapolska.model.Hours;

@Repository
public interface HoursRepository extends JpaRepository<Hours, Long> {
    Hours findFirstByHour(String hour);
}
