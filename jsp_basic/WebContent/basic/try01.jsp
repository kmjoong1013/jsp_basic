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
	//  위의 내용을 Integer로 변환하면 exception이 발생한다 
	// try ~ catch를 이용하여 numStr과 '숫자로 변경할 수 없습니다' 라는 메세지를 출력하시오.
	String msg = "";
	
	try{
		i = Integer.parseInt(numStr);
		msg = "i" + i;
	}catch(NumberFormatException e){
		msg = numStr+"는 숫자로 변경할 수 없습니다.";
	}
%>
<%=msg %>
</body>
</html>