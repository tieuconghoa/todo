package com.example.learning.model;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonProperty;

import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@RequiredArgsConstructor
@Getter
@Setter
public class ProductResponse {

    public List<ProductDataDTO> products;
    
    @RequiredArgsConstructor
    @Getter
    @Setter
    public class ProductDataDTO {
        public int id;

        public String name;

        public String category;
        
        @JsonProperty("image_url")
        public String imageUrl;

        public BigDecimal price;

        public BigDecimal discount;

        public String detail;

        @JsonProperty("review_count")
        public int reviewCount;

        public BigDecimal rate;

        @JsonProperty("create_date")
        public LocalDateTime createDate;
    }

}

