<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<c:if test="true">
	무조건 수행<br/>
</c:if>

<c:if test="${param.name == 'bk' }">
	name 파라미터의 값${param.name }<br/>
</c:if>

<c:if test="${param.age > 18}">
	당신의 나이는 18세 이상입니다.
</c:if>
</body>
</html>