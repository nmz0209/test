package tw.myproject.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.myproject.model.Test;
import tw.myproject.model.TestService;

@Controller
public class TestController {
	
	@Autowired
	private TestService service;
	
	@GetMapping("/findall")
	public String processFindTestAction() {
		return "test";
	}
	
	@PostMapping("/findtest")
	@ResponseBody
	public List<Test> processFindTest(Test test) {
		return service.findAll();
	}
}
