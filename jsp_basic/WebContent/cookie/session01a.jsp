<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String userName = request.getParameter("userName");
	session.setAttribute("userName", userName);
	session.setMaxInactiveInterval(60*60*24*365);
%>
session에 userName:<%=userName %> 저장 
<a href="session01.jsp">이전화면</a>
</body>
</html>