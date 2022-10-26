package com.example.learning.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.RequiredArgsConstructor;

@Entity
@Table(name = "category")
@Data
@RequiredArgsConstructor
public class Category {

    @Id
    @GeneratedValue
    @Column
    public int id;
    
    @Column
    public String name;
    
    
}
