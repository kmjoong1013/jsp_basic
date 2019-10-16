<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<html>
<head>
<title>jstl</title>
</head>
<body>
	<c:url value="url01b.jsp" var="regURL">
		<c:param name="data1" value="${param.d1}" />
		<c:param name="data2" value="${param.d2}" />
	</c:url>
	url : ${regURL}
	<br>
	<a href="${regURL}">링크</a>
</body>
</html>