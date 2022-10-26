package com.example.learning.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.RequiredArgsConstructor;

@Data
@Entity
@Table(name = "review_product")
@RequiredArgsConstructor
public class ReviewProduct {

    @Id
    @GeneratedValue
    @Column
    public int id;

    @Column(name = "product_id")
    public int product_id;
    @Column
    public String content;
    
    @Column
    public String rate;

    @Column(name = "create_date")
    public LocalDateTime createDate;

    @Column(name = "create_user")
    public int createUser;
}
