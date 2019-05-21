package com.mtl.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mtl.product.mapper.ProductMapper;

@Controller

public class TestController {
	
	@Resource(name="com.mtl.product.mapper.ProductMapper")
	ProductMapper productMapper;
		
	@RequestMapping("/test")
	
	private String test() throws Exception{
		System.out.println("pass");
		System.out.println(productMapper.productCount());
		
		return "test";
		
	}
			
	
}
