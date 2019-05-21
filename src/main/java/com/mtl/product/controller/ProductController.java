package com.example.demo.board.controller;
 
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mtl.product.domain.ProductVO;
 

 
@Controller
public class ProductController {
 
    @Resource(name="com.example.demo.board.service.BoardService")
    ProductService mBoardService;
    
    @RequestMapping("/list") //게시판 리스트 화면 호출  
    private String boardList(Model model) throws Exception{
        
        model.addAttribute("list", mBoardService.boardListService());
        
        return "list"; //생성할 jsp
    }
    
    @RequestMapping("/detail/{bno}") 
    private String boardDetail(@PathVariable int bno, Model model) throws Exception{
        
        model.addAttribute("detail", mBoardService.boardDetailService(bno));
        
        return "detail";
    }
    
    @RequestMapping("/insert") //게시글 작성폼 호출  
    private String boardInsertForm(){
        
        return "insert";
    }
    
    @RequestMapping("/insertProc")
    private int boardInsertProc(HttpServletRequest request) throws Exception{
        
        ProductVO product = (ProductVO) request.getParameterMap();
        
        return ProductService.productInsertService(product);
    }
    

}