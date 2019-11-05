package pl.smartdesign.pocztapolska.model;

import pl.smartdesign.pocztapolska.utils.DayOfWeekPl;

import javax.persistence.*;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.UUID;

@Entity
@Table(name = "post_office")
public class PostOffice {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_post_office")
    private Long id;
    private String postOfficeName;
    @ManyToOne
    @JoinColumn(name = "type")
    private Type type;
    private String address;
    private String url;
    private String y;
    private String x;
    private String parentUnitName;
    private Boolean suitableForDisablePepole;
    @ManyToOne
    @JoinColumn(name = "postcode_id")
    private PostCode postcode;
    @ManyToOne
    @JoinColumn(name = "city_id")
    private City city;
    @OneToMany(mappedBy = "id")
    private List<Phone> phoneList;
    @ManyToMany
    private List<Features> featuresList;
    @ManyToMany
    private List<WorkHoursByDay> workHourByDays;
    @ManyToOne
    @JoinColumn(name = "community_id")
    private Community community;
    @ManyToOne
    @JoinColumn(name = "county_id")
    private County county;
    @ManyToOne
    @JoinColumn(name = "voivodeship_id")
    private Voivodeship voivodeship;

    public PostOffice() {}

    public Long getId() {
         return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPostOfficeName() {
        return postOfficeName;
    }

    public void setPostOfficeName(String postOfficeName) {
        this.postOfficeName = postOfficeName;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getY() {
        return y;
    }

    public void setY(String y) {
        this.y = y;
    }

    public String getX() {
        return x;
    }

    public void setX(String x) {
        this.x = x;
    }

    public String getParentUnitName() {
        return parentUnitName;
    }

    public void setParentUnitName(String parentUnitName) {
        this.parentUnitName = parentUnitName;
    }

    public Boolean getSuitableForDisablePepole() {
        return suitableForDisablePepole;
    }

    public void setSuitableForDisablePepole(Boolean suitableForDisablePepole) {
        this.suitableForDisablePepole = suitableForDisablePepole;
    }

    public PostCode getPostcode() {
        return postcode;
    }

    public void setPostcode(PostCode postcode) {
        this.postcode = postcode;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }

    public List<Phone> getPhoneList() {
        return phoneList;
    }

    public void setPhoneList(List<Phone> phoneList) {
        this.phoneList = phoneList;
    }

    public List<Features> getFeaturesList() {
        return featuresList;
    }

    public void setFeaturesList(List<Features> featuresList) {
        this.featuresList = featuresList;
    }

    public List<WorkHoursByDay> getWorkHourByDays() {
        return workHourByDays;
    }

    public void setWorkHourByDays(List<WorkHoursByDay> workHourByDays) {
        this.workHourByDays = workHourByDays;
    }

    public Community getCommunity() {
        return community;
    }

    public void setCommunity(Community community) {
        this.community = community;
    }

    public County getCounty() {
        return county;
    }

    public void setCounty(County county) {
        this.county = county;
    }

    public Voivodeship getVoivodeship() {
        return voivodeship;
    }

    public void setVoivodeship(Voivodeship voivodeship) {
        this.voivodeship = voivodeship;
    }


    public String prepareOpenHoursToCard() {
        String preparedOpenHours = "";
        LocalDate localDate = LocalDate.now();
        DayOfWeek today = localDate.getDayOfWeek();

        for(WorkHoursByDay workHoursByOneDay: workHourByDays) {
            if (workHoursByOneDay.getDay().getId() == today.getValue()) {
                for (int i = 0; i < workHoursByOneDay.getOpenTimes().size(); i++) {
                    String openHour = workHoursByOneDay.getOpenTimes().get(i).getHour();
                    String closeHour = workHoursByOneDay.getCloseTimes().get(i).getHour();
                    if(openHour.equals("*") || closeHour.equals("*")) {
                        return null;
                    }
                    preparedOpenHours = ", " + openHour + " - " + closeHour;
                }
            }
        }

        return preparedOpenHours.replaceFirst(", ","");
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        PostOffice that = (PostOffice) o;
        return Objects.equals(id, that.id) &&
                Objects.equals(postOfficeName, that.postOfficeName) &&
                Objects.equals(type, that.type) &&
                Objects.equals(address, that.address) &&
                Objects.equals(url, that.url) &&
                Objects.equals(y, that.y) &&
                Objects.equals(x, that.x) &&
                Objects.equals(parentUnitName, that.parentUnitName) &&
                Objects.equals(suitableForDisablePepole, that.suitableForDisablePepole) &&
                Objects.equals(postcode, that.postcode) &&
                Objects.equals(city, that.city) &&
                Objects.equals(phoneList, that.phoneList) &&
                Objects.equals(featuresList, that.featuresList) &&
                Objects.equals(workHourByDays, that.workHourByDays) &&
                Objects.equals(community, that.community) &&
                Objects.equals(county, that.county) &&
                Objects.equals(voivodeship, that.voivodeship);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, postOfficeName, type, address, url, y, x, parentUnitName, suitableForDisablePepole, postcode, city, phoneList, featuresList, workHourByDays, community, county, voivodeship);
    }
}
