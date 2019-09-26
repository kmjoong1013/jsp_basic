<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%=name %><br>
<%=sum(10,30) %>
<%!
	String name = "홍길동";
	int sum(int a, int b){
		return a+b;
	}
%>
</body>
</html>