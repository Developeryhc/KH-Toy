package kr.or.record.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.or.record.model.service.RecordService;
import kr.or.record.model.vo.Record;

@Controller
public class RecordController {
	@Autowired
	private RecordService service;
	
	@RequestMapping(value="/myChart")
	public String myChart(@SessionAttribute(required=false)int studentNo, Model model) {
		Record r = service.selectOneRecord(studentNo);
		model.addAttribute("r", r);
		return "member/myChart";
	}
}
