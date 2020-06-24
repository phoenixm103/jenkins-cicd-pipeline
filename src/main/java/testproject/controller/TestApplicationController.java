package testproject.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;



@RestController
public class TestApplicationController {
	
	public int add(int a, int b) {
		return a + b;
	}

	
	public int multiply(int a, int b) {
		return a * b;
	}
	
	@RequestMapping("/hello")
	public String helloTest(){
		return "Hello";
	}
	
}
