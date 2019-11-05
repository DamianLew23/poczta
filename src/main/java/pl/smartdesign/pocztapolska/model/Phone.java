package pl.smartdesign.pocztapolska.model;

import javax.persistence.*;

@Entity
@Table(name = "phone_numbers")
public class Phone {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String phoneNumber;
    @ManyToOne
    @JoinColumn(name = "post_office_id")
    private PostOffice postOfficeList;

    Phone() {}

    public Phone(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @Override
    public String toString() {
        return "Phone{" +
                "id=" + id +
                ", phoneNumber='" + phoneNumber +
                "'}";
    }
}
