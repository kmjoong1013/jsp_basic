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
	String str = "�̼���;100;������;95;�Ӳ���;90";
	String strArr[] = str.split(";");
	int tot = 0;
	// ���� ���ڿ��� �̿��ؼ� �̸��� ����, ������ table�� ����ϰ� 
	//declration��  ������ ����ϴ� �޼ҵ带 ���� ������ �� ����Ͻð�  
%>
<table border="1">
<tr><th>�̸�</th><th>����</th></tr>
<%
	for (int i=0; i<strArr.length; i+=2) { 
		tot += Integer.parseInt(strArr[i+1]);
%>
	<tr>
		<td><%=strArr[i] %></td><td><%=strArr[i+1] %></td>
	</tr>
	<% }%>
	<tr>
	<th>����</th><td><%=tot %></td>
</table>
</body>
</html>