package com.example.learning.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.learning.model.Todo;

@Repository
public interface TodoRepository extends JpaRepository<Todo, Integer>{

    @Modifying
    @Query(value = "UPDATE todo SET del_flg = 1 WHERE id = ?1", nativeQuery = true)
    int deleleTodoLogicalById(Integer id);
    
    @Query(value = "SELECT * FROM todo WHERE  del_flg = ?1 and date(create_date) = ?2", nativeQuery = true)
    List<Todo> findByDelFlgAnDate(Integer delFlg, String createDate);
    
    List<Todo> findByDelFlg(Integer delFlg);
}
