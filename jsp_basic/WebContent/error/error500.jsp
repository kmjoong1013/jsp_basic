<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<%  response.setStatus(HttpServletResponse.SC_OK); %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
회사로고<br/>
접속자가 많아서 서비스가 지연되고 있습니다.<br>
잠시뒤에 접속하세요.
<%=exception.getMessage()%>
</body>
</html>