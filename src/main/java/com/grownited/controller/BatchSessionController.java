package com.grownited.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BatchSessionController {
	
	@GetMapping("/newBatchSession")
	public String newBatchSession() {
		
		return "NewBatchSession";
	}
	
	@GetMapping("/listBatchSession")
	public String ListBatchSession() {
		
		return "ListBatchSession";
	}

}
