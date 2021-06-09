package kr.or.reservation.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.or.reservation.model.dao.ReservationDao;
import kr.or.reservation.model.vo.Reservation;

@Service
public class ReservationService {
	@Autowired
	public ReservationDao dao;

	public int insertReser(Reservation r) {
		return dao.insertReser(r);
	}
}
