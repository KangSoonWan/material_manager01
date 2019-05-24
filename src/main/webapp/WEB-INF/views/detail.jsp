<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- C, FMT 태그 라이브러리 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
${detail}
 
<h2> 게시글 상세 </h2>
 
<div class="container">

<button class="btn btn-primary" onclick='location.href="/update/${detail.product_id}"'>수정</button>
    <button class="btn btn-danger" onclick="location.href='/delete/${detail.product_id}'">삭제</button>
    <form action="/insertProc" method="post">
      <div class="form-group">
        <label>P_id</label>
        <p>${detail.product_id}</p>
      </div>
      <div class="form-group">
        <label>제품이름</label>
        <p>${detail.product_name}</p>
      </div>
      <div class="form-group">
        <label>브랜드</label>
        <p>${detail.brand}</p>
      </div>
      <div class="form-group">
        <label>제조일자</label>
        <p>${detail.manufacture_date}</p>
      </div>
      <div class="form-group">
        <label>구매일자</label>
        <p>${detail.purchase_date}</p>
      </div>
      <div class="form-group">
        <label>구매가격</label>
        <p>${detail.purchase_price}</p>
      </div>
      <div class="form-group">
        <label>구매주소</label>
        <p>${detail.purchase_url}</p>
      </div>
      <div class="form-group">
        <label>파기여부</label>
        <p>${detail.destruction}</p>
      </div>
      <div class="form-group">
        <label>감가삼각</label>
        <p>${detail.deprecation}</p>
      </div>
      <div class="form-group">
        <label>AS번호</label>
        <p>${detail.as_number}</p>
      </div>
      
     
      ${detail.product_id}

      
      <button type="submit" class="btn btn-primary">작성</button>
    </form>
    
     location.href="/update/${detail.product_id}"
</div>

<%@ include file="bootstrap.jsp" %> 
</body>
</html>

