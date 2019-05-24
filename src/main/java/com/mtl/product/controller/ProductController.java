package com.mtl.product.controller;
 
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mtl.product.domain.ProductVO;
import com.mtl.product.service.ProductService;
 

 
@Controller
public class ProductController {
 
    @Resource(name="com.mtl.product.service.ProductService")
    ProductService productService;
    
    @RequestMapping("/list") //게시판 리스트 화면 호출  
    private String productList(Model model) throws Exception{
        
        model.addAttribute("list", productService.productListService());
        //왜 이걸 스테이틱으로 바꾸라는거야?
        
        return "list"; //생성할 jsp
    }
            
    @RequestMapping("/detail/{product_id}") 
    private String productDetail(@PathVariable int product_id, Model model) throws Exception{
        
    	
        model.addAttribute("detail", productService.productDetailService(product_id));
        
        return "detail";
    }
    
    @RequestMapping("/insert") //게시글 작성폼 호출  
    private String productInsertForm(){
    	//폼으로 가는것 업데이트 공용
        System.out.println("/insert 통과");
    	
        return "insert";
    }
    
    @RequestMapping("/insertProc")
    private String productInsertProc(HttpServletRequest request) throws Exception{
        System.out.println("/insertProc 통과");
        ProductVO product = new ProductVO();
        
        
        //date form 처리
        DateFormat df = new SimpleDateFormat("yyyy-MM-dd"); 
        Date manufacture_form = df.parse(request.getParameter("manufacture_date"));
        Date purchase_form = df.parse(request.getParameter("purchase_date"));
        
        System.out.println(Integer.parseInt(request.getParameter("product_id")));
        System.out.println(request.getParameter("product_name"));
        System.out.println((request.getParameter("brand")));
        System.out.println(manufacture_form);
        System.out.println(purchase_form);
        System.out.println(Integer.parseInt(request.getParameter("purchase_price")));
        System.out.println((request.getParameter("purchase_url")));
        System.out.println(Integer.parseInt(request.getParameter("destruction")));
        System.out.println(Integer.parseInt(request.getParameter("deprecation")));
        System.out.println((request.getParameter("as_number")));
        
        
        
        product.setProduct_id(Integer.parseInt(request.getParameter("product_id")));
        product.setProduct_name(request.getParameter("product_name"));
        product.setBrand(request.getParameter("brand"));
        product.setManufacture_date(manufacture_form);
        product.setPurchase_date(purchase_form);
        product.setPurchase_price(Integer.parseInt(request.getParameter("purchase_price")));
        product.setPurchase_url(request.getParameter("purchase_url"));
        product.setDestruction(Integer.parseInt(request.getParameter("destruction")));
        product.setDeprecation(Integer.parseInt(request.getParameter("deprecation")));
        product.setAs_number(request.getParameter("as_number"));
        
        //스트링 말고 데이트랑 인트는 어떻게 넣는가
        //request.getParameter("manufacture_date") 값이 데이트 값이어야 함
        //(request.getParameter("purchase_price")가 인트여야함
        //그럼 값을 받기 전에 값을 변환해주는 곳이 필요함
        
        //만일에 이 데이터 값 안되면 데이터 값을 그냥 DATE-> VARSHAR로 해줄것

        productService.productInsertService(product);
        
        
        return "redirect:/list";
        		
    }
    
    @RequestMapping("/update/{product_id}")
    private String productUpdateForm(@PathVariable int product_id, Model model) throws Exception{
        
    	System.out.println("update 통과");
    	
    	model.addAttribute("detail", productService.productDetailService(product_id));
    	
        
        return "update";
        		
    }
    
    
    @RequestMapping("/updateProc")
    private String productUpdateProc(HttpServletRequest request) throws Exception{
        
    	ProductVO product = (ProductVO) request.getParameterMap();
            	
    	DateFormat df = new SimpleDateFormat("yyyy-MM-dd"); 
        Date manufacture_form = df.parse(request.getParameter("manufacture_date"));
        Date purchase_form = df.parse(request.getParameter("purchase_date"));
    	
        product.setProduct_id(Integer.parseInt(request.getParameter("product_id")));
        product.setProduct_name(request.getParameter("product_name"));
        product.setBrand(request.getParameter("brand"));
        product.setManufacture_date(manufacture_form);
        product.setPurchase_date(purchase_form);
        product.setPurchase_price(Integer.parseInt(request.getParameter("purchase_price")));
        product.setPurchase_url(request.getParameter("purchase_url"));
        product.setDestruction(Integer.parseInt(request.getParameter("destruction")));
        product.setDeprecation(Integer.parseInt(request.getParameter("deprecation")));
        product.setAs_number(request.getParameter("as_number"));
        
        productService.productUpdateService(product);
        
        return "redirect:/detail/" + request.getParameter("product_id");
    }
    
    @RequestMapping("/delete/{product_id}")
    private String productDelete(@PathVariable int product_id) throws Exception{
        
        productService.productDeleteService(product_id);
        
        return "redirect:/list";
    }


    

}