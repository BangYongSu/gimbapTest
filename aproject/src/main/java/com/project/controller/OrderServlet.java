package com.project.controller;

import java.io.IOException;
import java.util.Map;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.project.dto.OrderVO;
import com.project.model.OrderService;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/views/Order.do")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		Map<String, OrderVO> cart = (Map<String, OrderVO>) session.getAttribute("cart");
		String message = null;
		int result = 0;
		if (cart != null && !cart.isEmpty()) {
			// 주문 처리
			OrderService orderService = new OrderService();
			result = orderService.insertorder(cart);

			

			message = result < 0 ? "Order success" : "Order fail";
			// 주문 완료 페이지로 이동 또는 다른 처리 수행
			response.sendRedirect("../views/Menu.do?message=" + message);
			// 주문 목록에 주문 저장

		} else {
			// 장바구니가 비어 있을 때의 처리
			response.sendRedirect("/views/Menu.do");
			message = "List empty!";
			response.sendRedirect("../views/Menu.do?message=" + message);
			// 주문 목록에 주문 저장
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
