package com.example.learning.service;

import java.math.BigDecimal;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.learning.constants.StatusOrder;
import com.example.learning.entity.OrderDetails;
import com.example.learning.entity.Orders;
import com.example.learning.entity.User;
import com.example.learning.model.OrderListResponse;
import com.example.learning.repository.OrderDetailsRepository;
import com.example.learning.repository.OrdersRepository;
import com.example.learning.repository.UserRepository;

@Service
public class OrderService {

    @Autowired
    private OrdersRepository orderRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private OrderDetailsRepository orderDetailsRepository;

    public List<OrderListResponse> getOrderList() {

        List<OrderListResponse> orderResponseList = new ArrayList<OrderListResponse>();

        List<Orders> lastestOrderList = orderRepository.getLastestOrder();
        List<Integer> orderIdList = lastestOrderList.stream().map(Orders::getOrderId).collect(Collectors.toList());
        List<Integer> cutomerIdList = lastestOrderList.stream().map(Orders::getCustomerId).collect(Collectors.toList());
        List<User> userList = userRepository.getListId(cutomerIdList);
        List<OrderDetails> orderDetailList = orderDetailsRepository.getOrderIdList(orderIdList);

        for (Orders order : lastestOrderList) {
            OrderListResponse orderResponse = new OrderListResponse();
            orderResponse.setOrderNumber(order.getOrderNumber());
            List<User> user = userList.stream().filter(u -> u.getId() == order.getCustomerId())
                    .collect(Collectors.toList());
            orderResponse.setCustomerName(user.get(0).getName());
            orderResponse.setCustomerPhoneNumber(user.get(0).getPhoneNumber());
            orderResponse.setAmount(getTotalAmount(orderDetailList, order.getOrderId()));
            orderResponse.setStatus(StatusOrder.find(order.getStatus()).name());
            DateTimeFormatter formater = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            orderResponse.setOrderDate(order.getOrderDate().format(formater));
            orderResponseList.add(orderResponse);
        }

        return orderResponseList;
    }

    private BigDecimal getTotalAmount(List<OrderDetails> orderDetailList, Integer orderId) {

        BigDecimal amount = new BigDecimal(0);
        List<OrderDetails> orderDetails = orderDetailList.stream().filter(ord -> ord.getOrderId() == orderId)
                .collect(Collectors.toList());
        for (OrderDetails ord : orderDetails) {
            amount = amount.add(new BigDecimal(ord.getQuantity()).multiply(ord.getPrice()));
        }

        return amount;
    }

    public List<OrderListResponse> getOrderAll() {
        
        List<OrderListResponse> orderResponseList = new ArrayList<OrderListResponse>();

        List<Orders> lastestOrderList = orderRepository.findAll();
        List<Integer> orderIdList = lastestOrderList.stream().map(Orders::getOrderId).collect(Collectors.toList());
        List<Integer> cutomerIdList = lastestOrderList.stream().map(Orders::getCustomerId).collect(Collectors.toList());
        List<User> userList = userRepository.getListId(cutomerIdList);
        List<OrderDetails> orderDetailList = orderDetailsRepository.getOrderIdList(orderIdList);

        for (Orders order : lastestOrderList) {
            OrderListResponse orderResponse = new OrderListResponse();
            orderResponse.setOrderNumber(order.getOrderNumber());
            List<User> user = userList.stream().filter(u -> u.getId() == order.getCustomerId())
                    .collect(Collectors.toList());
            orderResponse.setCustomerName(user.get(0).getName());
            orderResponse.setCustomerPhoneNumber(user.get(0).getPhoneNumber());
            orderResponse.setAmount(getTotalAmount(orderDetailList, order.getOrderId()));
            orderResponse.setStatus(StatusOrder.find(order.getStatus()).name());
            DateTimeFormatter formater = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
            orderResponse.setOrderDate(order.getOrderDate().format(formater));
            orderResponseList.add(orderResponse);
        }

        return orderResponseList;
    }
}
