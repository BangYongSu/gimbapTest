package com.project.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.dto.CustomerVO;
import com.project.model.MenuService;

/**
 * Servlet implementation class MenuServlet
 */
@WebServlet("/views/Menu.do")
public class MenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		
		RequestDispatcher rd = 
				request.getRequestDispatcher("RealMenu.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	MenuService mservice = new MenuService();
		
		request.setAttribute("gimbap", mservice.selectgb());
		request.setAttribute("don", mservice.selectdc());
		request.setAttribute("noodle", mservice.selectnd());
		request.setAttribute("bokkem", mservice.selectbok());
		request.setAttribute("tang", mservice.selecttang());
	}

}
