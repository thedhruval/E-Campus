package com.grownited.controller.Student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.grownited.entity.ExamResultEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.ExamResultRepository;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/student")
public class StudentExamResultController {
	
	@Autowired
	ExamResultRepository examResultRepository;
	
	@GetMapping("/listExamResult")
    public String viewExamResult(HttpSession session, Model model) {
        UserEntity user = (UserEntity) session.getAttribute("user");
        List<ExamResultEntity> examResults = examResultRepository.findByStudentId(user.getUserId());
        model.addAttribute("examResults", examResults);
        return "Student/ListExamResult";
    }

}
