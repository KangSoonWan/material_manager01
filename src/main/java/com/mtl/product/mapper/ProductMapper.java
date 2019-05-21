package com.mtl.product.mapper;

import org.springframework.stereotype.Repository;

@Repository("com.mtl.product.mapper.ProductMapper")
public interface ProductMapper {
	
	public int productCount() throws Exception;

}
