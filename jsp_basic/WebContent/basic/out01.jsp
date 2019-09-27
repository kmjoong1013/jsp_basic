<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>out 객체 테스트 예제</h1>
<%
	out.println("out 객체를 테스트하는 예제입니다."+"<br>");
	out.println("Buffer의 크기 : "+out.getBufferSize()+"Bytes<br>");
	out.println("남은 Buffer의 크기 : "+out.getRemaining()+"Bytes<br>");
	out.println("autoFlush = "+out.isAutoFlush());
	out.flush();
%>
</body>
</html>