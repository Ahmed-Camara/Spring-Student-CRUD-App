package com.srm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.srm.entity.Student;
import com.srm.service.StudentService;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@Autowired
	private StudentService studentService;
	
	@GetMapping("/students")
	public String getStudents(Model model) {
		
		List<Student> students = studentService.getStudents();
		
		model.addAttribute("students",students);
		

		return "students";
	}
	
	@GetMapping("/create")
	public String addStudent(Model model) {
		
		Student student = new Student();
		
		model.addAttribute("student", student);
		
		return "student-form";
	}
	
	@PostMapping("/save")
	public String saveStudent(@ModelAttribute("student") Student student) {
		
		studentService.saveStudent(student);
		
		return "redirect:/student/students";
	}
	
	@GetMapping("/delete")
	public String deleteStudent(@RequestParam("studentID") int studentID) {
		
		
		studentService.deleteStudent(studentID);
		
		return "redirect:/student/students";
	}
	
	@GetMapping("/updateForm")
	public String updateForm(@RequestParam("studentID") int studentID,Model model) {
		
		Student student = studentService.getStudent(studentID);
		
		
		model.addAttribute("student", student);
		
		System.out.println("Student === >>> "+student);
		
		return "student-form";
	}
}
