package pl.smartdesign.pocztapolska.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "hours")
public class Hours {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_hour")
    private Long id;
    @Column(name = "hour_text")
    private String hour;
    @ManyToMany(mappedBy = "openTimes")
    private List<WorkHoursByDay> openingHoursByDayList;
    @ManyToMany(mappedBy = "closeTimes")
    private List<WorkHoursByDay> closingHoursByDayList;

    Hours() {}

    public Hours(String hour) {
        this.hour = hour;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getHour() {
        return hour;
    }

    public void setHour(String hour) {
        this.hour = hour;
    }

    public List<WorkHoursByDay> getOpeningHoursByDayList() {
        return openingHoursByDayList;
    }

    public void setOpeningHoursByDayList(List<WorkHoursByDay> openingHoursByDayList) {
        this.openingHoursByDayList = openingHoursByDayList;
    }

    public List<WorkHoursByDay> getClosingHoursByDayList() {
        return closingHoursByDayList;
    }

    public void setClosingHoursByDayList(List<WorkHoursByDay> closingHoursByDayList) {
        this.closingHoursByDayList = closingHoursByDayList;
    }
}
