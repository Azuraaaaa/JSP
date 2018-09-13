package exp02;

import java.util.ArrayList;

public class Student {
	private String studentId;
	private String studentName;
	private String studentSex;
	private String studentClass;
	private double studentGrade;
	
	public Student(String studentId,String studentName,String studentSex,String studentClass,double studentGrade) {
		this.studentId = studentId;
		this.studentName = studentName;
		this.studentSex = studentSex;
		this.studentClass = studentClass;
		this.studentGrade = studentGrade;
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
	public String getStudentSex() {
		return studentSex;
	}
	public void setStudentSex(String studentSex) {
		this.studentSex = studentSex;
	}
	public String getStudentClass() {
		return studentClass;
	}
	public void setStudentClass(String studentClass) {
		this.studentClass = studentClass;
	}
	public double getStudentGrade() {
		return studentGrade;
	}
	public void setStudentGrade(int studentGrade) {
		this.studentGrade = studentGrade;
	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		ArrayList<Student> stu=new ArrayList<Student>();
	}
}
