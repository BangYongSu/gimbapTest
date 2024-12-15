package com.project.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.dto.CustomerVO;
import com.project.model.CustomerService;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/views/LoginCheck.do")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("loginpage.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cus_id = request.getParameter("cus_id");
		
		int cus_ps = Integer.parseInt(request.getParameter("cus_ps"));
		CustomerService cservice = new CustomerService();
		CustomerVO cus =cservice.loginCheck(cus_id, cus_ps);
		//session에 로그인정보를 저장하기 (있으면 얻기, 없으면 생성
		
		//request.setAttribute("point",service.selectbypt(cus_id));
		List<CustomerVO> pointlist = cservice.selectbypt(cus_id);
		int point = 0;
		for(CustomerVO cpoint: pointlist) {
			point=cpoint.getTotalpoints();
		}
	
		HttpSession session = request.getSession();
		
		if(cus==null){
			session.setAttribute("loginResult", "아이디와 비밀번호 확인요망");
			response.sendRedirect("LoginCheck.do");
			return;
		}else {
			session.setAttribute("loginResult", "");
			session.setAttribute("cusInfo", cus);
			session.setAttribute("cus_id", cus_id);
			session.setAttribute("point", point);
			response.sendRedirect("Main.do");
		}
	}	

}
