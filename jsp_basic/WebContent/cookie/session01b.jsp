<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//session.removeAttribute("userName");
	session.invalidate();
%>
session.invalidate()로 세정 정보 모두 삭제
<a href="session01.jsp">이전</a>
</body>
</html>