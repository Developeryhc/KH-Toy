package kr.or.reservation.model.vo;

import java.sql.Date;

public class Reservation {
	private int reserNo;
	private int reserStudent;
	private Date date;
	private char reserKey;
	private Date reserStart;
	private Date reserEnd;
	public Reservation() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Reservation(int reserNo, int reserStudent, Date date, char reserKey, Date reserStart, Date reserEnd) {
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
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public char getReserKey() {
		return reserKey;
	}
	public void setReserKey(char reserKey) {
		this.reserKey = reserKey;
	}
	public Date getReserStart() {
		return reserStart;
	}
	public void setReserStart(Date reserStart) {
		this.reserStart = reserStart;
	}
	public Date getReserEnd() {
		return reserEnd;
	}
	public void setReserEnd(Date reserEnd) {
		this.reserEnd = reserEnd;
	}
	
}
	