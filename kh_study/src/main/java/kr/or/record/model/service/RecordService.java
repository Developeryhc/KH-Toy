package kr.or.record.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.record.model.dao.RecordDao;
import kr.or.record.model.vo.Record;

@Service
public class RecordService {
	@Autowired
	private RecordDao dao;
	
	public Record selectOneRecord(int studentNo) {
		return dao.selectOneRecord(studentNo);
	}

}
