package org.mtl.domain;


import java.sql.Timestamp;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.CreationTimestamp;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Product {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	
	private String product_id;
	private Timestamp manufacture_date;
	@CreationTimestamp
	private Timestamp purchase_date;
	private String purchase_price;
	private String purchase_url;
	private String destruction;
	private String deprecation;
	private String as_number;
	
}
