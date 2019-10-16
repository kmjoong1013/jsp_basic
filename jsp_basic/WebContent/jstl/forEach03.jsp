<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>  
<%@ page import="jsputil.bbs.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
	BoardDAO boardDao = BoardDAO.getInstance();
	List<BoardVO> boardList = boardDao.getArticles(1, 10);
%>        
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<c:set var="boardList" value="<%=boardList %>"/>
<table border="1" align="center" width="500">
	<tr>
		<th width="70">번호</th><th>제목</th><th width="100">글쓴이</th>
	</tr>
<c:forEach items="${boardList }" var="article">
	<tr>
		<td>${article.num }</td>
		<td>${article.subject }</td>
		<td>${article.writer }</td>
	</tr>
</c:forEach>	
</table>	
</body>
</html>