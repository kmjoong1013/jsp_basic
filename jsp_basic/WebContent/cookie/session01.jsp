<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String userName = (String)session.getAttribute("userName");
	if(userName == null){
%>
	session("userName")에 값이 없음
<%  } else {%>
	session("userName") : <%=userName %>
<%  } %>
<form action="session01a.jsp" method="post">
	<input type="text" name="userName"><br>
	<input type="submit">
</form>
<a href="session01b.jsp">세션종료</a>
</body>
</html>