package kr.or.reservation.controller;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.reservation.model.service.ReservationService;
import kr.or.reservation.model.vo.Reservation;
import kr.or.student.model.vo.Student;

@Controller
public class ReservationController {
	@Autowired
	private ReservationService service;
	
	@RequestMapping(value="/reservationFrm.do")
	public String reservationFrm(HttpSession session,Model model) {
		Student stu = (Student) session.getAttribute("s");
		if(stu != null ) {
			ArrayList<Reservation> list1 = service.allReser1();
			ArrayList<Reservation> list2 = service.allReser2();
			ArrayList<Reservation> list3 = service.allReser3();
			model.addAttribute("list1",list1);
			model.addAttribute("list2",list2);
			model.addAttribute("list3",list3);
			return "member/reservation";
		}else {
			model.addAttribute("msg","로그인 후 이용이 가능합니다.");
			model.addAttribute("loc","/");
		}
		return "common/msg";
	}
	
	@RequestMapping(value = "/insertReser.do")
	public String insertReser(Reservation r,Model model) throws ParseException {

		r.setReserStart(r.getDate()+" "+r.getReserStart());
		r.setReserEnd(r.getDate()+" "+r.getReserEnd());

		
			
		int result = service.insertReser(r);
		if(result>0) {
			model.addAttribute("msg","자습신청 완료");
		}else {
			model.addAttribute("msg","자습신청 실패");
		}
		
		model.addAttribute("loc","/reservationFrm.do");
		return "common/msg";
	}
}