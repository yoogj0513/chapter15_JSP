package com.yi.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.yi.jdbc.JDBCUtil;
import com.yi.model.Student;

public class StudentDAO {
	public int insert(Connection conn, Student s) {
		PreparedStatement pstmt = null;
		
		try {
			String sql = "insert into student values (null, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, s.getName());
			pstmt.setInt(2, s.getKor());
			pstmt.setInt(3, s.getEng());
			pstmt.setInt(4, s.getMath());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
		}
		return -1;
	}
	
	public List<Student> list(Connection conn) {
		//select * from student
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from student";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			List<Student> list = new ArrayList<Student>();
			while(rs.next()) {
				Student s = new Student();
				s.setNo(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setKor(rs.getInt(3));
				s.setMath(rs.getInt(4));
				s.setEng(rs.getInt(5));
				list.add(s);
			}
			return list;
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
		
		return null;
	}
	
	
	public Student selectByNo(Connection conn, int no) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			String sql = "select * from student where no = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				Student s = new Student();
				s.setNo(rs.getInt(1));
				s.setName(rs.getString(2));
				s.setKor(rs.getInt(3));
				s.setMath(rs.getInt(4));
				s.setEng(rs.getInt(5));
				return s;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs);
			JDBCUtil.close(pstmt);
		}
		
		return null;
	}
	
	public int update(Connection conn, Student s) {
		PreparedStatement pstmt = null;
		
		try {
			String sql = "update student set name=?, kor=?, eng=?, math=? where no=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, s.getName());
			pstmt.setInt(2, s.getKor());
			pstmt.setInt(3, s.getEng());
			pstmt.setInt(4, s.getMath());
			pstmt.setInt(5, s.getNo());
			return pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt);
		}
		
		return -1;
	}
}
