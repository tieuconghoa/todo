package com.example.learning.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;
import lombok.RequiredArgsConstructor;

@Table(name="image_product")
@Entity
@Data
@RequiredArgsConstructor
public class ImageProduct {

    @Id
    @GeneratedValue
    @Column
    public int id;
    
    @JsonProperty("product_id")
    @Column(name = "product_id")
    public int productId;
    
    @Column(name="url")
    public String url;
}
