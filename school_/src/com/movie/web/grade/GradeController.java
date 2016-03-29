package com.movie.web.grade;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.movie.web.global.Command;
import com.movie.web.global.CommandFactory;
import com.movie.web.global.DispatcherServlet;
import com.movie.web.global.Seperator;
import com.movie.web.member.MemberBean;
import com.movie.web.member.MemberServiceImpl;

/**
 * Servlet implementation class GradeController
 */
@WebServlet({"/grade/my_grade.do", "/grade/add_form.do"})
public class GradeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static GradeService service = GradeServiceImpl.getInstance();
	@Override   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Command command = new Command();
    	GradeBean Grade = new GradeBean();
    	MemberBean member = new MemberBean();
    	String id="";
    	String[] str = Seperator.divide(request, response);
	//	arr[1] = temp3.split("\\.")[0]; 이 방법도 가능
		//command = CommandFactory.createCommand(directory,action);
		String directory = str[0], action = str[1];
		System.out.println("GradeController에서 서비스 진입"+directory +action);
    	switch (action) {
		case "my_grade":
			System.out.println((request.getParameter("id")));
			request.setAttribute("score", service.getGradeById(request.getParameter("id")));
			command = CommandFactory.createCommand(directory,action);
			
			break;
			
		case "add_form":
			System.out.println("add_form 진입");
			/*System.out.println((request.getParameter("id")));*/
			command = CommandFactory.createCommand(directory, action);
			break;

		default:
			break;
		}
		DispatcherServlet.go(request, response, command);
		
	}

	

}