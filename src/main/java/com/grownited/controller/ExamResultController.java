package com.grownited.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ExamResultEntity;
import com.grownited.entity.ExamEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.ExamResultRepository;
import com.grownited.repository.ExamRepository;
import com.grownited.repository.UserRepository;

@Controller
public class ExamResultController {

    @Autowired
    ExamResultRepository examResultRepository;

    @Autowired
    ExamRepository examRepository;

    @Autowired
    UserRepository userRepository;

    // Show form to create new Exam Result
    @GetMapping("/newExamResult")
    public String newExamResult(Model model) {
        List<ExamEntity> examList = examRepository.findAll();
        model.addAttribute("examList", examList);

        List<UserEntity> studentList = userRepository.findByRole("STUDENT");
        model.addAttribute("studentList", studentList);

        return "NewExamResult";
    }

    // Show list of Exam Results
    @GetMapping("/listExamResult")
    public String listExamResult(Model model) {
        List<ExamResultEntity> examResults = examResultRepository.findAll();
        model.addAttribute("examResults", examResults);
        return "ListExamResult";
    }

    // Save Exam Result
    @PostMapping("/saveExamResult")
    public String saveExamResult(ExamResultEntity examResultEntity) {
        examResultRepository.save(examResultEntity);
        return "redirect:/listExamResult";
    }
}
