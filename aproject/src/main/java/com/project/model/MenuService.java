package com.project.model;

import java.util.List;

import com.project.dto.MenuVO;

public class MenuService {

	MenuDAO mdao = new MenuDAO();

	public List<MenuVO> selectAll() {
		
		return mdao.selectAll();
	}

	public List<MenuVO> selectgb() {
		
		return mdao.selectgb();
	}


	public List<MenuVO> selectnd() {
		// TODO Auto-generated method stub
		return mdao.selectnd();
	}

	public List<MenuVO> selectdc() {
		// TODO Auto-generated method stub
		return mdao.selectdc();
	}

	public List<MenuVO> selecttang() {
		// TODO Auto-generated method stub
		return mdao.selecttang();
	}

	public List<MenuVO> selectbok() {
		// TODO Auto-generated method stub
		return mdao.selectbok();
	}

	public List<MenuVO> selectbypr(int su) {
		// TODO Auto-generated method stub
		return mdao.selectbypr(su);
	}

	public List<MenuVO> selectbypr(int su, int su2) {
		// TODO Auto-generated method stub
		return mdao.selectbypr(su,su2);
	}

	public int insertmenu(MenuVO menu) {
		// TODO Auto-generated method stub
		return mdao.insertmenu(menu);
	}

	public int updatemenu(MenuVO menu) {
		// TODO Auto-generated method stub
		return mdao.updatemenu(menu);
	}

	public int deletemenu(int choice) {
		// TODO Auto-generated method stub
		return mdao.deletemenu(choice);
	}

	public MenuVO getMenuPrice(int menu_id) {
		// TODO Auto-generated method stub
		return mdao.getMenuPrice(menu_id);
	}


	
}
