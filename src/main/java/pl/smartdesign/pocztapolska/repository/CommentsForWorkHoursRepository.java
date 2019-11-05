package pl.smartdesign.pocztapolska.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.smartdesign.pocztapolska.model.CommentsForWorkHours;

@Repository
public interface CommentsForWorkHoursRepository extends JpaRepository<CommentsForWorkHours, Long> {
    CommentsForWorkHours findFirstByComment(String comment);
}
