package com.example.learning.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.learning.model.Todo;

@Repository
public interface TodoRepository extends JpaRepository<Todo, Integer>{
}
