package kr.or.student.model.vo;

public class Student {
	private int studentNo;
	private int studentClass;
	private String studentId;
	private String studentName;
	private String studentPw;
	private String phone;
	private int grade;
	public Student() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Student(int studentNo, int studentClass, String studentId, String studentName, String studentPw,
			String phone, int grade) {
		this.studentNo = studentNo;
		this.studentClass = studentClass;
		this.studentId = studentId;
		this.studentName = studentName;
		this.studentPw = studentPw;
		this.phone = phone;
		this.grade = grade;
	}
	public int getStudentNo() {
		return studentNo;
	}
	public void setStudentNo(int studentNo) {
		this.studentNo = studentNo;
	}
	public int getStudentClass() {
		return studentClass;
	}
	public void setStudentClass(int studentClass) {
		this.studentClass = studentClass;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getStudentName() {
		return studentName;
	}
	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}
	public String getStudentPw() {
		return studentPw;
	}
	public void setStudentPw(String studentPw) {
		this.studentPw = studentPw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	
	
}
