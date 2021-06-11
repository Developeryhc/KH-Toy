package kr.or.record.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.record.model.vo.Record;
import kr.or.reservation.model.vo.Reservation;

@Repository
public class RecordDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public Record selectOneRecord(int studentNo) {
		return sqlSession.selectOne("record.selectOneRecord");
	}

	public int insertOneRecord(Reservation r) {
		return sqlSession.insert("record.insertOneRecord", r);
	}

}