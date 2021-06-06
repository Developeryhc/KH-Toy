package kr.or.reservation.model.vo;

public class Reservation {
	private int reservationNo;
	private int reservationStudent;
	private String reservationDate;
	private String reservationKey;
	private String reservationEnd;
	public Reservation() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Reservation(int reservationNo, int reservationStudent, String reservationDate, String reservationKey,
			String reservationEnd) {
		this.reservationNo = reservationNo;
		this.reservationStudent = reservationStudent;
		this.reservationDate = reservationDate;
		this.reservationKey = reservationKey;
		this.reservationEnd = reservationEnd;
	}
	public int getReservationNo() {
		return reservationNo;
	}
	public void setReservationNo(int reservationNo) {
		this.reservationNo = reservationNo;
	}
	public int getReservationStudent() {
		return reservationStudent;
	}
	public void setReservationStudent(int reservationStudent) {
		this.reservationStudent = reservationStudent;
	}
	public String getReservationDate() {
		return reservationDate;
	}
	public void setReservationDate(String reservationDate) {
		this.reservationDate = reservationDate;
	}
	public String getReservationKey() {
		return reservationKey;
	}
	public void setReservationKey(String reservationKey) {
		this.reservationKey = reservationKey;
	}
	public String getReservationEnd() {
		return reservationEnd;
	}
	public void setReservationEnd(String reservationEnd) {
		this.reservationEnd = reservationEnd;
	}
	
	
}
