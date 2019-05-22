package com.mtl.product.domain;

import java.util.Date;

import lombok.Data;

	@Data
public class ProductVO {

	private int product_id;
	private String product_name;
	private String brand;
	private Date manufacture_date;
	private Date purchase_date;
	private int purchase_price;
	private String purchase_url;
	private int destruction;
	private int deprecation;
	private String as_number;
	
}