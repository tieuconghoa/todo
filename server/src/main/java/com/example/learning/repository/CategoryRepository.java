package com.example.learning.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.learning.entity.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Integer> {

}
