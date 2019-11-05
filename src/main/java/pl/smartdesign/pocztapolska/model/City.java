package pl.smartdesign.pocztapolska.model;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name = "city")
public class City {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    @Column(name = "name_url")
    private String nameUrl;
    @ManyToOne
    @JoinColumn(name = "community_id")
    private Community community;
    @OneToMany(mappedBy = "city")
    private List<PostCode> postCodeList;
    @OneToMany(mappedBy = "city")
    private List<PostOffice> postOfficeList;

    City() {}

    public City(String name, String nameUrl) {
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

    public Community getCommunity() {
        return community;
    }

    public void setCommunity(Community community) {
        this.community = community;
    }

    public List<PostCode> getPostCodeList() {
        return postCodeList;
    }

    public void setPostCodeList(List<PostCode> postCodeList) {
        this.postCodeList = postCodeList;
    }

    public List<PostOffice> getPostOfficeList() {
        return postOfficeList;
    }

    public void setPostOfficeList(List<PostOffice> postOfficeList) {
        this.postOfficeList = postOfficeList;
    }
}
