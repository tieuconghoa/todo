package com.example.learning.model;

public class HelloResponse {

    private String message;

    public HelloResponse(String message) {
        this.message = message;
    }
    /**
     * @return the message
     */
    public String getMessage() {
        return message;
    }

    /**
     * @param message the message to set
     */
    public void setMessage(String message) {
        this.message = message;
    }

}
