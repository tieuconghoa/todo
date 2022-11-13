package com.example.learning.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;

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

    @JsonProperty("product_id")
    @Column(name = "product_id")
    public int productId;
    @Column
    public String content;

    @Column
    public int rate;

    @JsonProperty("create_date")
    @Column(name = "create_date")
    public LocalDateTime createDate;

    @JsonProperty("create_user")
    @Column(name = "create_user")
    public int createUser;
}
