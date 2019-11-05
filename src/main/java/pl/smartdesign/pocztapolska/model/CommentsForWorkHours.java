package pl.smartdesign.pocztapolska.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "comments_for_work_hours")
public class CommentsForWorkHours {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(columnDefinition = "TEXT", length=512)
    private String comment;
    @OneToMany(mappedBy = "commentsForWorkHours")
    private List<WorkHoursByDay> workHoursByDayList;

    CommentsForWorkHours() {}

    public CommentsForWorkHours(String comment) {
        this.comment = comment;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public List<WorkHoursByDay> getWorkHoursByDayList() {
        return workHoursByDayList;
    }

    public void setWorkHoursByDayList(List<WorkHoursByDay> workHoursByDayList) {
        this.workHoursByDayList = workHoursByDayList;
    }
}
