package com.example.learning.entity;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.RequiredArgsConstructor;

@Entity
@Data
@RequiredArgsConstructor
@Table(name="product")
public class Product {

    @Id
    @GeneratedValue
    @Column
    public int id;
    
    @Column
    public String name;
    
    @Column
    public int category;
    
    @Column(name="image_url")
    public String imageUrl;
    
    @Column
    public BigDecimal price;
    
    @Column
    public BigDecimal discount;
    
    @Column
    public String detail;
 
    @Column
    public int quantity;
    
    @Column(name="create_date")
    public LocalDateTime createDate;
}
