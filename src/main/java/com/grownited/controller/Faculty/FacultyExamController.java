package com.grownited.controller.Faculty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.grownited.entity.BatchEntity;
import com.grownited.entity.CourseEntity;
import com.grownited.entity.ExamEntity;
import com.grownited.entity.SubjectEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.BatchRepository;
import com.grownited.repository.CourseRepository;
import com.grownited.repository.ExamRepository;
import com.grownited.repository.SubjectRepository;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/faculty")
public class FacultyExamController {
	
	@Autowired
	BatchRepository batchRepository;
	
	@Autowired
	SubjectRepository subjectRepository;
	
	@Autowired
	CourseRepository courseRepository;
	
	@Autowired
	ExamRepository examRepository;
	
	@GetMapping("/newExam")
    public String newExam(Model model, HttpSession session) {
		
		UserEntity faculty = (UserEntity) session.getAttribute("user");
		
        List<BatchEntity> batchList = batchRepository.findByFacultyId(faculty.getUserId());
        model.addAttribute("batchList", batchList);

        List<SubjectEntity> subjectList = subjectRepository.findAll();
        model.addAttribute("subjectList", subjectList);

        List<CourseEntity> courseList = courseRepository.findAll();
        model.addAttribute("courseList", courseList);

        return "Faculty/NewExam";
    }
	
	 @PostMapping("/saveExam")
	    public String saveExam(ExamEntity examEntity) {
	        examRepository.save(examEntity);
	        return "redirect:/faculty/listExam";
	    }
	 
	 @GetMapping("/listExam")
	    public String listExam(Model model) {
	        List<ExamEntity> exams = examRepository.findAll();
	        model.addAttribute("exams", exams);
	        return "Faculty/ListExam";
	    }

}
