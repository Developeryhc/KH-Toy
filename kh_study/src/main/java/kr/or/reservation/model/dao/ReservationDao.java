package kr.or.reservation.model.dao;

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
}
