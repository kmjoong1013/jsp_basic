<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%!
 char computeGrade(String str){
	int score = Integer.parseInt(str);
	if(score >= 90) return 'A';
	else if(score >= 80) return 'B';
	else if(score >= 70) return 'C';
	else if(score >= 60) return 'D';
	else return 'F';
}
%>
<%
	String str = "�̼���;100;������;95;�Ӳ���;90";
	String strArr[] = str.split(";");
	int tot = 0;
	// ���� ���ڿ��� �̿��ؼ� �̸��� ����, ������ table�� ����ϰ� 
	//declration��  ������ ����ϴ� �޼ҵ带 ���� ������ �� ����Ͻð�  
%>
<table border="1">
<tr><th>�̸�</th><th colspan="2">����</th></tr>
<%
	for (int i=0; i<strArr.length; i+=2) { 
		tot += Integer.parseInt(strArr[i+1]);
%>
	<tr>
		<td><%=strArr[i] %></td><td><%=strArr[i+1] %></td><td><%=computeGrade(strArr[i+1])%></td>
	</tr>
	<% }%>
	<tr>
	<th>����</th><td colspan="2"><%=tot %></td>
</table>
</body>
</html>