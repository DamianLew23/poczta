package pl.smartdesign.pocztapolska.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.smartdesign.pocztapolska.model.Features;

@Repository
public interface FeaturesRepository extends JpaRepository<Features, Long> {
    Features findFirstByFeature(String featureName);
}
