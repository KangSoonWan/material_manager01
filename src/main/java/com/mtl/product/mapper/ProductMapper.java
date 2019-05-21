package com.mtl.product.mapper;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.mtl.product.domain.ProductVO;

@Repository("com.mtl.product.mapper.ProductMapper")
public interface ProductMapper {
	//게시글 개수
	public int productCount() throws Exception;

	//제품 목록
	public List<ProductVO> productList() throws Exception; 
	//제품 상세
	public ProductVO productDetail(int product_id) throws Exception;
	//제품 등록
	public void productInsert(ProductVO product) throws Exception;
	//제품 수정
	public void productUpdate(ProductVO product) throws Exception;
	//제품 파기
	public void productDelete(int product_id) throws Exception;

}
