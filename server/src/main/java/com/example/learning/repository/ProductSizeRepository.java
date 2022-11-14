package com.example.learning.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.learning.entity.ProductSize;

public interface ProductSizeRepository extends JpaRepository<ProductSize, Integer>{

    List<ProductSize> findByProductId(Integer productId);
}
