package kr.or.record.model.vo;

public class Record {
	private int recordNo;
	private int recordStudent;
	private String recordDate;
	private String recordTime;
	private int recordDay;
	private int reocrdKey;
	
	public Record() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Record(int recordNo, int recordStudent, String recordDate, String recordTime, int recordDay, int reocrdKey) {
		this.recordNo = recordNo;
		this.recordStudent = recordStudent;
		this.recordDate = recordDate;
		this.recordTime = recordTime;
		this.recordDay = recordDay;
		this.reocrdKey = reocrdKey;
	}
	
	public int getRecordNo() {
		return recordNo;
	}
	public void setRecordNo(int recordNo) {
		this.recordNo = recordNo;
	}
	public int getRecordStudent() {
		return recordStudent;
	}
	public void setRecordStudent(int recordStudent) {
		this.recordStudent = recordStudent;
	}
	public String getRecordDate() {
		return recordDate;
	}
	public void setRecordDate(String recordDate) {
		this.recordDate = recordDate;
	}
	public String getRecordTime() {
		return recordTime;
	}
	public void setRecordTime(String recordTime) {
		this.recordTime = recordTime;
	}
	public int getRecordDay() {
		return recordDay;
	}
	public void setRecordDay(int recordDay) {
		this.recordDay = recordDay;
	}
	public int getReocrdKey() {
		return reocrdKey;
	}
	public void setReocrdKey(int reocrdKey) {
		this.reocrdKey = reocrdKey;
	}
}