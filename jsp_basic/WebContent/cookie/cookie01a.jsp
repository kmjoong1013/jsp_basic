<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = "myId", value = "";
	int maxAge = 0;
	Cookie[] cookies = request.getCookies();
	for(int i = 0; i < cookies.length; i++){
		if(cookies[i].getName().equals(name)){
			value = cookies[i].getValue();
			maxAge = cookies[i].getMaxAge();
		}
	}
%>
쿠키확인<br/>
<%=name%> : <%=value %> : <%=maxAge %> <br/>
<a href="cookie01.jsp">쿠키저장</a>
<a href="cookie01b.jsp">쿠키삭제</a>
</body>
</html>