package com.example.learning.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.learning.model.ProductRequest;
import com.example.learning.model.ProductResponse;
import com.example.learning.service.ProductService;

@RestController
public class ProductController {

    @Autowired
    private ProductService service;

    @CrossOrigin("http://localhost:8080")
    @RequestMapping(value = "/api/product", method = RequestMethod.GET)
    public ResponseEntity<ProductResponse> getProduct(ProductRequest productRequest) {

        ProductResponse products = service.getListProduct(productRequest);

        return ResponseEntity.ok().body(products);
    }
}
