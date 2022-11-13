package com.example.learning.model;

import java.math.BigDecimal;
import java.util.List;

import com.example.learning.entity.ProductDescription;
import com.example.learning.entity.ProductSize;
import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@RequiredArgsConstructor
@Getter
@Setter
public class ProductDetailResponse {

    public int id;

    public String name;

    public String category;
    
    @JsonProperty("image_url")
    public String imageUrl;

    @JsonProperty("image_url_list")
    public List<String> imageUrlList;

    public BigDecimal price;

    public BigDecimal discount;

    public String detail;
    
    @JsonProperty("review_count")
    public int reviewCount;

    public BigDecimal rate;
    
    @JsonProperty("product_description")
    public ProductDescription productDescription;
    
    @JsonProperty("product_size_list")
    public List<ProductSize> productSize;

}
