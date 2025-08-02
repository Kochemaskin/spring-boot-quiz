package com.kochemaskin.springbootquiz.repository;


import com.kochemaskin.springbootquiz.model.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Integer> {

    /**
     * Выбирает случайные вопросы по теме и списку сложностей.
     * Использует специфичную для PostgreSQL функцию RANDOM().
     */
    @Query(value = "SELECT * FROM questions q WHERE q.topic_id = (SELECT id FROM topics t WHERE t.name = :topicName) " +
            "AND q.difficulty IN (:difficulties) ORDER BY RANDOM() LIMIT :limit",
            nativeQuery = true)
    List<Question> findRandomQuestionsByTopicAndDifficulties(
            @Param("topicName") String topicName,
            @Param("difficulties") List<String> difficulties,
            @Param("limit") int limit
    );

    @Query("SELECT q FROM Question q JOIN FETCH q.options WHERE q.id IN :ids")
    List<Question> findByIdInWithOptions(@Param("ids") Set<Integer> ids);
}