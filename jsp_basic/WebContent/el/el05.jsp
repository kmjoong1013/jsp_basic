<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
Cookie cookie = new Cookie("num1", "100"); 
response.addCookie(cookie);

Cookie cookie2 = new Cookie("num2", "200");
response.addCookie(cookie2);
%>
<a href="el05b.jsp">쿠기 값 확인</a>
</body>
</html>