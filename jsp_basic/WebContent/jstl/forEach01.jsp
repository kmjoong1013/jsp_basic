<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<@ page import="java.util.ArrayList" %>
<@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:forEach begin="1" end="3" var="i">
	i = ${i }<br/>
	</c:forEach>
	<hr>
	<c:forEach items="<%=list %>" var="str" varStatus="status">
		index:${status.index } : count:${status.count } : ${str }
	</c:forEach>
</body>
</html>