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
import com.project.dto.MenuVO;
import com.project.model.CustomerService;
import com.project.model.MenuService;



/**
 * Servlet implementation class MainServlet
 */
@WebServlet("/views/Main.do")
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = 
				request.getRequestDispatcher("RealMain.jsp");
		rd.forward(request, response);
		
	}

/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("cusInfo");
		String cus_id= (String)session.getAttribute("cus_id");
		if(obj==null) {
			response.sendRedirect("../views/LoginCheck.do");
			return;
		}
		
		CustomerService service = new CustomerService();
		//request.setAttribute("point",service.selectbypt(cus_id));
		List<CustomerVO> pointlist = service.selectbypt(cus_id);
		int point = 0;
		for(CustomerVO cpoint: pointlist) {
			point=cpoint.getTotalpoints();
		}
		request.setAttribute("point", point);
//		response.sendRedirect("../views/Main.do?point=" + point);
		response.sendRedirect("../views/Main.do?point=" + point);
		
	}


}
