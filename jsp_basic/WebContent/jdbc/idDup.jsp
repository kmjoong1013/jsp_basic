<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsputil.member.*" %>    
<html>
<head>
<title>아이디 중복 체크</title>
<script type="text/javascript">
	function setUserId(){
		opener.memberForm.id.value = frm1.id.value;
		self.close();
	}
</script>
</head>
<body>
<%
	String id = request.getParameter("id");
	if(id==null) id="";
	MemberDAO memberDao = new MemberDAO();
	int result = memberDao.idDup(id);
%>
<form action="idDup.jsp" name="frm1">
	<input type="text" name="id" value="<%=id%>">
	<input type="submit" value="중복확인"><br>
	<% if(result == 0){ %>
	아이디 사용 가능<br/>
	<a href="#" onclick="setUserId()">아이디 사용</a>
	<% }else{ %>
	아이디 중복
	<% } %>
</form>
</body>
</html>