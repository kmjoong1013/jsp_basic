<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" width="300" height="400">
<%
	// for문을 이용해서 4줄에 5칸짜리 table 을 출력하는데
	// rowIndex-colIndex를 내용으로하고 짝수 줄과 홀수 줄의 색상을 달리 출력하시오.
%>
<%
	for (int i = 0; i < 4; i++) {
		String bgcolor = "";
		if(i%2==0) bgcolor="pink";
		else bgcolor="brown"; %>
		<tr bgcolor="<%=bgcolor %>">
		<% for(int j=0; j<5; j++){ %>
				<td><%=i %>-<%=j %></td>
				<%} %>
				</tr>
				<%} %>
</table>
</body>
</html>