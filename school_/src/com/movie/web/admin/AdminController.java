package com.movie.web.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.movie.web.global.Command;
import com.movie.web.global.CommandFactory;
import com.movie.web.global.DispactcherServlet;
import com.movie.web.global.Seperator;
import com.movie.web.grade.GradeMemberBean;

/**
 * Servlet implementation class AdminController
 */
@WebServlet({"/grade/admin_list.do","/grade/grade_addform.do"})
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminService service = AdminServiceImpl.getInstance();
       
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	Command command = new Command();
    	List<GradeMemberBean> arrList = new ArrayList<GradeMemberBean>();
    	
    	String[] str = Seperator.doSomething(request, response);
    	String action = str[0],directory=str[1];
    	
    	switch (action) {
		case "grade_addform" :
				System.out.println("=== 회원 정보 추가 화면 ===");
				command = CommandFactory.createCommand(directory, "grade_add");
				break;
				
		case "admin_list":
				
			System.out.println("=== list화면===");
			arrList = service.getMemberList();
			request.setAttribute("totalScore", arrList);
			command = CommandFactory.createCommand(directory,"grade_list");
			break;
/*		
		case "grade_add":
				command = CommandFactory.createCommand(directory, "detail");
			break;*/
			
		default:
			command = CommandFactory.createCommand(directory,action);
			break;
		}
		System.out.println("오픈될 페이지 :"+command.getView());
		DispactcherServlet.DispactcherServlet(request, response, command);
	}
    	

	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
	}

}
