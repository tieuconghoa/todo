package com.example.learning.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.learning.entity.ImageProduct;

public interface ImageProductRepository extends JpaRepository<ImageProduct, Integer>{

    List<ImageProduct> findByProductId(Integer productId);
}
