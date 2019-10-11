<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function goLayout(){
		document.f1.submit();
	}
</script>
</head>
<body>
<a href="#" onclick="goLayout()">게시판</a>

<form name="f1" action="el08main.jsp" method="post">
<input type="hidden" name="center" value="el08center.jsp">
</form>
</body>
</html>