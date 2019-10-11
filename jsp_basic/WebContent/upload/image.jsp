<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String img = request.getParameter("img");
%>
<img src="../upload/<%=img %>" width="200" height="200">
</body>
</html>