<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form name="loginFrm" action="loginProc.jsp">
<table width="150" border="1">
	<tr>
		<td><font size="2px;">아이디</font></td><td><input type="text" name="id" size="8"></td>
	</tr>
	<tr>
		<td>암호</td><td><input type="password" name="pass" size="8"></td>
	</tr>
	<tr align="center"><td colspan="2">
<input type="checkbox" name="idSave">아이디저장<input type="submit" value="로그인"></td></tr>
</table>
</form>
<table>
	<tr>
	<td>	
	<a href="main.jsp?centerPage=bbs/join.jsp">	
회원가입</a></td>
	</tr>
	<tr>
		<td>		
<a href="main.jsp?centerPage=bbs/bbsList.jsp">
게시판</a></td>
	</tr>
	
</table>
<% %>
<form name="loginFrm" action="logOutProc.jsp">
<table width="200" height="100">
	<tr>
		<td><input type="submit" value="로그아웃"></td>
	</tr>
	<tr>
		<td><%=id %></td>
	</tr>
	<tr>
		<td>회원정보수정</td>
	</tr>
	<tr>
		<td><a href="/jsp_basic/layout/main.jsp?centerPage=bbs/bbsList.jsp"></a>
</table>
</form>