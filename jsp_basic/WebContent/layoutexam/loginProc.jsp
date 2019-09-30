<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String idSave = request.getParameter("idSave");
	String loginId = request.getParameter("id");
	
	if(idSave == null) {
		Cookie[] cookies = request.getCookies();
		
		for(int i = 0; i<cookies.length;i++){
			if(cookies[i].getName().equals("loginId")){
				cookies[i].setMaxAge(0);
				response.addCookie(cookies[i]);
			}
		}
	} else{
		Cookie cookie = new Cookie("loginId",loginId);
		response.addCookie(cookie);
	}
	session.setAttribute("myId",loginId);
%>
<%=idSave %>
</body>
</html>