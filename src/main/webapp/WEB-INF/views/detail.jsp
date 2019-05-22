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
    <form action="/insertProc" method="post">
      <div class="form-group">
        <label>제품이름</label>
        <p>${detail.product_name}</p>
      </div>
      <div class="form-group">
        <label>작성자</label>
        <p>${detail.brand}</p>
      </div>
      <div class="form-group">
        <label>작성날짜</label>
        <p>${detail.reg_date}</p>
      </div>
      <div class="form-group">
        <label>내용</label>
        <p>${detail.content}</p>
      </div>
      <button type="submit" class="btn btn-primary">작성</button>
    </form>
</div>


<%@ include file="bootstrap.jsp" %> 
</body>
</html>

