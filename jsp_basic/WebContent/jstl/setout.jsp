<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" >
    <%
    int a = 100;
    int b = 200;
    int c = 150;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="name" value="홍길동"/>
<c:set var="money" value="<%=a+b+c %>"/>
<c:set var="goodsName" value="${param.goodsName}"/>

remove money <br/>
name : <c:out value="${name }"/> <br/>
</body>
</html>