package pl.smartdesign.pocztapolska.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "community")
public class Community {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    @Column(name = "name_url")
    private String nameUrl;
    @ManyToOne
    @JoinColumn(name = "county_id")
    private County county;
    @OneToMany(mappedBy = "community")
    private List<City> cityList;
    @OneToMany(mappedBy = "community")
    private List<PostOffice> postOfficeList;

    Community() {}

    public Community(String name, String nameUrl) {
        this.name = name;
        this.nameUrl = nameUrl;
    }

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

    public String getNameUrl() {
        return nameUrl;
    }

    public void setNameUrl(String nameUrl) {
        this.nameUrl = nameUrl;
    }

    public County getCounty() {
        return county;
    }

    public void setCounty(County county) {
        this.county = county;
    }

    public List<City> getCityList() {
        return cityList;
    }

    public void setCityList(List<City> cityList) {
        this.cityList = cityList;
    }

    public List<PostOffice> getPostOfficeList() {
        return postOfficeList;
    }

    public void setPostOfficeList(List<PostOffice> postOfficeList) {
        this.postOfficeList = postOfficeList;
    }
}
