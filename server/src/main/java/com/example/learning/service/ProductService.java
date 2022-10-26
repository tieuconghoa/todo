package com.example.learning.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.learning.entity.custom.ProductEntityCustom;
import com.example.learning.model.ProductRequest;
import com.example.learning.model.ProductResponse;
import com.example.learning.repository.ProductRepository;

@Service
public class ProductService {

    @Autowired
    private ProductRepository repository;

    public List<ProductResponse> getListProduct(ProductRequest productRequest) {

        List<ProductEntityCustom> productList = repository.getListProduct();

        List<ProductResponse> productResList = new ArrayList<ProductResponse>();
        for (ProductEntityCustom product : productList) {
            ProductResponse productRes = new ProductResponse();
            productRes.setId(product.getId());
            productRes.setCategory(product.getCategory());
            productRes.setCreateDate(product.getCreateDate());
            productRes.setDetail(product.getDetail());
            productRes.setDiscount(product.getDiscount());
            productRes.setImageUrl(product.getImageUrl());
            productRes.setName(product.getName());
            productRes.setPrice(product.getPrice());
            productRes.setRate(product.getRate());
            productRes.setReviewCount(product.getCount());
            productResList.add(productRes);
        }

        return productResList;
    }

}
