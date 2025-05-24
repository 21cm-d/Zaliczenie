package org.example.patryk;

public class User {
    String name;
    String surname;
    String password;
    String login;

    public User(String name, String surname, String password, String login) {
        this.name = name;
        this.surname = surname;
        this.password = password;
        this.login = login;

    }

    public String getName() {
        return name;
    }
    public String getSurname() {
        return surname;
    }
    public String getPassword() {
        return password;
    }
    public String getLogin() {
        return login;
    }
}
