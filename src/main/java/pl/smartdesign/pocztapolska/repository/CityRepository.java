package pl.smartdesign.pocztapolska.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.smartdesign.pocztapolska.model.City;
import pl.smartdesign.pocztapolska.model.Community;

@Repository
public interface CityRepository extends JpaRepository<City, Long> {
    City findFirstByName(String name);
    City findFirstByNameAndCommunity(String name, Community community);
}
