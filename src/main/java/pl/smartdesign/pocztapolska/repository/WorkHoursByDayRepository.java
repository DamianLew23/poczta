package pl.smartdesign.pocztapolska.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import pl.smartdesign.pocztapolska.model.CommentsForWorkHours;
import pl.smartdesign.pocztapolska.model.Days;
import pl.smartdesign.pocztapolska.model.Hours;
import pl.smartdesign.pocztapolska.model.WorkHoursByDay;

@Repository
public interface WorkHoursByDayRepository extends JpaRepository<WorkHoursByDay, Long> {
    WorkHoursByDay findFirstByDayAndOpenTimesAndCloseTimes(Days day, Hours openTime, Hours closeTime);
    WorkHoursByDay findFirstByDayAndOpenTimesAndCloseTimesAndCommentsForWorkHours(Days day, Hours openTime, Hours closeTime, CommentsForWorkHours commentsForWorkHours);
}
