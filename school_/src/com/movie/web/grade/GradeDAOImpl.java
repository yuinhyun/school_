package com.movie.web.grade;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.movie.web.global.Constants;
import com.movie.web.member.MemberBean;

public class GradeDAOImpl implements GradeDAO {

	private Connection conn; //오라클 연결 객체
	private Statement stmt; //쿼리 전송 객체
	private PreparedStatement pstmt; //쿼리 전송 객체2
	private ResultSet rs; //리턴값 회수 객체
	@Override
	public void insert(GradeBean gradeBean) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<GradeMemberBean> selectAll() {
		List<GradeMemberBean> list = new ArrayList<GradeMemberBean>();
		try {
			Class.forName(Constants.ORACLE_DRIVER);
			conn = DriverManager.getConnection(Constants.ORACLE_URL,Constants.ORACLE_ID, Constants.ORACLE_PASSWORD);
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM GradeMember");
			
			while (rs.next()){
				GradeMemberBean dean = new GradeMemberBean();
				
				dean.setId(rs.getString("id"));
				dean.setName(rs.getString("name"));
				dean.setPassword(rs.getString("password"));
				dean.setAddr(rs.getString("addr"));
				dean.setBirth(rs.getInt("birth"));
				dean.setHak(rs.getInt("hak"));
				dean.setJava(rs.getInt("java"));
				dean.setSpring(rs.getInt("spring"));
				dean.setSql(rs.getInt("sql"));
				dean.setJsp(rs.getInt("jsp"));
				
				list.add(dean);
				}
	
		} catch (Exception e) {
			System.out.println("selectMember()에서 에러 발생함 || ");
			e.printStackTrace();
		}
		return list;
		// TODO Auto-generated method stub
	}

	@Override
	public GradeMemberBean selectGradeByHak(int hak) {
		MemberBean member = new MemberBean();
		GradeBean grade = new GradeBean();
		//Map<String,Object> map = new HashMap<String,Object>();
		GradeMemberBean bean = new GradeMemberBean();
		try {
			Class.forName(Constants.ORACLE_DRIVER);
			conn = DriverManager.getConnection(Constants.ORACLE_URL,Constants.ORACLE_ID, Constants.ORACLE_PASSWORD);
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM GradeMember WHERE hak ='"+hak+"'");
			
			while (rs.next()){
				bean.setId(rs.getString("id"));
				bean.setName(rs.getString("name"));
				bean.setPassword(rs.getString("password"));
				bean.setAddr(rs.getString("addr"));
				bean.setBirth(rs.getInt("birth"));
				bean.setHak(rs.getInt("hak"));
				bean.setJava(rs.getInt("java"));
				bean.setSpring(rs.getInt("spring"));
				bean.setSql(rs.getInt("sql"));
				bean.setJsp(rs.getInt("jsp"));
			}
	
		} catch (Exception e) {
			System.out.println("selectMember()에서 에러 발생함 || ");
			e.printStackTrace();
			}
		// TODO Auto-generated method stub
		//map.put("member", member);
		//map.put("grade", grade);
		return bean;
	}

	@Override
	public List<GradeMemberBean> selectGradeByName(String name) {
		// TODO Auto-generated method stub
		
		List<GradeMemberBean> list = new ArrayList<GradeMemberBean>();
		try {
			Class.forName(Constants.ORACLE_DRIVER);
			conn = DriverManager.getConnection(Constants.ORACLE_URL,Constants.ORACLE_ID, Constants.ORACLE_PASSWORD);
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT * FROM GradeMember WHERE name ='"+name+"'");
			
			while (rs.next()){
				GradeMemberBean cean = new GradeMemberBean();
				
				cean.setId(rs.getString("id"));
				cean.setName(rs.getString("name"));
				cean.setPassword(rs.getString("password"));
				cean.setAddr(rs.getString("addr"));
				cean.setBirth(rs.getInt("birth"));
				cean.setHak(rs.getInt("hak"));
				cean.setJava(rs.getInt("java"));
				cean.setSpring(rs.getInt("spring"));
				cean.setSql(rs.getInt("sql"));
				cean.setJsp(rs.getInt("jsp"));
				
				list.add(cean);
				
				
			}
	
		} catch (Exception e) {
			System.out.println("selectMember()에서 에러 발생함 || ");
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public String update(GradeBean grade) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String delete(int hak) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int count() {
		
		
		int count =0;
		try {
			Class.forName(Constants.ORACLE_DRIVER);
			conn = DriverManager.getConnection(Constants.ORACLE_URL,Constants.ORACLE_ID, Constants.ORACLE_PASSWORD);
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery("SELECT COUNT(*) AS count FROM GradeMember");
			
			while (rs.next()){
				count = rs.getInt("count");
				}
	
		} catch (Exception e) {
			System.out.println("selectMember()에서 에러 발생함 || ");
			e.printStackTrace();
		}
		return count;
		// TODO Auto-generated method stub
	}

}
