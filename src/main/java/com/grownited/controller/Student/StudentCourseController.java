package com.grownited.controller.Student;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.CourseEntity;
import com.grownited.entity.EnrollmentEntity;
import com.grownited.entity.UserEntity;
import com.grownited.repository.CourseRepository;
import com.grownited.repository.EnrollmentRepository;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentCourseController {
	
	@Autowired
	CourseRepository courseRepository;
	
	@Autowired
	EnrollmentRepository enrollmentRepository;
	
	@GetMapping("/student/listCourse")
	public String studentListCourse(Model model) {
		List<CourseEntity> courseList = courseRepository.findAll();
		model.addAttribute("courseList", courseList);
		return"Student/StudentListCourse";
	}
	
	@GetMapping("/student/myCourse")
	public String studentMyCourse(Model model, HttpSession session) {
		
		UserEntity user = (UserEntity) session.getAttribute("user");
		Integer userId = user.getUserId();
		List<EnrollmentEntity> mycourses = enrollmentRepository.findByUserId(userId);
		model.addAttribute("mycourses", mycourses);
		
		return "Student/MyCourses";
	}
	
}
