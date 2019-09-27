<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>스크립트 릿 예제 if</h2>
<%
	double var1 = 4.5;
	int a = 10 /0;
	if(var1 > 5){
%>
	변수 var1의 값은 5보다 크다.
<%
	}else{
%>
	변수 var1의 값은 5보다 작거나 같다.
<%
	}
%>
</body>
</html>