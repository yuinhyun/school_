package com.movie.web.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.movie.web.global.Command;
import com.movie.web.global.CommandFactory;
import com.movie.web.global.DispactcherServlet;
import com.movie.web.global.Seperator;

@WebServlet({"/member/login_form.do",
	"/member/join_form.do","/member/update_form.do",
	"/member/join.do",
	"/member/login.do",
	"/member/update.do",
	"/member/delete.do",
	"/member/admin_form.do"
	})
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static MemberService service = MemberServiceImpl.getInstance();
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("인덱스에서 들어옴");
    	Command command = new Command();
    	
    	MemberBean member = new MemberBean();
    	String[] str = Seperator.doSomething(request, response);
    	String action = str[0], directory=str[1];
    	switch (action) {
		
			
		case "update_form":
				
			System.out.println("=== 수정 폼으로 진입 ===");
			request.setAttribute("member", service.detail(request.getParameter("id")));
			command = CommandFactory.createCommand(directory,action);
			break;
		
		case "delete":
			
			if (service.remove(request.getParameter("id"))==1) {
				
				command = CommandFactory.createCommand(directory,"login_form");
			}
			else
			{
				request.setAttribute("member", service.detail(request.getParameter("id")));
				command = CommandFactory.createCommand(directory, "detail");
			}
			break;
		
		case "login" :
			
			if (service.isMember(request.getParameter("id")) == true) {
				System.out.println("=== 아이디가 존재함 ===");
				member = service.login(request.getParameter("id"), request.getParameter("password"));
				if (member == null) {
					command = CommandFactory.createCommand(directory,"login_form");
				}else{
					System.out.println("=== 로그인 성공 ===");
					request.setAttribute("member", member);
					command = CommandFactory.createCommand(directory,"detail");
				}
				
			} else {
				System.out.println("=== 로그인 실패 ===");
				command = CommandFactory.createCommand(directory,"login_form");
			}
			
			
			break;
			
		case "join":
			
			int result =service.join(member);
			member.setId(request.getParameter("id"));
			member.setName(request.getParameter("name"));
			member.setPassword(request.getParameter("password"));
			member.setAddr(request.getParameter("addr"));
			member.setBirth(Integer.parseInt(request.getParameter("birth")));
			if(service.join(member)==1)
			{
				command = CommandFactory.createCommand(directory,"login_form");
			}
			else{
				command = CommandFactory.createCommand(directory,"join_form");
			}
			break;
		case "update":
			System.out.println("=== 수정  진입 ===");
			member.setId(request.getParameter("id"));
			member.setName(request.getParameter("name"));
			member.setPassword(request.getParameter("password"));
			member.setAddr(request.getParameter("addr"));
			member.setBirth(Integer.parseInt(request.getParameter("birth")));
			
			if(service.update(member)==1)
			{
				request.setAttribute("member", service.detail(request.getParameter("id")));
				command = CommandFactory.createCommand(directory,"login_form");
			}
			else{
				request.setAttribute("member", service.detail(request.getParameter("id")));
				command = CommandFactory.createCommand(directory,"join_form");
			}
			break;
		case "admin_form":
			command = CommandFactory.createCommand(directory,action);
			break;
		default:
			command = CommandFactory.createCommand(directory,action);
			break;
		}
		System.out.println("오픈될 페이지 :"+command.getView());
		DispactcherServlet.DispactcherServlet(request, response, command);
	}   
}