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
	<% for(int i = 0; i < 4; i++){ 
		String bgcolor ="";
		if(i%2==0) bgcolor="pink";
		else bgcolor="brown";
	%>
		<tr bgcolor="<%=bgcolor%>">
			<% for(int j=0; j < 5; j++){ %>
				<td><%=i%>-<%=j %></td>
			<% } %>
		</tr>
	<% } %>
</table>
</body>
</html>