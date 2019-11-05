package pl.smartdesign.pocztapolska.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "voivodeship")
public class Voivodeship {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    @Column(name = "name_url")
    private String nameUrl;
    @Column(name = "name_variety_m", updatable = false)
    private String nameVarietyM;
    @OneToMany(mappedBy = "voivodeship")
    private List<County> countyList;
    @OneToMany(mappedBy = "voivodeship")
    private List<PostOffice> postOfficeList;

    Voivodeship() {}

    public Voivodeship(String name, String nameUrl) {
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

    public String getNameVarietyM() {
        return nameVarietyM;
    }

    public void setNameVarietyM(String nameVarietyM) {
        this.nameVarietyM = nameVarietyM;
    }

    public List<County> getCountyList() {
        return countyList;
    }

    public void setCountyList(List<County> countyList) {
        this.countyList = countyList;
    }

    public List<PostOffice> getPostOfficeList() {
        return postOfficeList;
    }

    public void setPostOfficeList(List<PostOffice> postOfficeList) {
        this.postOfficeList = postOfficeList;
    }
}
