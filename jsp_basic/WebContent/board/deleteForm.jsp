<%@ page contentType="text/html;charset=euc-kr" %>
<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");

%>
<script language="JavaScript">      
<!--      
  function deleteSave(){	
	if(document.delForm.passwd.value==''){
	alert("비밀번호를 입력하십시요.");
	document.delForm.passwd.focus();
	return false;
 }
}
// -->  
</script>
<center><b>글삭제</b>
<br>
<form method="POST" name="delForm"  action="deletePro.jsp" onsubmit="return deleteSave()"> 
 <table border="1" align="center" cellspacing="0" cellpadding="0" width="360">
  <tr height="30">
     <td align=center  bgcolor="">
       <b>비밀번호를 입력해 주세요.</b></td>
  </tr>
  <tr height="30">
     <td align=center >비밀번호 :   
       <input type="password" name="passwd" size="8" maxlength="12">
	   <input type="hidden" name="num" value="<%=num%>"></td>
 </tr>
 <tr height="30">
    <td align=center bgcolor="">
		<input type="hidden" name="pageNum" value="<%=pageNum%>" >
		<input type="submit" value="글삭제" >
		<input type="button" value="글목록" onclick="document.contentdelFrm.submit()">
   </td>
 </tr>
</table>
</form>
<!-- 글 삭제 페이지에서 이동 form 시작 -->
	<form name="contentdelFrm" action="list.jsp" method="post">
		<input type="hidden" name="HTML_TITLE" value="글목록" >
		<input type="hidden" name="CENTER_PAGE" value="board/list.jsp" >
		<input type="hidden" name="pageNum" value="<%=pageNum%>" >
	</form>
<!-- 글 삭제 페이지에서 이동 form 끝 -->


