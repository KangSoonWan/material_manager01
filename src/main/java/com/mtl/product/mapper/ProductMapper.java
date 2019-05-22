package com.mtl.product.mapper;

import org.springframework.stereotype.Repository;

@Repository
public interface ProductMapper {
	
	public int productCount() throws Exception;

}
