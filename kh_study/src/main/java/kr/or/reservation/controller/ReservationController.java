package kr.or.reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.reservation.model.service.ReservationService;
import kr.or.reservation.model.vo.Reservation;

@Controller
public class ReservationController {
	@Autowired
	private ReservationService service;
	
	@RequestMapping(value="/reservationFrm.do")
	public String reservationFrm() {
		return "member/reservation";
	}
	
	@RequestMapping(value = "/insertReser.do")
	public String insertReser(Reservation r,Model model) {
		int result = service.insertReser(r);
		if(result>0) {
			model.addAttribute("msg","자습신청 완료");
		}else {
			model.addAttribute("msg","자습신청 실패");
		}
		model.addAttribute("loc","reservation");
		return "common/msg";
	}
}