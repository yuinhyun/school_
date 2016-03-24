package com.movie.web.admin;

import java.util.List;

import com.movie.web.grade.GradeDAO;
import com.movie.web.grade.GradeDAOImpl;
import com.movie.web.grade.GradeMemberBean;
import com.movie.web.grade.GradeServiceImpl;

public class AdminServiceImpl implements AdminService {
	
	AdminDAO dao = AdminDAOImpl.getInstance();
	private static AdminService instance= new AdminServiceImpl();
	
	public static AdminService getInstance() {
		return instance;
	}
	
	
	@Override
	public List<GradeMemberBean> getMemberList() {
		// TODO Auto-generated method stub
		return dao.getMemberList();
	}

	@Override
	public int addScore(GradeMemberBean bean) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	
}
