package com.project.model;

import java.sql.Date;
import java.util.List;

import com.project.dto.CustomerVO;


public class CustomerService {
	CustomerDAO cdao = new CustomerDAO();

	public int insertCustomer(CustomerVO cvo) {
		// TODO Auto-generated method stub
		return cdao.insertCustomer(cvo);
	}

	public List<CustomerVO> selectbypt(String login_id) {
		
		return cdao.selectbypt(login_id);
	}

	public int deletepo(String login_id, int usepoint) {
		// TODO Auto-generated method stub
		return cdao.deletepo(login_id, usepoint);
	}

	public List<CustomerVO> selectbycardno(String sign_cardno) {
		// TODO Auto-generated method stub
		return cdao.selectbycardno(sign_cardno);
	}
	public CustomerVO selectId(String sign_id) {
		return cdao.selectId(sign_id);
	}
	public List<CustomerVO> selectbyId(String sign_id) {
		// TODO Auto-generated method stub
		return cdao.selectbyId(sign_id);
	}

	public List<CustomerVO> selectpoints() {
		// TODO Auto-generated method stub
		return cdao.selectpoints();
	}
	public CustomerVO loginCheck(String cus_id, int cus_ps) {
		// TODO Auto-generated method stub
		 return cdao.loginCheck(cus_id,cus_ps);
	}
	public int customerUpdate(CustomerVO customer) {
		return cdao.customerUpdate(customer);
	}
	
		

	
	







}
