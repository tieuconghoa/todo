package com.example.learning.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.learning.entity.OrderDetails;

@Repository
public interface OrderDetailsRepository extends JpaRepository<OrderDetails, Integer> {

    @Query(value = "SELECT * FROM order_details ord WHERE ord.order_id in ?1", nativeQuery = true)
    List<OrderDetails> getOrderIdList(List<Integer> orderIdList);
}
