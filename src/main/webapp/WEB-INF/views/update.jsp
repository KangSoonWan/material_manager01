<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- C, FMT 태그 라이브러리 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert Form</title>
</head>
<body>
 
<h2> 게시글 수정 </h2>
 
<div class="container">
    <form action="/updateProc" method="post">
      
      <input type="hidden" name="product_id" value="${product_id}"/>
      <%-- <div class="form-group">
        <label for="product_id">P_id</label>
        <!-- 나중에 자동생성 해줘야 할듯 -->
        <input type="text" class="form-control" id="product_id" name="product_id" value="${detail.product_id}">
      </div> --%>
      
      <div class="form-group">
        <label for="product_name">제품명</label>
        <input type="text" class="form-control" id="product_name" name="product_name" value="${detail.product_id}">
      </div>
      
      
      <div class="form-group">
        <label for="brand">브랜드</label>
        <input type="text" class="form-control" id="brand" name="brand" value="${detail.product_id}">
      </div>

      
      <div class="form-group">
        <label for="manufacture_date">제조일자</label>
        <input type="text" class="form-control" id="manufacture_date" name="manufacture_date" value="${detail.manufacture_date}">
      </div>
      
      
      <div class="form-group">
        <label for="purchase_date">구매일자</label>
        <input type="text" class="form-control" id="purchase_date" name="purchase_date" value="${detail.purchase_date}">
      </div>
      
      
      <div class="form-group">
        <label for="purchase_price">구매가격</label>
        <input type="text" class="form-control" id="purchase_price" name="purchase_price" value="${detail.purchase_price}">
      </div>
      
      
      <div class="form-group">
        <label for="purchase_url">구매주소</label>
        <input type="text" class="form-control" id="purchase_url" name="purchase_url" value="${detail.purchase_url}">
      </div>
      
      
      <div class="form-group">
        <label for="destruction">파기여부</label>
        <input type="text" class="form-control" id="destruction" name="destruction" value="${detail.destruction}">
      </div>
      
      
      <div class="form-group">
        <label for="deprecation">감가삼각</label>
        <input type="text" class="form-control" id="deprecation" name="deprecation" value="${detail.deprecation}">
      </div>
      
      
      <div class="form-group">
        <label for="as_number">AS번호</label>
        <input type="text" class="form-control" id="as_number" name="as_number" value="${detail.as_number}">
      </div>
      
      
      <button type="submit" class="btn btn-primary">작성</button>
    </form>
</div>
<%@ include file="bootstrap.jsp" %>
</body>
</html>
