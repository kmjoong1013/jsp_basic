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
	int dan = 5;
	for(int i = 1; i <= 9; i++){
%>
	<%=dan %>*<%=i %>=<%=(dan*i) %><br/>
<%	}  %>	
</body>
</html>