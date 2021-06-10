package kr.or.reservation.model.vo;

import java.sql.Date;

public class Reservation {
	private int reserNo;
	private int reserStudent;
	private String date;
	private char reserKey;
	private String reserStart;
	private String reserEnd;
	public Reservation() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Reservation(int reserNo, int reserStudent, String date, char reserKey, String reserStart, String reserEnd) {
		super();
		this.reserNo = reserNo;
		this.reserStudent = reserStudent;
		this.date = date;
		this.reserKey = reserKey;
		this.reserStart = reserStart;
		this.reserEnd = reserEnd;
	}
	public int getReserNo() {
		return reserNo;
	}
	public void setReserNo(int reserNo) {
		this.reserNo = reserNo;
	}
	public int getReserStudent() {
		return reserStudent;
	}
	public void setReserStudent(int reserStudent) {
		this.reserStudent = reserStudent;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public char getReserKey() {
		return reserKey;
	}
	public void setReserKey(char reserKey) {
		this.reserKey = reserKey;
	}
	public String getReserStart() {
		return reserStart;
	}
	public void setReserStart(String reserStart) {
		this.reserStart = reserStart;
	}
	public String getReserEnd() {
		return reserEnd;
	}
	public void setReserEnd(String reserEnd) {
		this.reserEnd = reserEnd;
	}
	

}
	