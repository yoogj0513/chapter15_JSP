package com.yi.service;

import java.sql.Connection;
import java.util.List;

import com.yi.dao.StudentDAO;
import com.yi.jdbc.JDBCUtil;
import com.yi.model.Student;

public class StudentService {
	public int insert(Student s) {
		Connection conn = null;
		
		try {
			conn = JDBCUtil.getConnection();
			StudentDAO dao = new StudentDAO();
			return dao.insert(conn, s);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}
		
		return -1;
	}
	
	public List<Student> list(){
		Connection conn = null;
		
		try {
			conn = JDBCUtil.getConnection();
			StudentDAO dao = new StudentDAO();
			return dao.list(conn);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}
		
		return null;
	}
	
	public Student getStudent(int no) {
		Connection conn = null;
		
		try {
			conn = JDBCUtil.getConnection();
			StudentDAO dao = new StudentDAO();
			return dao.selectByNo(conn, no);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}
		
		return null;
	}
	
	public int update(Student s) {
		Connection conn = null;
		try {
			conn = JDBCUtil.getConnection();
			StudentDAO dao = new StudentDAO();
			return dao.update(conn, s);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(conn);
		}
		
		return -1;
	}
	
}
