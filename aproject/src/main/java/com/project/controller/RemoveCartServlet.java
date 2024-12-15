package com.project.controller;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.dto.OrderVO;

/**
 * Servlet implementation class RemoveCartServlet
 */
@WebServlet("/views/RemoveCart.do")
public class RemoveCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		        HttpSession session = request.getSession();
		        String itemName = request.getParameter("itemName");
		        
		        Map<String, OrderVO> cart = (Map<String, OrderVO>) session.getAttribute("cart");
		        Map<String, Integer> cart1 = (Map<String, Integer>) session.getAttribute("cart1");
		        
		        if (cart != null && cart1 != null) {
		            // 특정 메뉴를 장바구니에서 제거합니다.
		            cart.remove(itemName);
		            cart1.remove(itemName);
		            
		            // 업데이트된 장바구니를 세션에 저장합니다.
		            session.setAttribute("cart", cart);
		            session.setAttribute("cart1", cart1);
		            response.sendRedirect("cartview.do");
		        }
		        	
		    }

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
