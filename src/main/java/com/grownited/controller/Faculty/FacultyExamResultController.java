package com.grownited.controller.Faculty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.grownited.entity.ExamEntity;
import com.grownited.entity.ExamResultEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.ExamRepository;
import com.grownited.repository.ExamResultRepository;
import com.grownited.repository.UserRepository;

@Controller
@RequestMapping("/faculty")
public class FacultyExamResultController {
	
	@Autowired
	ExamRepository examRepository;
	
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	ExamResultRepository examResultRepository;
	
	@GetMapping("/newExamResult")
    public String newExamResult(Model model) {
        List<ExamEntity> examList = examRepository.findAll();
        model.addAttribute("examList", examList);

        List<UserEntity> studentList = userRepository.findByRole("STUDENT");
        model.addAttribute("studentList", studentList);

        return "Faculty/NewExamResult";
	}
	
	 @PostMapping("/saveExamResult")
	    public String saveExamResult(ExamResultEntity examResultEntity) {
	        examResultRepository.save(examResultEntity);
	        return "redirect:/faculty/newExamResult";
	    }

}
