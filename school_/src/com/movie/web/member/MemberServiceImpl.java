package com.movie.web.member;

import java.util.HashMap;
import java.util.List;

public class MemberServiceImpl implements MemberService{
	private	static MemberServiceImpl instance = new MemberServiceImpl();
	HashMap<String,MemberBean> map;
	
	
	public static MemberServiceImpl getInstance() {
		return instance;
	}
	
	MemberDAO dao = MemberDAOImpl.getInstance();
	
	
	
	public MemberServiceImpl() {
		map = new HashMap<String,MemberBean>();
	}
	@Override
	public int join(MemberBean member) {
		// 회원가입
		return dao.insert(member);
	}

	@Override
	public MemberBean login(String id, String password) {
		MemberBean member = new MemberBean();
		member = dao.selectById(id, password);
		if (member != null) {
			System.out.println("서비스 : 멤버가 널이 아님");
			return member;
		} else {
			System.out.println("서비스 : 멤버가 널임");
			return null;
		}
		// 로그인
		// 아이디가 존재하지 않아서 실패한 경우와 비번이 틀려서 실패한 경우에 따라서
		// 메시지를 전달해줘야 함
	}

	@Override
	public int update(MemberBean member) {
		// TODO Auto-generated method stub
		return dao.update(member);
	}

	@Override
	public int remove(String id) {
		// 삭제
		return dao.delete(id);
	}

	@Override
	public MemberBean detail(String id) {
		return dao.selectMember(id);
		
	}
	@Override
	public boolean isMember(String id ) {
		boolean member = false;
		member = dao.isMember(id);
		
		if (member == true) {
			return member;
		} else {
			return false;
		}
	}
	@Override
	public List<MemberBean> getList() {
		// TODO Auto-generated method stub
		return dao.selectList();
	}
	
	}