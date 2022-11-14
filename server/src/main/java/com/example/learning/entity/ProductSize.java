package com.example.learning.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Data;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Data
@Entity
@Table(name = "product_size")
@RequiredArgsConstructor
@Getter
@Setter
public class ProductSize {

    @Id
    public int id;
    
    @Column(name="product_id")
    @JsonProperty("product_id")
    public int productId;
    
    @Column(name="product_size")
    @JsonProperty("product_size")
    public String productSize;
}
