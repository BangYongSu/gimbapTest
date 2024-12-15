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

import  com.project.util.DateUill;


/**
 * Servlet implementation class CustomerUpdateServlet
 */
@WebServlet("/views/Update.do")
public class CustomerUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String cus_id= (String)session.getAttribute("cus_id");
		
		CustomerService cservice = new CustomerService();
		request.setAttribute("cus", cservice.selectId(cus_id));
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("mysecret.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		CustomerVO cus = makeCustomer(request);
		CustomerService cservice =new CustomerService();
		int result = cservice.customerUpdate(cus);
		request.setAttribute("message", result>0?"update success":"update fail");
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("empResult.jsp");
		rd.forward(request, response);
	
	}
	private CustomerVO makeCustomer(HttpServletRequest request) {
		int cus_ps =  convertInteger(request.getParameter("cus_ps"));
		String card_no = request.getParameter("card_no");
		Date cus_bd =  DateUill.convertDate(request.getParameter("cus_bd"));
		CustomerVO cus = new CustomerVO();
		cus.setCus_ps(cus_ps);
		cus.setCard_no(card_no);
		cus.setCus_bd(cus_bd);
		
		return cus;
	}
	private int convertInteger(String str) {
		if(str==null) return 0;
		return Integer.parseInt(str);
	}

		
		


}