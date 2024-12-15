package com.project.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.project.dto.CustomerVO;
import com.project.dto.MenuVO;
import com.project.dto.OrderVO;
import com.project.util.DBUtil;





public class OrderDAO {
	public static CustomerService Cservice = new CustomerService();
	Connection conn;
	Statement st;
	PreparedStatement pst;
	ResultSet rs;
	public int insertorder(Map<String, OrderVO> data) {
		int[] count = new int[data.keySet().size()] ;
		conn = DBUtil.getConnection();
		
		String sql = "INSERT INTO c_order (order_id, menu_id, cus_id)"
				+ "VALUES (order_id_SEQ.NEXTVAL, ?, ?)";
		
		
		try {
			pst = conn.prepareStatement(sql);//SQL문 준비
			for(String key: data.keySet()) {
				OrderVO order = data.get(key);  //key : 이름, value:custid,menuid
				pst.setInt(1, order.getMenu_id());//?에 값을 채운다., Object
				pst.setString(2, order.getCus_id() );
				pst.addBatch();
				pst.clearParameters();
			}			
			count = pst.executeBatch();
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, pst, rs);
		}
		for(int a : count) {
			System.out.println("count:" + a);
		}
		return count[0];
	}
	public int insertorder(int su, int su2, String login_id) {
	    String sql1 = "INSERT INTO c_order(order_id, menu_id, cus_id) VALUES (order_id_SEQ.NEXTVAL, ?, ?)";
	    String sql2 = "INSERT INTO c_order(order_id, menu_id, cus_id) VALUES (order_id_SEQ.NEXTVAL, ?, ?)";
	    int count = 0;
	    conn = DBUtil.getConnection();

	    try {
	        pst = conn.prepareStatement(sql1);
	        pst.setInt(1, su);
	        pst.setString(2, login_id);
	        count += pst.executeUpdate(); // Execute the first INSERT

	        // Clear parameters for the second INSERT
	        pst.clearParameters();

	        pst = conn.prepareStatement(sql2);
	        pst.setInt(1, su2);
	        pst.setString(2, login_id);
	        count += pst.executeUpdate(); // Execute the second INSERT
	    } catch (SQLException e) {
	        e.printStackTrace();
	    } finally {
	        DBUtil.dbDisconnect(conn, pst, rs);
	    }
	    return count;
	}
	public List<OrderVO> selectAll() {
		List<OrderVO> olist = new ArrayList<OrderVO>();
		String sql = "SELECT o.order_id, o.cus_id, o.menu_id, m.menu_name, m.price, o.order_Date " +
                "FROM c_order o " +
                "JOIN menu m ON o.menu_id = m.menu_id order by o.order_id" ;
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);
			rs = pst.executeQuery();
			while(rs.next()) {
		
				OrderVO order = makeOrder2(rs); //reset에서 읽어서 VO만들기
				MenuVO menu = makemeor1(rs);
				order.setMenu(menu);
				olist.add(order);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, pst, rs);
		}
		
		return olist;
	}
	private MenuVO makemeor1(ResultSet rs2) throws SQLException {
		MenuVO menu = new MenuVO();
		menu.setMenu_name(rs.getString(4));
		menu.setPrice(rs.getInt(5));
		return menu;
	}
	private OrderVO makeOrder2(ResultSet rs2) throws SQLException {
		OrderVO order = new OrderVO();
		order.setOrder_id(rs.getInt(1));
		order.setCus_id(rs.getString(2));
		order.setMenu_id(rs.getInt(3));
		order.setOrder_date(rs.getDate(6));
		
		return order;
	}
	private OrderVO makeOrder(ResultSet rs) throws SQLException {
		OrderVO order = new OrderVO();
		order.setOrder_id(rs.getInt(1));
		order.setMenu_id(rs.getInt(2));
		order.setCus_id(rs.getString(3));
		order.setOrder_date(rs.getDate(4));
		
		return order;
	}
	public List<OrderVO> selectmyorder(String login_id) {
		List<OrderVO> olist = new ArrayList<OrderVO>();
		
		String sql =  "SELECT o.order_id, o.cus_id, o.order_Date, m.menu_name, m.price " +
                "FROM c_order o " +
                "JOIN menu m ON o.menu_id = m.menu_id " +
                "WHERE o.cus_id = ? ";
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, login_id);
			rs = pst.executeQuery();
			while(rs.next()) {
		
				OrderVO order = makeOrder1(rs); //reset에서 읽어서 VO만들기
				MenuVO menu = makemeor(rs);
				order.setMenu(menu);
				olist.add(order);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, pst, rs);
		}
		
		return olist;
		
	}
	private MenuVO makemeor(ResultSet rs) throws SQLException {
		MenuVO menu = new MenuVO();
		menu.setMenu_name(rs.getString(4));
		menu.setPrice(rs.getInt(5));
		
		return menu;
	}
	private OrderVO makeOrder1(ResultSet rs) throws SQLException {
		OrderVO order = new OrderVO();
		order.setOrder_id(rs.getInt(1));
		order.setCus_id(rs.getString(2));
		order.setOrder_date(rs.getDate(3));
		return order;
	}
	public List<OrderVO> selectmyorder1(String args) {
List<OrderVO> olist = new ArrayList<OrderVO>();
		
		String sql =  "SELECT o.order_id, o.cus_id, o.order_Date, m.menu_name, m.price " +
                "FROM c_order o " +
                "JOIN menu m ON o.menu_id = m.menu_id " +
                "WHERE o.cus_id = ? ";
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);
			pst.setString(1, args);
			rs = pst.executeQuery();
			while(rs.next()) {
		
				OrderVO order = makeOrder1(rs); //reset에서 읽어서 VO만들기
				MenuVO menu = makemeor(rs);
				order.setMenu(menu);
				olist.add(order);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, pst, rs);
		}
		
		return olist;
		
	}
	public List<MenuVO> Allprice() {
		List<MenuVO> menulist = new ArrayList<MenuVO>();
		String sql = "select sum(m.price) from c_order c, menu m  where c.menu_id=m.menu_id";
		conn = DBUtil.getConnection();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
		
				MenuVO menu = makeMenu4(rs); //reset에서 읽어서 VO만들기
				menulist.add(menu);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, st, rs);
		}
		return menulist;
	}
	private MenuVO makeMenu4(ResultSet rs2) throws SQLException {
		MenuVO menu = new MenuVO();
		menu.setPrice(rs.getInt(1));
		return menu;
	}
	public List<OrderVO> selectmorder() {
		List<OrderVO> olist = new ArrayList<OrderVO>();
		String sql = "SELECT rownum, c.cus_name, o.cus_id, order_count\n"
				+ "FROM (\n"
				+ "    SELECT cus_id, COUNT(order_id) as order_count\n"
				+ "    FROM c_order\n"
				+ "    GROUP BY cus_id\n"
				+ "    ORDER BY order_count DESC\n"
				+ ") o\n"
				+ "JOIN customer c ON o.cus_id = c.cus_id\n"
				+ "WHERE rownum <= 3";
		conn = DBUtil.getConnection();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
		
				OrderVO order = makemorder(rs); //reset에서 읽어서 VO만들기
				CustomerVO cust = makemcust(rs);
				order.setCustomer(cust);
				olist.add(order);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, st, rs);
		}
		return olist;
	
		
	}
	private CustomerVO makemcust(ResultSet rs2) throws SQLException {
		CustomerVO customer = new CustomerVO();
		customer.setCus_name(rs.getString(3));
		return customer;
	}
	private OrderVO makemorder(ResultSet rs2) throws SQLException {
		OrderVO order = new OrderVO();
		order.setCus_id(rs.getString(2));
		order.setOrder_id(rs.getInt(4));
		
		return order;
	}
}
	




