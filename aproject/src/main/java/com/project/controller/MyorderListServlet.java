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

import com.project.dto.OrderVO;
import com.project.model.OrderService;


/**
 * Servlet implementation class MyorderListServlet
 */
@WebServlet("/views/orderlist.do")
public class MyorderListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("cusInfo");
		String cus_id = (String)session.getAttribute("cus_id");
		if(obj==null) {
			response.sendRedirect("../views/LoginCheck.do");
			return;
		}
		
		OrderService oservice = new OrderService();
		List<OrderVO> orderlist =oservice.selectmyorder(cus_id);
	
		request.setAttribute("orderlist", orderlist);
		
	
		
		RequestDispatcher rd = 
				request.getRequestDispatcher("myorderlist.jsp");
		rd.forward(request, response);
		
	}

/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
