<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%
	ArrayList<String> list = new ArrayList<String>();
	list.add("a_1");
	list.add("b_1");
	list.add("c_1");
	list.add("d_1");
	list.add("e_1");
	list.add("f_1");
	list.add("g_1");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="list" value="<%=list %>"/>
<c:forEach begin="4" end="7" var="i">
	i = ${i }<br/>
</c:forEach>
<hr>
<c:forEach items="${list }" var="str" varStatus="status">
	index:${status.index } : count:${status.count } : ${str } <br/>
</c:forEach>
</body>
</html>