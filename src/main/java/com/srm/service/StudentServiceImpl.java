package com.srm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.srm.dao.StudentDAO;
import com.srm.entity.Student;

@Service
public class StudentServiceImpl implements StudentService{

	@Autowired
	private StudentDAO studentDAO;
	
	@Override
	public List<Student> getStudents() {
		
		return studentDAO.getStudents();
	}

	@Override
	public void saveStudent(Student student) {
		
		studentDAO.saveStudent(student);
	}
	
	@Override
	public void deleteStudent(int id) {
		studentDAO.deleteStudent(id);
	}
	
	@Override
	public Student getStudent(int id) {
		
		return studentDAO.getStudent(id);
	}
}
