package com.project.model;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.project.util.DBUtil;


import com.project.dto.CustomerVO;

public class CustomerDAO {
	Connection conn;
	Statement st;
	PreparedStatement pst;
	ResultSet rs;

	//사용자회원가입
	public int insertCustomer(CustomerVO cvo) {
		String sql = "insert into customer values(?,?,?,?,?,?)";
		int count = 0;
		
		conn = DBUtil.getConnection();
		//? : binding변수 (statement는 지워안함)
		//statement를 상속받은 하위 PreparedStatement
		try {
			pst = conn.prepareStatement(sql);//SQL문 준비
			pst.setString(1, cvo.getCus_id());//?에 값을 채운다.
			pst.setInt(2, cvo.getCus_ps());
			pst.setString(3, cvo.getCus_name());
			pst.setString(4, cvo.getCard_no());
			pst.setDate(5, cvo.getCus_bd());
			pst.setInt(6, cvo.getTotalpoints());
			count = pst.executeUpdate(); //DML은 executeUpdate()로 실행
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, pst, rs);
		}
		return count;
	}

	public int customerUpdate(CustomerVO customer) {
		int result= 0;
		String sql = "	update customer\r\n"
				+ "	set \r\n"
				+ "	cus_ps =?\r\n"
				+ "	card_no =?\r\n"
				+ "	cus_bd =?\r\n"
				+ "	where cus_id =? ";
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);
			pst.setInt(1, customer.getCus_ps());
			pst.setString(2, customer.getCard_no());
			pst.setDate(3, customer.getCus_bd());
			pst.setString(4, customer.getCus_id());
			result = pst.executeUpdate();
			if(rs.next()) {
				
				customer = truecus(rs);
				  //reset에서 읽어서 VO만들기
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, st, rs);
		}
		
		return result;
	}
	public List<CustomerVO> selectbypt(String login_id) {
		List<CustomerVO> cutlist = new ArrayList<CustomerVO>();
		String sql = "SELECT totalpoints FROM customer WHERE cus_id = ? ";
		conn = DBUtil.getConnection();
				    try {
				        
				        pst = conn.prepareStatement(sql);
				        pst.setString(1,login_id );
				        rs = pst.executeQuery();

				        while(rs.next()) {
				    		
							CustomerVO cvo = makecust(rs); //reset에서 읽어서 VO만들기
							cutlist.add(cvo);
						}
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}finally {
						DBUtil.dbDisconnect(conn, pst, rs);
					}
					
					return cutlist;
				
	}


	private CustomerVO makecust(ResultSet rs) throws SQLException {
		CustomerVO cust = new CustomerVO();
		cust.setTotalpoints(rs.getInt(1));
		return cust;
	}


	public int deletepo(String login_id, int usepoint) {
		String sql = "UPDATE customer "
				+ "SET totalpoints = totalpoints - ? "
				+ "WHERE cus_id = ?";
		int count = 0;
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);//SQL문 준비
			pst.setInt(1, usepoint);
			pst.setString(2, login_id);
		
			count = pst.executeUpdate(); //DML은 executeUpdate()로 실행
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, pst, rs);
		}
		return count;
	}


	public List<CustomerVO> selectbycardno(String sign_cardno) {
		List<CustomerVO> clist = new ArrayList<CustomerVO>();
		String sql = "select * from customer where card_no =?";
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql); 
			pst.setString(1, sign_cardno);
			rs = pst.executeQuery();
			while(rs.next()) {
		
				CustomerVO cust = makeCust(rs); //reset에서 읽어서 VO만들기
				clist.add(cust);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, pst, rs);
		}
		
		return clist;
	}


	private CustomerVO makeCust(ResultSet rs) throws SQLException {
		CustomerVO cust = new CustomerVO();
		cust.setCus_id(rs.getString(1));
		cust.setCus_ps(rs.getInt(2));
		cust.setCus_name(rs.getString(3));
		cust.setCard_no(rs.getString(4));
		cust.setCus_bd(rs.getDate(5));
		cust.setTotalpoints(rs.getInt(6));
		return cust;
	}


	public List<CustomerVO> selectbyId(String sign_id) {
		List<CustomerVO> clist = new ArrayList<CustomerVO>();
		String sql = "select * from customer where cus_id =?";
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql); //
			pst.setString(1, sign_id);
			rs = pst.executeQuery();
			while(rs.next()) {
		
				CustomerVO cust = makeCust(rs); //reset에서 읽어서 VO만들기
				clist.add(cust);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, pst, rs);
		}
		
		return clist;
	}


	public List<CustomerVO> selectpoints() {
		List<CustomerVO> clist = new ArrayList<CustomerVO>();
		String sql = "    select rownum, cus_id, cus_name,totalpoints\n"
				+ "    from (select cus_id,cus_name,totalpoints\n"
				+ "            from customer\n"
				+ "            order by totalpoints desc)\n"
				+ "where rownum <= 5 ";
		conn = DBUtil.getConnection();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
		
				 //reset에서 읽어서 VO만들기
				CustomerVO cust = makempoints(rs);
				clist.add(cust);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, st, rs);
		}
		return clist;
	
	}


	private CustomerVO makempoints(ResultSet rs2) throws SQLException {
		CustomerVO cust = new CustomerVO();
		cust.setCus_id(rs.getString(2));
		cust.setCus_name(rs.getString(3));
		cust.setTotalpoints(rs.getInt(4));
		return cust;
	}
	private CustomerVO truecus(ResultSet rs2) throws SQLException {
		CustomerVO cust = new CustomerVO();
		cust.setCus_id(rs.getString("cus_id"));
		cust.setCus_name(rs.getString("cus_name"));
		cust.setCus_ps(rs.getInt("cus_ps"));
		cust.setCard_no(rs.getString("card_no"));
		cust.setCus_bd(rs.getDate("cus_bd"));
		cust.setTotalpoints(rs.getInt("totalpoints"));
		cust.setCus_id(rs.getString("cus_id"));
		
		
		return cust;
	}

	public CustomerVO loginCheck(String cus_id, int cus_ps) {
		CustomerVO cus= null;
		String sql = "select * from customer where cus_id = ? and cus_ps = ? ";
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, cus_id);
			pst.setInt(2, cus_ps);
			rs = pst.executeQuery();
			if(rs.next()) {
				
				cus = truecus(rs);
				  //reset에서 읽어서 VO만들기
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, pst, rs);
		}
		
		return cus;
	}

	public CustomerVO selectId(String sign_id) {
		CustomerVO cus= null;
		String sql = "select * from customer where cus_id = ? ";
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, sign_id);
			rs = pst.executeQuery();
			if(rs.next()) {
				
				cus = truecus(rs);
				  //reset에서 읽어서 VO만들기
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, st, rs);
		}
		
		return cus;
	}


	



	
		
	
	
	
}
