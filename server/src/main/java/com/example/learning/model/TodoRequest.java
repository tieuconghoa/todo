package com.example.learning.model;

public class TodoRequest {

    private int id;

    private String content;

    private String status;

    private String dateChange;

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content the content to set
     */
    public void setContent(String content) {
        this.content = content;
    }

    /**
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
    }

    /**
     * @return the dateChange
     */
    public String getDateChange() {
        return dateChange;
    }

    /**
     * @param dateChange the dateChange to set
     */
    public void setDateChange(String dateChange) {
        this.dateChange = dateChange;
    }

}
