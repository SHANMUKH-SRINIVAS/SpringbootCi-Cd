package com.basedomain.event.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class CICDController {

	@GetMapping("/hello")
	public String sayHello() {
		return "Hello Shanmukh CI/CD has Triggered perfectly";
	}
}
