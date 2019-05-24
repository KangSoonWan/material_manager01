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
<%@include file="/WEB-INF/include/header.jsp" %>

<h2> 제품 목록 </h2>
 
<button class="btn btn-primary" onclick="location.href='/insert'">글쓰기</button>

<div class="container">
    <table class="table table-hover">
        <tr>
           
        </tr>
          <c:forEach var="list" items="${list}">
              <tr onclick="location.href='/detail/${list.product_id}'"> 
              	  <td>${list.product_id}</td>
                  <td>${list.brand}</td>
                  <td>${list.manufacture_date}</td>
                  <td>${list.purchase_price}</td>
              </tr>
          </c:forEach>
          
    </table>
</div>

<%@ include file="bootstrap.jsp" %> 
</body>
</html>