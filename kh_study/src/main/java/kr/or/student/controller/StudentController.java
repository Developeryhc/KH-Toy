package kr.or.student.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.google.gson.Gson;

import kr.or.cla.model.vo.cla;
import kr.or.student.model.service.StudentService;
import kr.or.student.model.vo.Student;

@Controller
public class StudentController {
	@Autowired
	private StudentService service;
	
	//가입 시 ID 중복체크
	@ResponseBody
	@RequestMapping(value="/checkId.do")
	public String checkId(Student s) {
		Student stu = service.selectOneStudent(s);
		if(stu != null) {
			return "1";
		}
		return "0";
	}
	//개강중인 class 가져오기
	@ResponseBody
	@RequestMapping(value="/searchClass.do", produces="application/json;charset=utf-8")
	public String searchClass() {
		ArrayList<cla> list = service.selectOpenCla();
		return new Gson().toJson(list);
	}
	//회원가입 처리
	@ResponseBody
	@RequestMapping(value="/join.do")
	public String join(Student s) {
		int result = service.insertStudent(s);
		if(result > 0) {
			return "1";
		}
		return "0";
	}
	//로그인 처리
	@ResponseBody
	@RequestMapping(value="/login.do")
	public String login(HttpSession session,Student s) {
		Student st = service.selectOneStudent(s);
		if(st != null) {
			session.setAttribute("s", st);		//로그인 세션 등록
			return "1";
		}
		return "0";
	}
	//아이디 찾기
	@ResponseBody
	@RequestMapping(value="/forgetId.do", produces="application/json;charset=utf-8")
	public String forgetId(Student s) {
		Student st = service.selectOneStudent(s);
		if(st != null) {
			return new Gson().toJson(st);
		}
		return null;
	}
	//비밀번호 찾기
	@ResponseBody
	@RequestMapping(value="/forgetPw.do")
	public String forgetPw(Student s) {
		Student st = service.selectOneStudent(s);
		if(st != null) {
			return "1";
		}
		return "0";
	}
	
	//마이페이지 이동
	@RequestMapping(value="/mypage.do")
	public String mypage(@SessionAttribute(required=false) Student s, Model model) {
		Student student = service.selectOneStudent(s);
		model.addAttribute("student", student);
		return "member/mypage";
	}
}
