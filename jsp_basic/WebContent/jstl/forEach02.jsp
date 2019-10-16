<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	HashMap mapData = new HashMap();
	mapData.put("name","송혜교");
	mapData.put("today", new java.util.Date());
%>
<c:set var="intArray" value="<%= new int[]{10,20,30,40,50} %>" />
<c:set var="map" value="<%= mapData %>" />
<html>
	<head>
		<title>forEach </title>	
	</head>
<body>
<h4>map data 출력 </h4>
<c:forEach var="i" items="${map}">
 ${i.key} = ${i.value}<br>
</c:forEach>

map.name : ${map.name } <br/>
<hr>
<h4> int array </h4>
<c:forEach var="i" items="${intArray}" begin="2" end="4">
	[${i}]
</c:forEach>

<hr>
<h4>1부터 100까지의 홀수의 합</h4>
<c:set var="sum" value="0"/>
<c:forEach var="i" begin="1" end="100" step="2">
	<c:set var="sum" value="${sum + i}" />
</c:forEach>
결과 = ${sum}
<hr>
<h4>구구단 : 4단 </h4>
<c:forEach var="i" begin="1" end="9">
	4 * ${i} = ${4*i}<br>
</c:forEach>
</body>
</html>