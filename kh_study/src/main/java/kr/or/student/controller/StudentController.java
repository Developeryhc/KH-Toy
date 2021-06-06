package kr.or.student.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.or.student.model.service.StudentService;

@Controller
public class StudentController {
	@Autowired
	private StudentService service;
}
