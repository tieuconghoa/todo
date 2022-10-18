package com.example.learning.model;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name = "todo")
@Data
public class Todo {

    @Id
    @Column
    int id;

    @Column
    String content;

    @Column
    String status;

    @Column(name = "create_user")
    private Integer createUser;

    @Column(name = "create_date")
    private LocalDateTime createDate;

    @Column(name = "update_user")
    private Integer updateUser;

    @Column(name = "update_date")
    private LocalDateTime updateDate;

    @Column(name = "del_flg")
    private Integer delFlg;

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
     * @return the createUser
     */
    public Integer getCreateUser() {
        return createUser;
    }

    /**
     * @param createUser the createUser to set
     */
    public void setCreateUser(Integer createUser) {
        this.createUser = createUser;
    }

    /**
     * @return the createDate
     */
    public LocalDateTime getCreateDate() {
        return createDate;
    }

    /**
     * @param createDate the createDate to set
     */
    public void setCreateDate(LocalDateTime createDate) {
        this.createDate = createDate;
    }

    /**
     * @return the updateUser
     */
    public Integer getUpdateUser() {
        return updateUser;
    }

    /**
     * @param updateUser the updateUser to set
     */
    public void setUpdateUser(Integer updateUser) {
        this.updateUser = updateUser;
    }

    /**
     * @return the updateDate
     */
    public LocalDateTime getUpdateDate() {
        return updateDate;
    }

    /**
     * @param updateDate the updateDate to set
     */
    public void setUpdateDate(LocalDateTime updateDate) {
        this.updateDate = updateDate;
    }

    /**
     * @return the delFlg
     */
    public Integer getDelFlg() {
        return delFlg;
    }

    /**
     * @param delFlg the delFlg to set
     */
    public void setDelFlg(Integer delFlg) {
        this.delFlg = delFlg;
    }

}
