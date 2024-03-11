package com.example.springbootquiz.repositories;

import com.example.springbootquiz.entities.Question;
import org.springframework.data.jpa.repository.JpaRepository;

public interface QuizRepository extends JpaRepository<Question, Long> {
}