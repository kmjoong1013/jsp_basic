<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>

<c:choose>
	<c:when test="${param.name == 'bk'}">
		당신의 이름은 ${param.name }<br/>
	</c:when>
	<c:when test="${param.age > 18 }">
		18세 이상입니다. age(${param.age })<br/>
	</c:when>
	<c:otherwise>
		당신은 'bk'가 아니고 18세 이상이 아닙니다.
	</c:otherwise>
</c:choose>

</body>
</html>