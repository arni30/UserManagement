package world.ucode.models;



import jakarta.validation.constraints.NotEmpty;

import javax.persistence.*;
import java.io.Serializable;
@Entity
@Table (name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    @NotEmpty
    @Column(name = "firstName")
    private String firstName;
    @NotEmpty
    @Column(name = "lastName")
    private String lastName;
    @Column(name = "birthday")
    @NotEmpty
    private String birthday;
    @Column(name = "login")
    @NotEmpty
    private String login;
    @Column(name = "password")
    @NotEmpty
    private String password;
    @Column(name = "aboutYou")
    @NotEmpty
    private String aboutYou;
    @Column(name = "address")
    @NotEmpty
    private String address;
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private int id;
//    @Column(nullable = false, name = "firstName")
//    private String firstName;
//    @Column(nullable = false, name = "lastName")
//    private String lastName;
//    @Column(nullable = false, name = "birthday")
//    private String birthday;
//    @Column(nullable = false, name = "login")
//    private String login;
//    @Column(nullable = false, name = "password")
//    private String password;
//    @Column(nullable = false, name = "aboutYou")
//    private String aboutYou;
//    @Column(nullable = false, name = "address")

    public void setId(int id) {
        this.id = id;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public void setAboutYou(String aboutYou) {
        this.aboutYou = aboutYou;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getBirthday() {
        return birthday;
    }

    public String getLogin() {
        return login;
    }

    public String getPassword() {
        return password;
    }

    public String getAboutYou() {
        return aboutYou;
    }

    public String getAddress() {
        return address;
    }
//    @Override
//    public String toString() {
//        String res = "models.User{ " +
//                "id=" + id +
//                ", login='" + name + '\'' +
//                ", password=" + password +
//                ", role=";
//        if (userRole == 0) {
//            res += "seller";
//        } else {
//            res += "bitter";
//        }
//        res += "(" + userRole + ") }";
//        return res;
//    }
}
