package kr.or.student.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;

import kr.or.cla.model.vo.cla;
import kr.or.student.model.service.StudentService;
import kr.or.student.model.vo.Student;

@Controller
public class StudentController {
	@Autowired
	private StudentService service;
	
	//가입 시 ID 중복체크 controller
	@ResponseBody
	@RequestMapping(value="/checkId.do")
	public String checkId(Student s) {
		Student stu = service.selectOneStudent(s);
		if(stu != null) {
			return "1";
		}
		return "0";
	}
	//개강중인 class 가져오기 controller
	@ResponseBody
	@RequestMapping(value="/searchClass.do", produces="application/json;charset=utf-8")
	public String searchClass() {
		ArrayList<cla> list = service.selectOpenCla();
		return new Gson().toJson(list);
	}
}
