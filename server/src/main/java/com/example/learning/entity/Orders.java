package com.example.learning.entity;

import java.time.LocalDate;
import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import lombok.Setter;

@Entity
@Data
@RequiredArgsConstructor
@Table(name = "orders")
@Getter
@Setter
public class Orders {

    @Id
    @Column(name = "order_id")
    public int orderId;
    
    @Column(name="customer_id")
    public int customerId;
    
    @Column(name = "order_number")
    public int orderNumber;
    
    @Column(name= "payment_id")
    public int paymentId;
    
    @Column(name="order_date")
    public LocalDateTime orderDate;
    
    @Column(name = "ship_date")
    public LocalDateTime shipDate;
    
    @Column(name = " shipper_id")
    public int shipperId;
    
    public String status;
    
    @Column(name = "payment_date")
    public LocalDateTime paymentDate;
    

}
