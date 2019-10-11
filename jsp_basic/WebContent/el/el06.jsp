<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jsputil.member.*"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	String loginId = "aman";
	MemberDAO memberDAO = new MemberDAO();
	MemberVO memberVO = memberDAO.getMember(loginId);
	session.setAttribute("member", memberVO);
%>
<%=loginId %> 아이디가 세션 "member"에 저장되었습니다. 
<a href="el06b.jsp">세션 값 확인</a>
</body>
</html>