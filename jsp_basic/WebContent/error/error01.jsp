<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String pageNum = request.getParameter("page");
%>
<%=pageNum %>페이지를 표시 중 입니다.
<%=Integer.parseInt(pageNum)%>
</body>
</html>