package com.srm.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Home {
	
	@GetMapping("/")
	public String showHome() {
		
		return "index";
	}
}
