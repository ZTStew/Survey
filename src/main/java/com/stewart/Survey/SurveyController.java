package com.stewart.Survey;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class SurveyController {

	@GetMapping("")
	public String main(HttpSession session) {
		return "survey.jsp";
	}
	
	@GetMapping("/complete")
	public String complete() {
		return "complete.jsp";
	}
	
	@PostMapping("/process")
	public String process(HttpSession session, RedirectAttributes redirectAttributes, @RequestParam(value="name") String name, @RequestParam(value="language") String language, @RequestParam(value="location") String location, @RequestParam(value="comment") String comment) {
		if(name.length() < 1) {
			redirectAttributes.addFlashAttribute("error", "Name is required.");
			return "redirect:/";
		}
		
		session.setAttribute("name", name);
		session.setAttribute("language", language);
		session.setAttribute("location", location);
		session.setAttribute("comment", comment);
		
		System.out.println("Name: " + session.getAttribute("name"));
		System.out.println("Language: " + session.getAttribute("language"));
		System.out.println("Location: " + session.getAttribute("location"));
		System.out.println("Comment: " + session.getAttribute("comment"));
		
		return "redirect:/complete";
	}
	
	@PostMapping("/back")
	public String back(HttpSession session) {
		session.invalidate();
		return "redirect:";
	}
}
