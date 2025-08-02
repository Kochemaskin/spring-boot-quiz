package com.kochemaskin.springbootquiz.controllers;

import com.kochemaskin.springbootquiz.model.Question;
import com.kochemaskin.springbootquiz.service.QuizService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
public class QuizController {

    private final QuizService quizService;

    @GetMapping("/")
    public String showSetupForm(Model model) {
        model.addAttribute("topics", quizService.getAllTopics());
        return "quiz-setup";
    }

    @PostMapping("/quiz")
    public String startQuiz(@RequestParam String topicName,
                            @RequestParam int numQuestions,
                            @RequestParam(required = false) List<String> difficulties,
                            RedirectAttributes redirectAttributes) {

        List<Question> questions = quizService.createQuiz(topicName, numQuestions, difficulties);
        redirectAttributes.addFlashAttribute("questions", questions);
        return "redirect:/quiz/play";
    }

    @GetMapping("/quiz/play")
    public String playQuiz(Model model) {
        if (!model.containsAttribute("questions")) {
            return "redirect:/";
        }
        return "quiz-play";
    }

    @PostMapping("/quiz/submit")
    public String submitQuiz(@RequestParam Map<String, String> answers,
                             RedirectAttributes redirectAttributes) {

        int score = quizService.calculateResult(answers);
        redirectAttributes.addFlashAttribute("score", score);
        redirectAttributes.addFlashAttribute("totalQuestions", answers.size());
        return "redirect:/quiz/result";
    }

    @GetMapping("/quiz/result")
    public String showResult(Model model) {
        if (!model.containsAttribute("score")) {
            return "redirect:/";
        }
        return "quiz-result";
    }
}