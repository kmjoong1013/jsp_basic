<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="util" uri="/WEB-INF/tld/el-funtions.tld" %>    
<%
	java.util.Date now = new java.util.Date();
	request.setAttribute("today", now);
%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> 
add('100', '200') : ${util:add('100','200')} <br/>
add(param.a, param.b) : ${util:add(param.a,param.b)} <br/>
1 : 홍길동 :  오늘한 하하하 ...  :${util:dateFormat(requestScope.today) } <br>
</body> 
