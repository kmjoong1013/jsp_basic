<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
sum(10, 20) = <%= sum(10,20) %>

<%!
	int sum(int a, int b){
		int tot = 0;
		tot = a + b;
		return tot;
	}
%>
</body>
</html>