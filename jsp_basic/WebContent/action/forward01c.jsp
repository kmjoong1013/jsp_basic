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
	String no = request.getParameter("no");
	String totArticleCnt = request.getParameter("totArticleCnt");
%>
전체 글 수 <%=totArticleCnt %><br/>
글번호 <%=no %> <br/>
글의 내용이 없습니다. <br/>
<a href="forward01a.jsp">처음 으로 </a>
</body>
</html>