package kr.or.record.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.record.model.vo.Record;

@Repository
public class RecordDao {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public Record selectOneRecord(int studentNo) {
		return sqlSession.selectOne("record.selectOneRecord");
	}

}