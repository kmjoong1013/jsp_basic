<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "jsputil.bbs.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
   int num = Integer.parseInt(request.getParameter("num"));
   String pageNum = request.getParameter("pageNum");

   SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy��MM��dd�� HH:mm");
	
	BoardVO article = null;
	String fileName = "";
   try{
      BoardDAO dbPro = BoardDAO.getInstance();
      article =  dbPro.getArticle(num);
      
      String filePath = article.getFilePath();
      if(filePath != null){
    	  int pos = filePath.lastIndexOf("\\");
    	  fileName = filePath.substring(pos+1);
      }
  
	  int ref=article.getRef();
	  int re_step=article.getRe_step();
	  int re_level=article.getRe_level();
%>
<center><b>�۳��� ����</b>
<br>
<form>
<table width="500" border="1" cellspacing="0" cellpadding="0"  bgcolor="" align="center">  
  <tr height="30">
    <td align="center" width="125" bgcolor="#B7F0B1">�۹�ȣ</td>
    <td align="center" width="125" align="center">
	     <%=article.getNum()%></td>
    <td align="center" width="125" bgcolor="#B7F0B1">��ȸ��</td>
    <td align="center" width="125" align="center">
	     <%=article.getReadcount()%></td>
  </tr>
<!-- -------------------------------------- -->  
  <tr height="30">
    <td align="center" width="125" bgcolor="#B7F0B1">�ۼ���</td>
    <td align="center" width="125" align="center">
	     <%=article.getWriter()%></td>
    <td align="center" width="125" bgcolor="#B7F0B1" >�ۼ���</td>
    <td align="center" width="125" align="center">
	     <%= sdf.format(article.getReg_date())%></td>
  </tr>
  <tr height="30">
    <td align="center" width="125" bgcolor="#B7F0B1">������</td>
    <td align="center" width="375" align="center" colspan="3">
	     <%=article.getSubject()%></td>
  </tr>
  <tr>
    <td align="center" width="125" bgcolor="#B7F0B1">�۳���</td>
    <td align="left" width="375" colspan="3">
    <%=article.getContent()%></td>
  </tr>
<!-- -------------------------------------- -->
<tr>
    <td align="center" width="125" bgcolor="#B7F0B1">÷������</td>
    <td align="left" width="375" colspan="3">&nbsp;
    <a href="download.jsp?num=<%=article.getNum()%>"><%=fileName %></a></td>
</tr>   
<!-- -------------------------------------- -->  
  <tr height="30">
    <td colspan="4" bgcolor="" align="right" > 
	  <input type="button" value="�ۼ���" 
       onclick="document.contentEditFrm.submit()">
	   
	  <input type="button" value="�ۻ���" 
       onclick="document.contentDelFrm.submit()">
	   
      <!-- input type="button" value="��۾���old" onclick="document.location.href='writeForm.jsp?num=<%=num%>&ref=<%=ref%>&re_step=<%=re_step%>&re_level=<%=re_level%>'"-->
<input type="button" value="��۾���" onclick="document.contentReFrm.submit()">
	   
       <input type="button" value="�۸��" 
       onclick="document.contentListFrm.submit()">
    </td>
  </tr>
</table>    
<%
 }catch(Exception e){} 
 %>
</form>
<!-- �� ���� ���⿡ �̵� form ���� -->
<form name="contentListFrm" action="list.jsp" method="post">
	<input type="hidden" name="HTML_TITLE" value="��� ����" >
	<input type="hidden" name="CENTER_PAGE" value="board/list.jsp" >
	<input type="hidden" name="pageNum" value="<%=pageNum%>" >
</form>
<form name="contentEditFrm" action="updateForm.jsp" method="post">
	<input type="hidden" name="HTML_TITLE" value="�ۼ���" >
	<input type="hidden" name="CENTER_PAGE" value="board/updateForm.jsp" >
	<input type="hidden" name="pageNum" value="<%=pageNum%>" >
	<input type="hidden" name="num" value="<%=article.getNum()%>">
</form>
<form name="contentDelFrm" action="deleteForm.jsp" method="post">
	<input type="hidden" name="HTML_TITLE" value="�ۻ���" >
	<input type="hidden" name="CENTER_PAGE" value="board/deleteForm.jsp" >
	<input type="hidden" name="pageNum" value="<%=pageNum%>" >
	<input type="hidden" name="num" value="<%=article.getNum()%>">
</form>
<form name="contentReFrm" action="writeForm.jsp" method="post">
	<input type="hidden" name="HTML_TITLE" value="���" >
	<input type="hidden" name="CENTER_PAGE" value="board/writeForm.jsp" >
	<input type="hidden" name="pageNum" value="<%=pageNum%>" >
	<input type="hidden" name="num" value="<%=article.getNum()%>">
	<input type="hidden" name="ref" value="<%=article.getRef()%>" >
	<input type="hidden" name="re_step" value="<%=article.getRe_step()%>" >
	<input type="hidden" name="re_level" value="<%=article.getRe_level()%>" >
</form>
<!-- �� ���� ���⿡ �̵� form �� -->

