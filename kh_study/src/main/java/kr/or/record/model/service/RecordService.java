package kr.or.record.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.or.record.model.dao.RecordDao;
import kr.or.record.model.vo.Record;
import kr.or.reservation.model.vo.Reservation;

@Service
public class RecordService {
	@Autowired
	private RecordDao dao;
	
	public Record selectOneRecord(int studentNo) {
		return dao.selectOneRecord(studentNo);
	}
	@Transactional
	public int insertRecord(Reservation r) {
		return dao.insertOneRecord(r);
	}

}
