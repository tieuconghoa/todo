package com.example.learning.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.learning.model.HelloResponse;
import com.example.learning.user.CustomUserDetails;

@RestController
public class HelloWorldController {


    @RequestMapping({ "/hello" })
    @CrossOrigin("http://localhost:8080")
    public ResponseEntity<?> helloWorld() {

        Authentication authentication = (Authentication) SecurityContextHolder.getContext()
                .getAuthentication();
        CustomUserDetails user = (CustomUserDetails) authentication.getPrincipal();
        
        return ResponseEntity.ok(new HelloResponse("hello " + user.getUsername()));
    }
}
