<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String str = "이술신;100;강감찬;95;임꺽정;90";
	String strArr[] = str.split(";");
	int tot = 0;
	// 위의 문자열을 이용해서 이름과 점수, 총점을 table로 출력하고 
	//declration에  학점을 계산하는 메소드를 만들어서 학점과 도 출력하시고  
%>
<table border="1">
<tr><th>이름</th><th>점수</th></tr>
<%
	for (int i=0; i<strArr.length; i+=2) { 
		tot += Integer.parseInt(strArr[i+1]);
%>
	<tr>
		<td><%=strArr[i] %></td><td><%=strArr[i+1] %></td>
	</tr>
	<% }%>
	<tr>
	<th>총점</th><td><%=tot %></td>
</table>
</body>
</html>