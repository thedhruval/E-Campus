package com.grownited.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CourseEntity;
import com.grownited.entity.SubjectEntity;
import com.grownited.repository.CourseRepository;
import com.grownited.repository.SubjectRepository;

@Controller
public class SubjectController {
	
	@Autowired
	SubjectRepository subjectRepository;
	
	@Autowired
	CourseRepository courseRepository;
	
	@GetMapping("/newSubject")
	public String newSubject(Model model) {
		
		List<CourseEntity> courseList = courseRepository.findAll();
		model.addAttribute("courseList", courseList);
		return "NewSubject";
	}
	
	@PostMapping("/saveSubject")
	public String saveSubject(SubjectEntity subjectEntity) {
		
		subjectRepository.save(subjectEntity);
		return"redirect:/listSubject";
	}
	
	@GetMapping("/listSubject")
	public String listSubject(Model model) {
		List<SubjectEntity> subjectList = subjectRepository.findAll();
		model.addAttribute("subjectList", subjectList);
		return "ListSubject";
	}
	
	@GetMapping("/editSubject")
	public String editSubject(Integer subjectId, Model model) {
	    Optional<SubjectEntity> subject = subjectRepository.findById(subjectId);
	    if (subject.isPresent()) {
	        model.addAttribute("subject", subject.get());
	        model.addAttribute("courseList", courseRepository.findAll());
	        return "EditSubject";
	    } else {
	        return "redirect:/listSubject"; // fallback if not found
	    }
	}

	@PostMapping("/updateSubject")
	public String updateSubject(SubjectEntity newSubjectEntity) {
	    Optional<SubjectEntity> subject = subjectRepository.findById(newSubjectEntity.getSubjectId());
	    if (subject.isPresent()) {
	        SubjectEntity dbSubject = subject.get();

	        dbSubject.setSubjectName(newSubjectEntity.getSubjectName());
	        dbSubject.setSemester(newSubjectEntity.getSemester());
	        dbSubject.setCourseId(newSubjectEntity.getCourseId());

	        subjectRepository.save(dbSubject);
	    }
	    return "redirect:/listSubject";
	}
	
	@GetMapping("listSubjectForCourse")
	public String listSubjectForCourse(Integer courseId, Model model) {
		List<SubjectEntity> subjectList = subjectRepository.findByCourseId(courseId);
		model.addAttribute("subjectList",subjectList);
		return"ListSubjectForCourse";
	}



}
