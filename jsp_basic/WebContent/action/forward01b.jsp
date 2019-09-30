<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String no = request.getParameter("no");

	String content = request.getParameter("content");
	if(content == null || content.equals("")){
%>
	<jsp:forward page="forward01c.jsp">
		<jsp:param name="totArticleCnt" value="98"/>
	</jsp:forward>
<%  }else{ %>
	<jsp:forward page="forward01d.jsp"/>
<% }%>