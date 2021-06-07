package kr.or.student.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.cla.model.vo.cla;
import kr.or.student.model.vo.Student;

@Repository
public class StudentDao {
	@Autowired
	private SqlSession session;
	
	public List selectOneStudent(Student s) {
		return session.selectList("student.selectOneStudent",s);
	}

	public List selectOpenCla() {
		return session.selectList("student.selectOpenCla");
	}
	
}
