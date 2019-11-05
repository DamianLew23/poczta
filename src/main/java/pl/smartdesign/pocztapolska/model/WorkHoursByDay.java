package pl.smartdesign.pocztapolska.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "work_hours_by_day")
public class WorkHoursByDay {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_work_hour_by_day")
    private Long id;
    @ManyToOne
    @JoinColumn(name = "day_id")
    private Days day;
    @ManyToMany
    private List<Hours> openTimes;
    @ManyToMany
    private List<Hours> closeTimes;
    @ManyToOne
    private CommentsForWorkHours commentsForWorkHours;
    @ManyToMany
    private List<PostOffice> postOfficeList;

    public WorkHoursByDay() {}

    public WorkHoursByDay(Days day, List<Hours> openTimes, List<Hours> closeTimes) {
        this.day = day;
        this.openTimes = openTimes;
        this.closeTimes = closeTimes;
    }

    public WorkHoursByDay(Days day, List<Hours> openTimes, List<Hours> closeTimes, CommentsForWorkHours commentsForWorkHours) {
        this.day = day;
        this.openTimes = openTimes;
        this.closeTimes = closeTimes;
        this.commentsForWorkHours = commentsForWorkHours;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Days getDay() {
        return day;
    }

    public void setDay(Days day) {
        this.day = day;
    }

    public List<Hours> getOpenTimes() {
        return openTimes;
    }

    public void setOpenTimes(List<Hours> openTimes) {
        this.openTimes = openTimes;
    }

    public List<Hours> getCloseTimes() {
        return closeTimes;
    }

    public void setCloseTimes(List<Hours> closeTimes) {
        this.closeTimes = closeTimes;
    }

    public CommentsForWorkHours getCommentsForWorkHours() {
        return commentsForWorkHours;
    }

    public void setCommentsForWorkHours(CommentsForWorkHours commentsForWorkHours) {
        this.commentsForWorkHours = commentsForWorkHours;
    }

    public List<PostOffice> getPostOfficeList() {
        return postOfficeList;
    }

    public void setPostOfficeList(List<PostOffice> postOfficeList) {
        this.postOfficeList = postOfficeList;
    }

    @Override
    public String toString() {
        return "WorkHoursByDay{" +
                "id=" + id +
                ", day=" + day.getName() +
                ", openTimes=" + openTimes +
                ", closeTimes=" + closeTimes +
                ", commentsForWorkHours=" + commentsForWorkHours +
                '}';
    }
}
