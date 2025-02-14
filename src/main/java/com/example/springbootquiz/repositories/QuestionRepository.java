package com.example.springbootquiz.repositories;

import com.example.springbootquiz.entities.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Integer> {


    List<Question> findByCategoryIgnoreCase(String category);

    @Query(
            value = "SELECT * FROM quiz_db.public.question q WHERE q.category=:category ORDER BY RANDOM() LIMIT :numQ",
            nativeQuery = true
    )
    List<Question> findRandomQuestionsByCategory(
            String category,
            int numQ
    );

    Optional<Question> findById(Integer id);

}
