<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<c:set value="<%=new java.util.Date()  %>" var="now"/>
</head>
<body>
<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" /> <br/>
<fmt:formatDate value="${now}"  type="date"/> <br/>
<fmt:formatDate value="${now}"  type="time"/><br/>
</body>
</html>