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
	String numStr = "a100";
	
	Integer i = null;
	String msg = "";
	try{
		i = Integer.parseInt(numStr);
		msg = "i = " + i;
	}catch(NumberFormatException e){
		msg = numStr+"�� ���ڷ� ������ �� �����ϴ�.";
	}
%>
<%=msg %>
</body>
</html>