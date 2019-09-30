<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Cookie cookie = new Cookie("myId", "aman");
	//cookie.setPath("jsp_basic"); // path를 지정했으면 삭제할 때도 path가 같은 경우 삭제를 해야한다.
	response.addCookie(cookie);
%>
저장 된 쿠키  <%=cookie.getName() %> : <%=cookie.getValue() %> <br/>

<a href="cookie01a.jsp">쿠키확인</a><a href="cookie01b.jsp">쿠키삭제</a> <br/>
</body>
</html>