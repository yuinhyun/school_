package com.movie.web.member;

public interface MemberDAO {
	public void insert(MemberBean member);
	public MemberBean selectById(String id, String password);
	public MemberBean selectMember(String id, String password);
	public MemberBean update(MemberBean member);
	public MemberBean delete(String id);
}
