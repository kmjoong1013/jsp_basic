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
	String num = request.getParameter("num");
	String str = request.getParameter("str");
	
	int iNum = Integer.parseInt(num);
%>
num + 10 : <%= iNum + 10 %> <br/>
str + 10 : <%= str + "10" %> 
</body>
</html>