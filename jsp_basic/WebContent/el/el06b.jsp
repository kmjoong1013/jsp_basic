<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jsputil.member.*"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
loginId : ${sessionScope.member.id } <br/>
name : ${sessionScope.member.name }<br/>
email : ${sessionScope.member.email }<br/>

</body>
</html>