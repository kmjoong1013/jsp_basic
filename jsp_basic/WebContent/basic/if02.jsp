<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% boolean login = true; 
// login 변수가 true이면 로그인 이후의 화면이 
// false 로그인 이전의 화면이 나오도록 완성하시오.
	if (login = true) {
		%>
		아이디 <input type="text" name="id"><br>
		비밀번호 <input type="text" name="id"><br>
		<input type="button" value="로그인">		
		<%
	}else {
		%>
		<input type="button" value="로그아웃">	
		<% }
%>

</body>
</html>