package com.example.learning.entity;

import java.math.BigDecimal;

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
@Table(name = "order_details")
@Getter
@Setter
public class OrderDetails {

    @Id
    @Column(name ="order_detail_id")
    public int orderDetailId;
    
    @Column(name = "order_id")
    public int orderId;
    
    @Column(name = "product_id")
    public int productId;
    
    @Column(name = "order_number")
    public int orderNumber;

    public BigDecimal price;
    
    public int quantity;
    
    public String size;
    
    public String color;
}
