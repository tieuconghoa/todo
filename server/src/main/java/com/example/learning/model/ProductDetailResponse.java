package com.example.learning.model;

import java.math.BigDecimal;
import java.util.List;

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

    public String imageUrl;

    public List<String> imageUrlList;

    public BigDecimal price;

    public BigDecimal discount;

    public String detail;

    public int reviewCount;

    public BigDecimal rate;

}
