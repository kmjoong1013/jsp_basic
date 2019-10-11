<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>el</title>
</head>
<body>
	<form name="f1" action="el02b.jsp" method="post">
	<table>
		<tr>
			<td>사과</td><td><input type="checkbox" name="fruit" value="apple"></td>
		</tr>
		<tr>
			<td>딸기</td><td><input type="checkbox" name="fruit" value="strawberry"></td>
		</tr>
		<tr>
			<td>복숭아</td><td><input type="checkbox" name="fruit" value="peach"></td>
		</tr>				
		<tr>
			<td>가격</td><td><input type="text" name="price" ></td>
		</tr>		
		<tr>
			<td colspan="2"><input type="submit"></td>
		</tr>		
	</table>
	</form>
</body>
</html>