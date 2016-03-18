package com.movie.web.member;

import java.util.Scanner;

public class MemberController {
	public static void main(String[] args) {
		//MemberService service = new MemberService();
		MemberServiceImpl service = new MemberServiceImpl();
		Scanner s = new Scanner(System.in);
		MemberBean temp = null;
		while (true) {
			System.out.println("[메뉴]1.회원가입 2.로그인 3.내정보보기 4.내정보수정 5.탈퇴 0.종료");
			switch (s.nextInt()) {
			case 1:
				System.out.println("아이디,비번,이름,생년월일,주소 입력");
				service.join(new MemberBean(s.next(), s.next(), s.next(), s.nextInt(), s.next()));
				
				break;
			case 2: 
				System.out.println("아이디,비번 입력");
				
				temp = service.login(s.next(), s.next());
		
				System.out.println((temp == null) ? "로그인실패" : "로그인성공");
				
				break;
			case 3:
				
				System.out.println("아이디,비번 입력");
				System.out.println(service.detail(s.next().toString(), s.next().toString()));
				break;
				/*temp = service.login(s.next(), s.next());
				
				System.out.println((temp==null)?"내정보보기에 실패":"나의정보는"+"\n"+temp);*/
			case 4: 
				System.out.println("비번,이름,생년월일,주소 입력");
				temp = service.update(new MemberBean(temp.getId(),s.next(),s.next(),s.nextInt(),s.next()));
				System.out.println((temp==null)?"실패":"수정되었습니다."+"\n"+temp);
				
				break;
			
			case 5:
				System.out.println("아이디를 입력");
				System.out.println((temp==null)?"잘못입력하셨습니다.":"탈퇴하셨습니다.");
				break;
			case 0: System.out.println("시스템 종료"); 
				return;

			default:
				return;
			}
		}
			
		}
}

