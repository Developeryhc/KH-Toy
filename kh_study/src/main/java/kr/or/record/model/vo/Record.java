package kr.or.record.model.vo;

public class Record {
	private int recordNo;
	private int recordStudent;
	private String recordDate;
	private String recordTime;
	private int recordDay;
	private int reocrdKey;
	// 평균치를 담는 변수
	private int totalTime;
	private int totalDay;
	private int avgTime;
	private int avgEnd;
	
	
	public Record() {
		super();
		// TODO Auto-generated constructor stub
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


	public int getTotalTime() {
		return totalTime;
	}


	public void setTotalTime(int totalTime) {
		this.totalTime = totalTime;
	}


	public int getTotalDay() {
		return totalDay;
	}


	public void setTotalDay(int totalDay) {
		this.totalDay = totalDay;
	}


	public int getAvgTime() {
		return avgTime;
	}


	public void setAvgTime(int avgTime) {
		this.avgTime = avgTime;
	}


	public int getAvgEnd() {
		return avgEnd;
	}


	public void setAvgEnd(int avgEnd) {
		this.avgEnd = avgEnd;
	}


	public Record(int recordNo, int recordStudent, String recordDate, String recordTime, int recordDay, int reocrdKey,
			int totalTime, int totalDay, int avgTime, int avgEnd) {
		this.recordNo = recordNo;
		this.recordStudent = recordStudent;
		this.recordDate = recordDate;
		this.recordTime = recordTime;
		this.recordDay = recordDay;
		this.reocrdKey = reocrdKey;
		this.totalTime = totalTime;
		this.totalDay = totalDay;
		this.avgTime = avgTime;
		this.avgEnd = avgEnd;
	}
}