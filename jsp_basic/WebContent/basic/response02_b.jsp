<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>샘슝냉장고 기획전</h3>
<% 
	String num = request.getParameter("num");
%>
샘슝냉장고  주문수량 <%=num %>
</body>
</html>