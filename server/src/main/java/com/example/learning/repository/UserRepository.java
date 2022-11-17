package com.example.learning.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.learning.entity.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{

    User findByUsername(String username);
    
    @Query(value = "SELECT * FROM user u WHERE u.id IN ?1", nativeQuery = true)
    List<User> getListId(List<Integer> idList);
}
