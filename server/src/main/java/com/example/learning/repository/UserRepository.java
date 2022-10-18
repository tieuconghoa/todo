package com.example.learning.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.learning.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{

    User findByUsername(String username);
}
