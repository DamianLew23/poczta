package pl.smartdesign.pocztapolska.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.smartdesign.pocztapolska.model.County;
import pl.smartdesign.pocztapolska.model.Voivodeship;

import java.util.List;

@Repository
public interface CountyRepository extends JpaRepository<County, Long> {
    County findFirstByName(String name);
    County findFirstByNameAndAndVoivodeship(String name, Voivodeship voivodeship);
    County findFirstByNameUrl(String nameUrl);
    List<County> findAllByVoivodeshipOrderByNameAsc(Voivodeship voivodeship);

}
