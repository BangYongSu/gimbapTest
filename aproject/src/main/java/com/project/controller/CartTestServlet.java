package com.project.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CartTestServlet
 */
@WebServlet("/cart/addCartr")
public class CartTestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartTestServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.setContentType("text/html;charset=utf-8");
		
		RequestDispatcher rd = request.getRequestDispatcher("cart.jsp");
		rd.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Object obj =  session.getAttribute("cart");
		
		String product = request.getParameter("product");
		int count = Integer.parseInt(request.getParameter("count"));
		Map<String, Integer> cart = null;
		
		if( obj==null) {
			cart = new HashMap<>();
			cart.put(product, count++);
			
		}else {
			cart = (Map<String, Integer>) obj;
			Integer originalCnt =  cart.get(product);
			if(originalCnt ==null) {
				originalCnt = 0 ;
			}
			cart.put(product, count+originalCnt);
			
		}
		
		
		session.setAttribute("cart", cart);
		response.sendRedirect("addCart.do?product="+product);
				
	}

}
