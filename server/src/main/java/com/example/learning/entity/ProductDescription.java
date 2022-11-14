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
@Table(name = "product_description")
@RequiredArgsConstructor
@Getter
@Setter
public class ProductDescription {

    @Id
    @Column(name = "product_id")
    @JsonProperty("product_id")
    public int productId;

    @JsonProperty("product_description")
    @Column(name = "product_description")
    public String productDescription;

    @JsonProperty("product_material")
    @Column(name = "product_material")
    public String productMaterial;

    @JsonProperty("product_size")
    @Column(name = "product_size")
    public String productSize;

    @JsonProperty("product_model_size")
    @Column(name = "product_model_size")
    public String productModelSize;

    @JsonProperty("product_accessory")
    @Column(name = "product_accessory")
    public String productAccessory;
}
