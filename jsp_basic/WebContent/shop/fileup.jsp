<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form name="fileForm" method="post" enctype="multipart/form-data" action="fileUpProc.jsp">
	작성자 : <input type="text" name="uploadUser"><br>
	제 목 : <input type="text" name="title"><br>
	파일명 : <input type="file" name="upFile"><br>
	<input type="submit" value="저장">
	</form>
</body>
</html>