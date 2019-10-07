<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jsputil.goods.*" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>코드 중복 체크</title>
<script>
	function setUserCode() {
		opener.goodsInsFrm.code.value = frm1.code.value;
		self.close();
	}
</script>
</head>
<body>
<%
	String code = request.getParameter("code");
	if(code==null) code="";
	GoodsDAO goodsDAO = new GoodsDAO();
	int result = goodsDAO.codeDup(code);
%>
<form action="codeDup.jsp" name="frm1">
	<input type="text" name="code" value="<%=code%>">
	<input type="submit" value="중복확인"><br>
	<% if(result == 0){ %>
	아이디 사용 가능<br/>
	<a href="#" onclick="setUserCode()">아이디 사용</a>
	<% }else{ %>
	아이디 중복
	<% } %>
</form>
</body>
</html>