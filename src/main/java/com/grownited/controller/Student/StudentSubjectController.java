package com.grownited.controller.Student;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.grownited.entity.SubjectEntity;
import com.grownited.repository.SubjectRepository;

@Controller
@RequestMapping("/student")
public class StudentSubjectController {
	
	@Autowired
	SubjectRepository subjectRepository;
	
	@GetMapping("listSubjectForCourse")
	public String listSubjectForCourse(Integer courseId, Model model) {
		List<SubjectEntity> subjectList = subjectRepository.findByCourseId(courseId);
		model.addAttribute("subjectList",subjectList);
		return"Student/ListSubjectForCourse";
	}

}
