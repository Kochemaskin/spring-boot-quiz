package com.kochemaskin.springbootquiz.service;

import com.kochemaskin.springbootquiz.model.Question;
import com.kochemaskin.springbootquiz.model.Topic;

import java.util.List;
import java.util.Map;

public interface QuizService {

    /**
     * Получает все доступные темы для квиза.
     * @return Список тем.
     */
    List<Topic> getAllTopics();

    /**
     * Создает новый квиз на основе параметров пользователя.
     * @param topicName Название темы.
     * @param numQuestions Количество вопросов.
     * @param difficulties Список уровней сложности.
     * @return Список вопросов для квиза.
     */
    List<Question> createQuiz(String topicName, int numQuestions, List<String> difficulties);

    /**
     * Подсчитывает результат квиза.
     * @param responses Map, где ключ - ID вопроса (String), а значение - ID выбранного ответа (String).
     * @return Количество правильных ответов.
     */
    int calculateResult(Map<String, String> responses);
}