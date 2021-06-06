package kr.or.cla.model.vo;

public class cla {
	private int classNo;
	private String className;
	private String classSubject;
	private String classStart;
	private String classEnd;
	public cla() {
		super();
		// TODO Auto-generated constructor stub
	}
	public cla(int classNo, String className, String classSubject, String classStart, String classEnd) {
		this.classNo = classNo;
		this.className = className;
		this.classSubject = classSubject;
		this.classStart = classStart;
		this.classEnd = classEnd;
	}
	public int getClassNo() {
		return classNo;
	}
	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}
	public String getClassName() {
		return className;
	}
	public void setClassName(String className) {
		this.className = className;
	}
	public String getClassSubject() {
		return classSubject;
	}
	public void setClassSubject(String classSubject) {
		this.classSubject = classSubject;
	}
	public String getClassStart() {
		return classStart;
	}
	public void setClassStart(String classStart) {
		this.classStart = classStart;
	}
	public String getClassEnd() {
		return classEnd;
	}
	public void setClassEnd(String classEnd) {
		this.classEnd = classEnd;
	}
	
	
}
