package com.example.learning.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.learning.entity.Orders;

@Repository
public interface OrdersRepository extends JpaRepository<Orders, Integer> {

    @Query(value = "SELECT * FROM orders o ORDER BY o.order_date DESC LIMIT 10" , nativeQuery=true)
    List<Orders> getLastestOrder();
}
