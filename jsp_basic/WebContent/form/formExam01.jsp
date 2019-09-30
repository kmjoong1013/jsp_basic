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
		팬하나는 300원이고 계산 버튼을 클릭하면 
		
		검은색 팬 0개 0000원
		파란색 팬 0개 0000원
		붉은색 팬 0개 0000원
		
		합계 0000원
		
		와 같이 출력하시오.
		
		* 수량이 입력되지 않으면 에러 메세지를 출력하고 다시 처음 화면으로 돌아가게 하시오.
	 -->
	<form action="formExam01a.jsp" method="post">
		검은색 팬 수량<input type="text" name="blackQnt"> <br>
		파란색 팬 수량<input type="text" name="blueQnt"> <br>		
		붉은색 팬 수량<input type="text" name="redQnt"> <br>
		<input type="submit" value="계산" >		
	</form>
</body>
</html>