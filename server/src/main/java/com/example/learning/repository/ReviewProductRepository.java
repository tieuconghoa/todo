package com.example.learning.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.learning.entity.ReviewProduct;

@Repository
public interface ReviewProductRepository extends JpaRepository<ReviewProduct, Integer> {

}
