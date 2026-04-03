package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.ExamEntity;
import com.grownited.entity.BatchEntity;
import com.grownited.entity.SubjectEntity;
import com.grownited.entity.CourseEntity;
import com.grownited.repository.ExamRepository;
import com.grownited.repository.BatchRepository;
import com.grownited.repository.SubjectRepository;
import com.grownited.repository.CourseRepository;

@Controller
public class ExamController {

    @Autowired
    ExamRepository examRepository;

    @Autowired
    BatchRepository batchRepository;

    @Autowired
    SubjectRepository subjectRepository;

    @Autowired
    CourseRepository courseRepository;

    // Show form to create new Exam
    @GetMapping("/newExam")
    public String newExam(Model model) {
        List<BatchEntity> batchList = batchRepository.findAll();
        model.addAttribute("batchList", batchList);

        List<SubjectEntity> subjectList = subjectRepository.findAll();
        model.addAttribute("subjectList", subjectList);

        List<CourseEntity> courseList = courseRepository.findAll();
        model.addAttribute("courseList", courseList);

        return "NewExam";
    }

    // Show list of Exams
    @GetMapping("/listExam")
    public String listExam(Model model) {
        List<ExamEntity> exams = examRepository.findAll();
        model.addAttribute("exams", exams);
        return "ListExam";
    }

    // Save Exam
    @PostMapping("/saveExam")
    public String saveExam(ExamEntity examEntity) {
        examRepository.save(examEntity);
        return "redirect:/listExam";
    }
    
    @GetMapping("/editExam")
    public String editExam(Long examId, Model model) {
        Optional<ExamEntity> exam = examRepository.findById(examId);
        if (exam.isPresent()) {
            model.addAttribute("exam", exam.get());
            model.addAttribute("batchList", batchRepository.findAll());
            model.addAttribute("subjectList", subjectRepository.findAll());
            model.addAttribute("courseList", courseRepository.findAll());
            return "EditExam";
        } else {
            return "redirect:/listExam"; // fallback if not found
        }
    }

    @PostMapping("/updateExam")
    public String updateExam(ExamEntity newExamEntity) {
        Optional<ExamEntity> exam = examRepository.findById(newExamEntity.getExamId());
        if (exam.isPresent()) {
            ExamEntity dbExam = exam.get();

            dbExam.setExamTitle(newExamEntity.getExamTitle());
            dbExam.setExamDescription(newExamEntity.getExamDescription());
            dbExam.setExamDate(newExamEntity.getExamDate());
            dbExam.setExamDifficulty(newExamEntity.getExamDifficulty());
            dbExam.setTotalMarks(newExamEntity.getTotalMarks());

            dbExam.setBatchId(newExamEntity.getBatchId());
            dbExam.setSubjectId(newExamEntity.getSubjectId());
            dbExam.setCourseId(newExamEntity.getCourseId());

            examRepository.save(dbExam);
        }
        return "redirect:/listExam";
    }

    
}
