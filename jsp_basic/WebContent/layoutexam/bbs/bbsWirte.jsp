<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form action="">
<table border="1" width="450">
	<tr>
		<td width="80">제목</td><td><input type="text" size="44"></td>
	</tr>
	<tr>
		<td>내용</td><td><textarea cols="35" rows="15"></textarea></td>
	</tr>
	<tr>
		<td align="center" colspan="2"><input type="button" value="저장"></td>
	</tr>
</table>
</form>
<table>
	<tr>
		<td><input type="button" value="목록" onclick="moveLayout('bbs/bbsList.jsp')"/></td>
	</tr>
</table>