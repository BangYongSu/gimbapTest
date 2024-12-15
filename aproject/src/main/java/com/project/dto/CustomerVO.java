package com.project.dto;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter@Setter
@AllArgsConstructor
@NoArgsConstructor
public class CustomerVO {

	private String cus_id;
	private int cus_ps;
	private String cus_name;
	private String card_no;
	private Date cus_bd;
	private int totalpoints;


}
