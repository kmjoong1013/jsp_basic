<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% boolean login = true; %>
<% if(login){ %>
	아이디<input type="text" name="id"/><br/>
	암호<input type="text" name="id"/><br/>
	<input type="button" value="로그인"/>
<% }else{ %>
	<input type="button" value="로그아웃"/>
<% } %>

</body>
</html>