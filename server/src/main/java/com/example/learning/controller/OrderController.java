package com.example.learning.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.learning.model.OrderListResponse;
import com.example.learning.service.OrderService;

@RestController
@RequestMapping(value = "/api/order")
public class OrderController {

    @Autowired
    private OrderService orderService;
    
    @RequestMapping(value = "/lastest", method = RequestMethod.GET)
    public ResponseEntity<List<OrderListResponse>> getOrderList() {
        
        List<OrderListResponse> orderResponseList = orderService.getOrderList(); 
        return ResponseEntity.ok().body(orderResponseList);
    }
    @RequestMapping(value = "/all", method = RequestMethod.GET)
    public ResponseEntity<List<OrderListResponse>> getOrderAll() {
        
        List<OrderListResponse> orderResponseList = orderService.getOrderAll(); 
        return ResponseEntity.ok().body(orderResponseList);
    }
}
