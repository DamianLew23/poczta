package pl.smartdesign.pocztapolska.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "days")
public class Days {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String dayPattern;
    @OneToMany(mappedBy = "day")
    private List<WorkHoursByDay> workHoursByDayList;

    Days() {}

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDayPattern() {
        return dayPattern;
    }

    public void setDayPattern(String dayPattern) {
        this.dayPattern = dayPattern;
    }

    public List<WorkHoursByDay> getWorkHoursByDayList() {
        return workHoursByDayList;
    }

    public void setWorkHoursByDayList(List<WorkHoursByDay> workHoursByDayList) {
        this.workHoursByDayList = workHoursByDayList;
    }
}
