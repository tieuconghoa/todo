package com.example.learning.model;

import org.springframework.security.core.userdetails.UserDetails;

public class JwtResponse {

    private String token;

    private UserDetails user;

    
    
    public JwtResponse(String token, UserDetails user) {
        super();
        this.token = token;
        this.user = user;
    }

    /**
     * @return the user
     */
    public UserDetails getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(UserDetails user) {
        this.user = user;
    }

    /**
     * @return the token
     */
    public String getToken() {
        return token;
    }

    

}
