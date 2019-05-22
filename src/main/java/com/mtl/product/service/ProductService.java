package com.mtl.product.service;
 
import java.util.List;
 
import javax.annotation.Resource;
 
import org.springframework.stereotype.Service;
 
import com.mtl.product.domain.ProductVO;
import com.mtl.product.mapper.ProductMapper;
 
@Service("com.mtl.product.service.ProductService")
public class ProductService {
 
    @Resource(name="com.mtl.product.mapper.ProductMapper")
    ProductMapper ProductMapper;
    
    public List<ProductVO> productListService() throws Exception{
        
        return ProductMapper.productList();
    }
    
    public ProductVO productDetailService(int product_id) throws Exception{
        
        return ProductMapper.productDetail(product_id);
    }
    
    public int productInsertService(ProductVO product) throws Exception{
        
        return ProductMapper.productInsert(product);
    }
    
    public int productUpdateService(ProductVO product) throws Exception{
        
        return ProductMapper.productUpdate(product);
    }
    
    public int productDeleteService(int product_id) throws Exception{
        
        return ProductMapper.productDelete(product_id);
    }
}