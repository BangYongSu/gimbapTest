package com.project.model;

import java.util.List;
import java.util.Map;

import com.project.dto.MenuVO;
import com.project.dto.OrderVO;

public class OrderService {
	OrderDAO odao = new OrderDAO();

	public int insertorder(Map<String, OrderVO> data) {
		// TODO Auto-generated method stub
		return odao.insertorder(data);
	}

	public int insertorder(int su, int su2, String login_id) {
		// TODO Auto-generated method stub
		return odao.insertorder(su,su2,login_id);
	}

	public List<OrderVO> selectAll() {
		// TODO Auto-generated method stub
		return odao.selectAll();
	}

	public List<OrderVO> selectmyorder(String login_id) {
		
		return odao.selectmyorder(login_id);
	}

	public List<OrderVO> selectmyorder1(String args) {
		// TODO Auto-generated method stub
		return odao.selectmyorder(args);
	}

	public List<MenuVO> Allprice() {
		
		return odao.Allprice();
	}

	public List<OrderVO> selectmorder() {
		// TODO Auto-generated method stub
		return odao.selectmorder();
	}

	
}
