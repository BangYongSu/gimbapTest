package com.project.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.dto.CustomerVO;
import com.project.model.CustomerDAO;
import com.project.model.CustomerService;



/**
 * Servlet implementation class NewMemberServlet
 */
@WebServlet("/views/newMember.do")
public class NewMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 
	
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        // post는  request.setCharacterEncoding("utf-8"); 처리 해주기
	        request.setCharacterEncoding("utf-8");
	        String cus_id = request.getParameter("cus_id");
	        int cus_ps = Integer.parseInt(request.getParameter("cus_ps"));
	        String cus_name = request.getParameter("cus_name");
	        String card_no = request.getParameter("card_no");
	       Date cus_bd = Date.valueOf(request.getParameter("cus_bd"));
	    
	       HttpSession session = request.getSession();
	        CustomerVO emp = new CustomerVO(cus_id, cus_ps, cus_name, card_no,cus_bd,0);
	        CustomerService cservice = new CustomerService();
	        int result = cservice.insertCustomer(emp);

	       // session.setAttribute("message", result > 0 ? "회원가입성공하셨습니다." : "회원가입 실패하셨습니다."); // 저장하는 애
			String message = result > 0 ? "success" : "fail";
	        response.sendRedirect("../views/LoginCheck.do?message=" + message);
			 

	}
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	    	RequestDispatcher rd;
	        rd =request.getRequestDispatcher("/views/newmember.jsp");
	        rd.forward(request, response);
	    }

}
