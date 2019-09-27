<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String level = request.getParameter("lvl");
	if(level != null  && level.equals("1")) {
%>
<%
	response.sendRedirect("response01_a.jsp?name=kim&level="+level);
	}else {
%>
<%
	response.sendRedirect("response01_b.jsp?name=kim");
	}
%>
기다려 주세요 .....
