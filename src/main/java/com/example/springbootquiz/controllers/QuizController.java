package com.example.springbootquiz.controllers;

import com.example.springbootquiz.entities.Question;
import com.example.springbootquiz.repositories.QuizRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/quiz")
public class QuizController {

    @Autowired
    private QuizRepository quizRepository;

    @GetMapping("/questions")
    public List<Question> getAllQuestions() {
        return quizRepository.findAll();
    }

    @PostMapping("/questions")
    public Question createQuestion(@RequestBody Question question) {
        return quizRepository.save(question);
    }
}