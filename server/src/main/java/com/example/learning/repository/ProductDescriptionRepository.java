package com.example.learning.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.learning.entity.ProductDescription;

public interface ProductDescriptionRepository extends JpaRepository<ProductDescription, Integer>{

    Optional<ProductDescription> findByProductId(Integer productId);
}
