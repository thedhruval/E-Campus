package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class AdminController {
	
	@GetMapping(value = {"/admin-dashboard", "/"})
	public String openAdminDashboard() {
		return "AdminDashboard"; //jsp name
		
	}

}
