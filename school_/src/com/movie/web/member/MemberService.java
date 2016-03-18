package com.movie.web.member;

public interface MemberService {
	
	//인터페이스는 추상메서드만 와야한다는 문법이 있어서
	//abstract를 생략가능하다.
	//그러나 추상클래스는 구상 메소드가 존재 가능하므로
	//둘을 구분하기 위해서 반드시 abstract을 붙여야한다.
	
	public abstract void join(MemberBean member);
	public MemberBean login(String id, String password);
	public MemberBean detail(String id, String password);
	public MemberBean update(MemberBean member);
	public MemberBean remove(String id);
	
}
