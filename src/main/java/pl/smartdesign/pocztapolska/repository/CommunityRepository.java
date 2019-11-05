package pl.smartdesign.pocztapolska.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.smartdesign.pocztapolska.model.Community;
import pl.smartdesign.pocztapolska.model.County;

import java.util.List;
import java.util.Map;

@Repository
public interface CommunityRepository extends JpaRepository<Community, Long> {
    Community findFirstByName(String name);
    Community findFirstByNameAndCounty(String name, County county);
}
