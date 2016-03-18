package com.movie.web.member;

import java.util.HashMap;

public class MemberServiceImpl implements MemberService {

	
	HashMap<String,MemberBean> map;
	MemberDAO dao = new MemberDAOImpl();
	public MemberServiceImpl() {
		map = new HashMap<String,MemberBean>();
		
	}
	@Override
	public void join(MemberBean member) {
		// 회원가입
		map.put(member.getId(), member);
		
	}

	@Override
	public MemberBean login(String id, String password) {
		MemberBean result = (!map.containsKey(id)||(!map.get(id).getPassword().equals(password)))?null:map.get(id);
		
		// 로그인
		// 아이디가 존재하지 않아서 실패한 경우와 비번이 틀려서 경우에 따라서
		// 메시지를 전달해줘야 함
          		
		return result;
		
		
		// 로그인
		// 아이디가 존재하지 않아서 실패한 경우와 비번이 틀려서 실패한 경우에 따라서
		// 메시지를 전달해줘야함 
		
	}

	@Override
	
	public MemberBean update(MemberBean member) {
		MemberBean temp = null;
		//map.containsKey(member.getId());
		temp = map.replace(member.getId(), member);
		
		return temp;
		// 수정
		
	}

	@Override
	public MemberBean remove(String id) {
		MemberBean temp = null;
		temp = map.remove(id);
		return temp;
		// 삭제
		
	}

	@Override
	public MemberBean detail(String id, String password) {
		
		return dao.selectMember(id, password);
		
	}

}
