package com.project.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.dto.MenuVO;
import com.project.dto.OrderVO;
import com.project.model.MenuService;

/**
 * Servlet implementation class CarServlet
 */
@WebServlet("/views/addCart")
public class CarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Object obj =  session.getAttribute("cart");
		Object obj1 =  session.getAttribute("cart1");
	
		String cus_id = (String)session.getAttribute("cus_id");
		String name = request.getParameter("menuName");
		int mid = Integer.parseInt(request.getParameter("menuid"));
		int price = Integer.parseInt(request.getParameter("menuPrice"));
		Map<String, OrderVO> cart = null;
		Map<String, Integer> cart1 = null;
		
		if( obj==null) {
			cart = new HashMap<>();
			cart1 = new HashMap<>();
			
		}else {
			cart = (Map<String, OrderVO>) obj;
			cart1 = (Map<String, Integer>) obj1;

		}
		
		OrderVO order = new OrderVO();
		order.setMenu_id(mid);
		order.setCus_id(cus_id);
		
		cart.put(name, order);
		cart1.put(name, price);
		
		session.setAttribute("cart", cart);
		session.setAttribute("cart1", cart1);
		
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
