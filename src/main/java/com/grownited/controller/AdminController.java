package com.grownited.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.grownited.entity.CourseEntity;
import com.grownited.repository.BatchRepository;
import com.grownited.repository.CourseRepository;
import com.grownited.repository.EnrollmentRepository;
import com.grownited.repository.UserRepository;

@Controller
public class AdminController {

	@Autowired
	UserRepository userRepository;

	@Autowired
	CourseRepository courseRepository;

	@Autowired
	private BatchRepository batchRepository;

	@Autowired
	EnrollmentRepository enrollmentRepository;

	@GetMapping(value = { "/admin-dashboard", "/" })
	public String openAdminDashboard(Model model) {

		Long studentCount = userRepository.countByRole("STUDENT");
		model.addAttribute("studentCount", studentCount);

		Long facultyCount = userRepository.countByRole("FACULTY");
		model.addAttribute("facultyCount", facultyCount);

		Long adminCount = userRepository.countByRole("ADMIN");
		model.addAttribute("adminCount", adminCount);

		Long courseCount = courseRepository.count();
		model.addAttribute("courseCount", courseCount);

		// Batch status counts for chart
		Long completedCount = batchRepository.countByStatus("COMPLETED");
		Long ongoingCount = batchRepository.countByStatus("ON_GOING");
		Long holdCount = batchRepository.countByStatus("HOLD");
		Long notStartedCount = batchRepository.countByStatus("NOT_STARTED");

		model.addAttribute("completedCount", completedCount);
		model.addAttribute("ongoingCount", ongoingCount);
		model.addAttribute("holdCount", holdCount);
		model.addAttribute("notStartedCount", notStartedCount);

		// Enrollment trend data
		List<CourseEntity> courses = courseRepository.findAll();
		List<String> courseNames = new ArrayList<>();
		List<Long> enrollmentCounts = new ArrayList<>();

		for (CourseEntity course : courses) {
			courseNames.add(course.getCourseName());
			enrollmentCounts.add(enrollmentRepository.countByCourseId(course.getCourseId()));
		}

		model.addAttribute("courseNames", courseNames);
		model.addAttribute("enrollmentCounts", enrollmentCounts);

		// Course List
		List<CourseEntity> courseList = courseRepository.findAll();
		model.addAttribute("courseList", courseList);

		return "AdminDashboard"; // jsp name
	}

	@PostMapping(value = "/admin-dashboard")
	public String openAdminDashboardpost(Model model) {

		Long studentCount = userRepository.countByRole("STUDENT");
		model.addAttribute("studentCount", studentCount);

		Long facultyCount = userRepository.countByRole("FACULTY");
		model.addAttribute("facultyCount", facultyCount);

		Long adminCount = userRepository.countByRole("ADMIN");
		model.addAttribute("adminCount", adminCount);

		Long courseCount = courseRepository.count();
		model.addAttribute("courseCount", courseCount);

		// Batch status counts for chart
		Long completedCount = batchRepository.countByStatus("COMPLETED");
		Long ongoingCount = batchRepository.countByStatus("ON_GOING");
		Long holdCount = batchRepository.countByStatus("HOLD");
		Long notStartedCount = batchRepository.countByStatus("NOT_STARTED");

		model.addAttribute("completedCount", completedCount);
		model.addAttribute("ongoingCount", ongoingCount);
		model.addAttribute("holdCount", holdCount);
		model.addAttribute("notStartedCount", notStartedCount);

		// Enrollment trend data
		List<CourseEntity> courses = courseRepository.findAll();
		List<String> courseNames = new ArrayList<>();
		List<Long> enrollmentCounts = new ArrayList<>();

		for (CourseEntity course : courses) {
			courseNames.add(course.getCourseName());
			enrollmentCounts.add(enrollmentRepository.countByCourseId(course.getCourseId()));
		}

		model.addAttribute("courseNames", courseNames);
		model.addAttribute("enrollmentCounts", enrollmentCounts);

		// Course List
		List<CourseEntity> courseList = courseRepository.findAll();
		model.addAttribute("courseList", courseList);

		return "AdminDashboard"; // jsp name

	}

}
