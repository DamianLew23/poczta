package pl.smartdesign.pocztapolska.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.smartdesign.pocztapolska.model.Phone;

@Repository
public interface PhoneRepository extends JpaRepository<Phone, Long> {
    Phone findFirstByPhoneNumber(String phoneNumber);
}
