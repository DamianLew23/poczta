package pl.smartdesign.pocztapolska.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.smartdesign.pocztapolska.model.City;
import pl.smartdesign.pocztapolska.model.PostCode;

@Repository
public interface PostCodeRepository extends JpaRepository<PostCode, Long> {
    PostCode findFirstByCode(String code);
    PostCode findFirstByCodeAndCity(String code, City city);
}
