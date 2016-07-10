package de.ihrprof.cstutorial;

public class UserPasswordBean {
    
    private String username;
    private String password;
    
    public String getPasswordHash(){
        return HashEncode.sha256encode(getPassword());
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }  
}