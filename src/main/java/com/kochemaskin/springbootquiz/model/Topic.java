package com.kochemaskin.springbootquiz.model;


import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "topics")
public class Topic {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;
}