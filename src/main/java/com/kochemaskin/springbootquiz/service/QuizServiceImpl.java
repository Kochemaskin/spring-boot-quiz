package com.kochemaskin.springbootquiz.service;

import com.kochemaskin.springbootquiz.model.Option;
import com.kochemaskin.springbootquiz.model.Question;
import com.kochemaskin.springbootquiz.model.Topic;
import com.kochemaskin.springbootquiz.repository.QuestionRepository;
import com.kochemaskin.springbootquiz.repository.TopicRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.hibernate.Hibernate;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class QuizServiceImpl implements QuizService {

    private final QuestionRepository questionRepository;
    private final TopicRepository topicRepository;

    @Override
    public List<Topic> getAllTopics() {
        return topicRepository.findAll();
    }

    @Override
    @Transactional
    public List<Question> createQuiz(String topicName, int numQuestions, List<String> difficulties) {
        if (difficulties == null || difficulties.isEmpty()) {
            difficulties = List.of("Easy", "Medium", "Hard");
        }
        List<Question> questions = questionRepository.findRandomQuestionsByTopicAndDifficulties(
                topicName, difficulties, numQuestions);

        questions.forEach(q -> Hibernate.initialize(q.getOptions()));

        return questions;
    }

    @Override
    public int calculateResult(Map<String, String> responses) {
        Set<Integer> questionIds = responses.keySet().stream()
                .filter(key -> key.startsWith("answers["))
                .map(key -> key.substring(8, key.length() - 1))
                .map(Integer::parseInt)
                .collect(Collectors.toSet());

        Map<Integer, Question> questionsMap = questionRepository.findByIdInWithOptions(questionIds).stream()
                .collect(Collectors.toMap(Question::getId, q -> q));

        int correctAnswers = 0;

        for (Map.Entry<String, String> entry : responses.entrySet()) {
            String key = entry.getKey();
            if (key.startsWith("answers[")) {
                int questionId = Integer.parseInt(key.substring(8, key.length() - 1));
                int submittedOptionId = Integer.parseInt(entry.getValue());

                Question question = questionsMap.get(questionId);
                if (question != null) {
                    boolean isCorrect = question.getOptions().stream()
                            .filter(Option::isCorrect)
                            .anyMatch(opt -> opt.getId().equals(submittedOptionId));

                    if (isCorrect) {
                        correctAnswers++;
                    }
                }
            }
        }
        return correctAnswers;
    }
}