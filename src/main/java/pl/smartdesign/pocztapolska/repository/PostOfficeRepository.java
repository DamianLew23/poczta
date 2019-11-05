package pl.smartdesign.pocztapolska.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import pl.smartdesign.pocztapolska.model.PostOffice;
import pl.smartdesign.pocztapolska.model.Voivodeship;

import java.util.HashSet;
import java.util.List;

@Repository
public interface PostOfficeRepository extends JpaRepository<PostOffice, Long> {
    PostOffice findFirstByPostOfficeNameAndType(String postOfficeName, String type);
    PostOffice findFirstByPostOfficeNameAndAddress(String postOfficeName, String address);
    PostOffice findFirstByUrl(String postOfficeUrl);
    HashSet<PostOffice> findAllByVoivodeship(Voivodeship voivodeship);


}
