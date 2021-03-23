package com.srm.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.srm.entity.Student;

@Repository
public class StudentDAOImpl implements StudentDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Student> getStudents() {

		Session currentSession = sessionFactory.getCurrentSession();
		
		currentSession.getTransaction().begin();
		
		Query<Student> query = currentSession.createQuery("from Student",Student.class);
		
		List<Student> students = query.getResultList();
		
		currentSession.getTransaction().commit();
		
		return students;
	}
	
	public void saveStudent(Student student) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		currentSession.getTransaction().begin();
		
		currentSession.saveOrUpdate(student);
		
		currentSession.getTransaction().commit();
		
		return;
	}
	
	@Override
	public void deleteStudent(int id) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		currentSession.getTransaction().begin();
		
		Student student = getSingleStudent(id);
		
		currentSession.delete(student);
		
		currentSession.getTransaction().commit();
		
		return;
	}

	@Override
	public Student getStudent(int id) {
		
		return getSingleStudent(id);
	}
	
	private Student getSingleStudent(int id) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		currentSession.getTransaction().begin();
		
		Student student = currentSession.get(Student.class, id);
		
		currentSession.delete(student);
		
		currentSession.getTransaction().commit();
		
		return student;
	}

}
