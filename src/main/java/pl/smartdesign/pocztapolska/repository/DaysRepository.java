package pl.smartdesign.pocztapolska.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.smartdesign.pocztapolska.model.Days;

@Repository
public interface DaysRepository extends JpaRepository<Days, Long> {
    Days findFirstByName(String name);
    Days findFirstById(Long id);
}
