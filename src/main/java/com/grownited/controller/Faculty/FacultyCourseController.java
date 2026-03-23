package com.grownited.controller.Faculty;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.grownited.entity.CourseEntity;
import com.grownited.repository.CourseRepository;

@Controller
public class FacultyCourseController {
	
	@Autowired
	CourseRepository courseRepository;
	
	@GetMapping("/faculty/listCourse")
	public String facultyListCourse(Model model) {
		List<CourseEntity> courseList = courseRepository.findAll();
		model.addAttribute("courseList", courseList);
		return"Faculty/FacultyListCourse";
	}
	
}
