package com.project.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Getter@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MenuVO {
	//소문자로 바꾸는법 ctrl + shift + y
	private int menu_id;
	private String menu_name;
	private int menu_t;
	private int price;



	


}
