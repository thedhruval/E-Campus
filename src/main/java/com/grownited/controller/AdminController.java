package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class AdminController {
	
	@GetMapping(value = {"/admin-dashboard", "/"})
	public String openAdminDashboard() {
		return "AdminDashboard"; //jsp name
		
	}
	
	@PostMapping(value = "/admin-dashboard")
	public String openAdminDashboardpost() {
		return "AdminDashboard"; //jsp name
		
	}

}
