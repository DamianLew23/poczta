package pl.smartdesign.pocztapolska.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.smartdesign.pocztapolska.model.Voivodeship;

@Repository
public interface VoivodeshipRepository extends JpaRepository<Voivodeship, Long> {
    Voivodeship findFirstByName(String name);
    Voivodeship findFirstByNameUrl(String nameUrl);
}
