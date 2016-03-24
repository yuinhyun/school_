package com.movie.web.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.movie.web.global.Constants;
import com.movie.web.global.DatabaseFactory;
import com.movie.web.global.Vendor;
import com.movie.web.grade.GradeBean;
import com.movie.web.grade.GradeDAO;
import com.movie.web.grade.GradeDAOImpl;
import com.movie.web.grade.GradeMemberBean;

public class AdminDAOImpl implements AdminDAO {

	private Connection conn; // 오라클 연결 객체
	private Statement stmt; // 쿼리 전송 객체
	private PreparedStatement pstmt; // 쿼리 전송 객체2
	private ResultSet rs; // 리턴값 회수 객체
	
	private static AdminDAO instance = new AdminDAOImpl();
	
	public static AdminDAO getInstance() {
		return instance;
	}
	
	public AdminDAOImpl() {
		conn = DatabaseFactory.getDatabase(Vendor.ORACLE, Constants.ID, Constants.PASSWORD).getConnection();
	}//초기화작업은 메서드에서 생성자 생성
	
	
	@Override
	public List<GradeMemberBean> getMemberList() {
		
		GradeMemberBean member;
		List<GradeMemberBean> arrList = new ArrayList<GradeMemberBean>();
		
		try {
			pstmt = conn.prepareStatement("SELECT * FROM GradeMember");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				member= new GradeMemberBean();
				member.setId(rs.getString("id"));
				member.setName(rs.getString("name"));
				member.setPassword(rs.getString("password"));
				member.setAddr(rs.getString("addr"));
				member.setBirth(rs.getInt("birth"));
				member.setId(rs.getString("id"));
				member.setHak(rs.getInt("score_seq"));
				member.setJava(rs.getInt("java"));
				member.setJsp(rs.getInt("jsp"));
				member.setSpring(rs.getInt("spring"));
				member.setSql(rs.getInt("sql"));
				arrList.add(member);
			}
			
		} catch (Exception e) {
			System.out.println("ListMember()에서 에러 발생함 !!");
			e.printStackTrace();
		}
		return arrList;
	}

	@Override
	public int addScore(GradeMemberBean bean) {
		
		return 0;
	}

	

}
