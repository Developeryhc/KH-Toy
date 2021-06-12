package kr.or.reservation.model.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.or.reservation.model.vo.Reservation;

@Repository
public class ReservationDao {
	@Autowired
	private SqlSessionTemplate session;

	public int insertReser(Reservation r) {
		return session.update("reser.insertReser",r);
	}

	public List<Reservation> allReser1() {
		return session.selectList("reser.allReser1");
	}
	public List<Reservation> allReser2() {
		return session.selectList("reser.allReser2");
	}
	public List<Reservation> allReser3() {
		return session.selectList("reser.allReser3");
	}

	public String keyReser1() {
		return session.selectOne("reser.key1");
	}
	public String keyReser2() {
		return session.selectOne("reser.key2");
	}
	public String keyReser3() {
		return session.selectOne("reser.key3");
	}
}
