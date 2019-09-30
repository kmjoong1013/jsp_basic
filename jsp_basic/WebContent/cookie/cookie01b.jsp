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
String name = "myId", value = "";
	int maxAge = 0;
	Cookie[] cookies = request.getCookies();
	for(int i = 0; i < cookies.length; i++){
		if(cookies[i].getName().equals(name)){
			value = cookies[i].getValue();
			maxAge = cookies[i].getMaxAge();
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
	}
// 같은 이름의 cookie를 생성해서 setMaxAge(0)와 addCookie를 한다.
%>
쿠기 삭제 <br/>
<%=name%> : <%=value %>  <br/>
<a href="cookie01.jsp">쿠키저장</a> 
<a href="cookie01a.jsp">쿠키확인</a>
</body>
</html>