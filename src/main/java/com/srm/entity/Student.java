package com.srm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="student")
public class Student {

	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="student_name")
	private String student_name;
	
	@Column(name="course_title")
	private String course_title;
	
	@Column(name="phone_number")
	private String phone_number;
	
	@Column(name="email_address")
	private String email_address;
	
	@Column(name="course_fees")
	private String course_fees;
	
	public Student() {}
	
	
	

	public Student(String student_name, String course_title, String phone_number, String email_address,
			String course_fees) {
		super();
		this.student_name = student_name;
		this.course_title = course_title;
		this.phone_number = phone_number;
		this.email_address = email_address;
		this.course_fees = course_fees;
	}




	public int getId() {
		return id;
	}




	public void setId(int id) {
		this.id = id;
	}




	public String getStudent_name() {
		return student_name;
	}




	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}




	public String getCourse_title() {
		return course_title;
	}




	public void setCourse_title(String course_title) {
		this.course_title = course_title;
	}




	public String getPhone_number() {
		return phone_number;
	}




	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}




	public String getEmail_address() {
		return email_address;
	}




	public void setEmail_address(String email_address) {
		this.email_address = email_address;
	}




	public String getCourse_fees() {
		return course_fees;
	}




	public void setCourse_fees(String course_fees) {
		this.course_fees = course_fees;
	}




	@Override
	public String toString() {
		return "Student [id=" + id + ", student_name=" + student_name + ", Course_title=" + course_title
				+ ", phone_number=" + phone_number + ", email_address=" + email_address + ", course_fees=" + course_fees
				+ "]";
	}
	
	

}
