<%@ page contentType="text/html;charset=euc-kr" %>
<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");

%>
<script language="JavaScript">      
<!--      
  function deleteSave(){	
	if(document.delForm.passwd.value==''){
	alert("��й�ȣ�� �Է��Ͻʽÿ�.");
	document.delForm.passwd.focus();
	return false;
 }
}
// -->  
</script>
<center><b>�ۻ���</b>
<br>
<form method="POST" name="delForm"  action="deletePro.jsp" onsubmit="return deleteSave()"> 
 <table border="1" align="center" cellspacing="0" cellpadding="0" width="360">
  <tr height="30">
     <td align=center  bgcolor="">
       <b>��й�ȣ�� �Է��� �ּ���.</b></td>
  </tr>
  <tr height="30">
     <td align=center >��й�ȣ :   
       <input type="password" name="passwd" size="8" maxlength="12">
	   <input type="hidden" name="num" value="<%=num%>"></td>
 </tr>
 <tr height="30">
    <td align=center bgcolor="">
		<input type="hidden" name="pageNum" value="<%=pageNum%>" >
		<input type="submit" value="�ۻ���" >
		<input type="button" value="�۸��" onclick="document.contentdelFrm.submit()">
   </td>
 </tr>
</table>
</form>
<!-- �� ���� ���������� �̵� form ���� -->
	<form name="contentdelFrm" action="list.jsp" method="post">
		<input type="hidden" name="HTML_TITLE" value="�۸��" >
		<input type="hidden" name="CENTER_PAGE" value="board/list.jsp" >
		<input type="hidden" name="pageNum" value="<%=pageNum%>" >
	</form>
<!-- �� ���� ���������� �̵� form �� -->


