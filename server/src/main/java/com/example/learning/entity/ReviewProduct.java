package com.example.learning.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Data
@Entity
@Table(name = "review_product")
@RequiredArgsConstructor
@Getter
@Setter
public class ReviewProduct {

    @Id
    @GeneratedValue
    @Column
    public int id;

    @Column(name = "product_id")
    public int productId;
    @Column
    public String content;

    @Column
    public int rate;

    @Column(name = "create_date")
    public LocalDateTime createDate;

    @Column(name = "create_user")
    public int createUser;
}
