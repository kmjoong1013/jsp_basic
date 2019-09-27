<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String code = request.getParameter("code");
String num = request.getParameter("num");

if(code.equals("A-100")){
	response.sendRedirect("response02_b.jsp?num="+num);
}else {
	response.sendRedirect("response02_c.jsp");
}
%>
code :<%=code%>
num :<%=num%>