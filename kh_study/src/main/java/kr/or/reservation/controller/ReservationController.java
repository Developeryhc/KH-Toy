package kr.or.reservation.controller;

import java.text.ParseException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.record.model.service.RecordService;
import kr.or.reservation.model.service.ReservationService;
import kr.or.reservation.model.vo.Reservation;

@Controller
public class ReservationController {
	@Autowired
	private ReservationService service;
	@Autowired
	private RecordService recService;
	@RequestMapping(value="/reservationFrm.do")
	public String reservationFrm(Model model) {
		
		ArrayList<Reservation> list1 = service.allReser1();
		ArrayList<Reservation> list2 = service.allReser2();
		ArrayList<Reservation> list3 = service.allReser3();
		model.addAttribute("list1",list1);
		model.addAttribute("list2",list2);
		model.addAttribute("list3",list3);
		
		String key1 = service.keyReser1();
		String key2 = service.keyReser2();
		String key3 = service.keyReser3();
		model.addAttribute("key1",key1);
		model.addAttribute("key2",key2);
		model.addAttribute("key3",key3);
		
		return "member/reservation";
	}
	
	@RequestMapping(value = "/insertReser.do")
	public String insertReser(Reservation r,Model model){

		//sysdate +" "+지정한 날짜
		r.setReserStart(r.getReserDate()+" "+r.getReserStart());
		r.setReserEnd(r.getReserDate()+" "+r.getReserEnd());
			
		int result = service.insertReser(r);
		if(result>0) {
			result = recService.insertRecord(r);
			if(result>0) {
				model.addAttribute("msg","자습신청 완료");
			}else {
				model.addAttribute("msg","자습신청 실패 에러코드[00IC]");
			}
		}else {
			model.addAttribute("msg","자습신청 실패 에러코드[00IR]");
		}
		model.addAttribute("loc","/reservationFrm.do");
		return "common/msg";
	}
	
	@RequestMapping(value = "/reserDelete.do")
	public String reserDelete(Model model,int studentNo) {
		int result = service.reserDelete(studentNo);
		if(result>0) {
			model.addAttribute("msg","자습신청이 취소되었습니다.");
		}else {
			model.addAttribute("msg","자습신청이 취소 실패");
		}
		model.addAttribute("loc","/reservationFrm.do");
		return "common/msg";
	}
}













