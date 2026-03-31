package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CourseEntity;
import com.grownited.repository.CourseRepository;


@Controller
public class CourseController {
	
	@Autowired
	CourseRepository courseRepository;
	
	@GetMapping("/newCourse")
	public String newCourse() {
		
		return "NewCourse";
	}
	
	
	@PostMapping("/saveCourse")
	public String saveCourse(CourseEntity courseEntity) {
		
		courseRepository.save(courseEntity);
		
		return "redirect:/listCourse";
	}
	
	@GetMapping("/listCourse")
	public String listCourse(Model model) {
		
		List<CourseEntity> courseList = courseRepository.findAll();
		
		model.addAttribute("courseList",courseList);
		
		return "ListCourse";
	}
	
	@GetMapping("/deleteCourse")
	public String deleteCourse(Integer courseId) {
		
		courseRepository.deleteById(courseId);
		return "redirect:/listCourse";
	}
	
	@GetMapping("/editCourse")
	public String editCourse(Integer courseId, Model model) {
	    Optional<CourseEntity> course = courseRepository.findById(courseId);
	    if (course.isPresent()) {
	        model.addAttribute("course", course.get()); // pass the entity itself
	        return "EditCourse";
	    } else {
	        return "redirect:/listCourse"; // fallback if not found
	    }
	}

	
	@PostMapping("/updateCourse")
	public String updateCourse(CourseEntity newCourseEntity) {
		Optional<CourseEntity> course =  courseRepository.findById(newCourseEntity.getCourseId());
		if (course.isPresent()) {
			CourseEntity dbCourse = course.get();
			dbCourse.setCourseName(newCourseEntity.getCourseName());
			dbCourse.setAcademicCycle(newCourseEntity.getAcademicCycle());
			dbCourse.setActive(newCourseEntity.getActive());
			dbCourse.setDevelopmentCost(newCourseEntity.getDevelopmentCost());
			dbCourse.setPaidSeats(newCourseEntity.getPaidSeats());
			dbCourse.setTotalSeats(newCourseEntity.getTotalSeats());
			
			courseRepository.save(dbCourse);
			
		}
		return"redirect:/listCourse";
	}

}
