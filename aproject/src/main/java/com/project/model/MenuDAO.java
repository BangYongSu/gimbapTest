package com.project.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.project.dto.CustomerVO;
import com.project.dto.MenuVO;
import com.project.util.DBUtil;





public class MenuDAO {
	Connection conn;
	Statement st;
	PreparedStatement pst;
	ResultSet rs;
	public List<MenuVO> selectAll() {
		List<MenuVO> menulist = new ArrayList<MenuVO>();
		String sql = "select menu_id as 메뉴번호 , menu_name as 메뉴이름 ,price as 가격 from menu "
				+ "ORDER BY menu_id ";
		conn = DBUtil.getConnection();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
		
				MenuVO menu = makeMenu(rs); //reset에서 읽어서 VO만들기
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
	
	private MenuVO makeMenu(ResultSet rs) throws SQLException {
		MenuVO menu = new MenuVO();
		menu.setMenu_id(rs.getInt(1));
		menu.setMenu_name(rs.getString(2));
		menu.setPrice(rs.getInt(3));
		
		return menu;

}

	public List<MenuVO> selectgb() {
		List<MenuVO> menulist = new ArrayList<MenuVO>();
		String sql = "select menu_id , menu_name ,price from menu where menu_t =1";
		conn = DBUtil.getConnection();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
		
				MenuVO menu = makeMenu(rs); //reset에서 읽어서 VO만들기
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

	public List<MenuVO> selectnd() {
		List<MenuVO> menulist = new ArrayList<MenuVO>();
		String sql = "select menu_id , menu_name ,price from menu where menu_t =2";
		conn = DBUtil.getConnection();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
		
				MenuVO menu = makeMenu(rs); //reset에서 읽어서 VO만들기
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

	public List<MenuVO> selectdc() {
		List<MenuVO> menulist = new ArrayList<MenuVO>();
		String sql = "select menu_id , menu_name ,price from menu where menu_t =3";
		conn = DBUtil.getConnection();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
		
				MenuVO menu = makeMenu(rs); //reset에서 읽어서 VO만들기
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

	public List<MenuVO> selecttang() {
		List<MenuVO> menulist = new ArrayList<MenuVO>();
		String sql = "select menu_id , menu_name ,price from menu where menu_t =4";
		conn = DBUtil.getConnection();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
		
				MenuVO menu = makeMenu(rs); //reset에서 읽어서 VO만들기
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

	public List<MenuVO> selectbok() {
		List<MenuVO> menulist = new ArrayList<MenuVO>();
		String sql = "select menu_id , menu_name ,price from menu where menu_t =5";
		conn = DBUtil.getConnection();
		try {
			st = conn.createStatement();
			rs = st.executeQuery(sql);
			while(rs.next()) {
		
				MenuVO menu = makeMenu(rs); //reset에서 읽어서 VO만들기
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

	public List<MenuVO> selectbypr(int su) {
		List<MenuVO> menulist = new ArrayList<MenuVO>();
		String sql = "select price from menu where menu_id =?";
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql); //sql문준비
			pst.setInt(1, su);
			rs = pst.executeQuery();
			while(rs.next()) {
		
				MenuVO menu = makeMenupr(rs); //reset에서 읽어서 VO만들기
				menulist.add(menu);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, pst, rs);
		}
		
		return menulist;
	}

	private MenuVO makeMenupr(ResultSet rs2) throws SQLException {
		MenuVO menu = new MenuVO();
		
		menu.setPrice(rs.getInt(1));
		return menu;
	}

	public List<MenuVO> selectbypr(int su, int su2) {
		
		List<MenuVO> menulist = new ArrayList<MenuVO>();
		String sql = "select price from menu where menu_id in (?, ?)";
		 
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql); //sql문준비
			pst.setInt(1, su);
			pst.setInt(2, su2);
			rs = pst.executeQuery();
			 
			 
		        
			while(rs.next()) {
		
				MenuVO menu = makeMenupr(rs); //reset에서 읽어서 VO만들기
				menulist.add(menu);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, pst, rs);
		}
		
		return menulist;
	}

	public int insertmenu(MenuVO menu) {
		String sql = "insert into menu values(?,?,?,?)";
		int count = 0;
		
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql);//SQL문 준비
			pst.setInt(1, menu.getMenu_id());//?에 값을 채운다.
			pst.setString(3, menu.getMenu_name());
			pst.setInt(2, menu.getMenu_t());
			pst.setInt(4, menu.getPrice());
			count = pst.executeUpdate(); //DML은 executeUpdate()로 실행
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, pst, rs);
		}
		return count;
	}

	public int updatemenu(MenuVO menu) {
		String sql = "update menu set "
				+ " menu_id =?,"
				+ " menu_t = ?,"
				+ " menu_name = ?,"
				+ " price = ? where menu_id =?";
		int count = 0;
		conn = DBUtil.getConnection();
		//? : binding변수 (statement는 지워안함)
		//statement를 상속받은 하위 PreparedStatement
		try {
			pst = conn.prepareStatement(sql);//SQL문 준비
			pst.setInt(1, menu.getMenu_id());//?에 값을 채운다.
			pst.setString(3, menu.getMenu_name());
			pst.setInt(2, menu.getMenu_t());
			pst.setInt(4, menu.getPrice());
			pst.setInt(5, menu.getMenu_id());
			count = pst.executeUpdate(); //DML은 executeUpdate()로 실행
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, pst, rs);
		}
		return count;
	}

	public int deletemenu(int choice) {
		String sql = " delete menu where menu_id = ? ";
				
		int count = 0;
		conn = DBUtil.getConnection();
		//? : binding변수 (statement는 지워안함)
		//statement를 상속받은 하위 PreparedStatement
		try {
			pst = conn.prepareStatement(sql);//SQL문 준비
			
			pst.setInt(1,choice);
		
			count = pst.executeUpdate(); //DML은 executeUpdate()로 실행
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, pst, rs);
		}
		return count;
		
	}

	public MenuVO getMenuPrice(int menu_id) {
		MenuVO price = null;
		String sql = "select price from menu where menu_id =?";
		conn = DBUtil.getConnection();
		try {
			pst = conn.prepareStatement(sql); //sql문준비
			pst.setInt(1, menu_id);
			rs = pst.executeQuery();
			while(rs.next()) {
		
				price = makeMenugetname(rs); //reset에서 읽어서 VO만들기
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DBUtil.dbDisconnect(conn, pst, rs);
		}
		
		return price;
	}

	private MenuVO makeMenugetname(ResultSet rs) throws SQLException {
		MenuVO menu = new MenuVO();
		menu.setMenu_id(rs.getInt(1));
		return menu;
	}

	
	


}
