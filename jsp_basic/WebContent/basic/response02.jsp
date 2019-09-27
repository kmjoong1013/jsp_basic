<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
response02_a.jsp 페이지에서 code가 A-100일때 정상 페이지로 이동해서 주문수량 표시
A-100이 아니면 상품 준비중 페이지를 표시하시오.
 -->
 
<form action="response02_a.jsp" method="post">
	<select name="code">
		<option value="">--선택--</option>
		<option value="A-100">샘슝냉장고</option>
		<option value="B-107">얼쥐냉장고</option>
		<option value="C-707">더우냉장고</option>
	</select>
	<input type="text" name="num">개 
	<input type="submit" value="주문">
</form>
</body>
</html>