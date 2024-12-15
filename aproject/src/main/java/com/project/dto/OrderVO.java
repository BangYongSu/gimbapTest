package com.project.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;



@Getter@Setter
@AllArgsConstructor
@NoArgsConstructor
public class OrderVO {
	private CustomerVO customer;
	private MenuVO menu;
private int order_id;
 private int menu_id;
 private String cus_id;
 private Date order_date;
 
 
}
