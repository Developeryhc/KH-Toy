package kr.or.reservation.model.service;


import java.util.ArrayList;
import java.util.List;

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

	public ArrayList<Reservation> allReser1() {
		List list = dao.allReser1();
		return (ArrayList<Reservation>)list;
	}
	public ArrayList<Reservation> allReser2() {
		List list = dao.allReser2();
		return (ArrayList<Reservation>)list;
	}
	public ArrayList<Reservation> allReser3() {
		List list = dao.allReser3();
		return (ArrayList<Reservation>)list;
	}
}
