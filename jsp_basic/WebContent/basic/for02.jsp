<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% String str[] = {"kim","lee","choi","park"}; 
// str 배열의 데이터를 번호와 이름 필드가 있는 table로 정렬해서 출력하시오.
%>
<table border="1">
	<tr><th>번호</th><th>이름</th></tr>
	<%
	for (int i=0; i<str.length; i++) { %>
		<tr><td width="40"><%=i+1 %></td><td><%=str[i] %></td></tr>
	<% }%>

</table>


</body>
</html>