<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "jsputil.bbs.*" %>
<%@ page import = "java.text.SimpleDateFormat" %>
<%
   int num = Integer.parseInt(request.getParameter("num"));
   String pageNum = request.getParameter("pageNum");

   SimpleDateFormat sdf = 
        new SimpleDateFormat("yyyy년MM월dd일 HH:mm");
	
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
<center><b>글내용 보기</b>
<br>
<form>
<table width="500" border="1" cellspacing="0" cellpadding="0"  bgcolor="" align="center">  
  <tr height="30">
    <td align="center" width="125" bgcolor="#B7F0B1">글번호</td>
    <td align="center" width="125" align="center">
	     <%=article.getNum()%></td>
    <td align="center" width="125" bgcolor="#B7F0B1">조회수</td>
    <td align="center" width="125" align="center">
	     <%=article.getReadcount()%></td>
  </tr>
<!-- -------------------------------------- -->  
  <tr height="30">
    <td align="center" width="125" bgcolor="#B7F0B1">작성자</td>
    <td align="center" width="125" align="center">
	     <%=article.getWriter()%></td>
    <td align="center" width="125" bgcolor="#B7F0B1" >작성일</td>
    <td align="center" width="125" align="center">
	     <%= sdf.format(article.getReg_date())%></td>
  </tr>
  <tr height="30">
    <td align="center" width="125" bgcolor="#B7F0B1">글제목</td>
    <td align="center" width="375" align="center" colspan="3">
	     <%=article.getSubject()%></td>
  </tr>
  <tr>
    <td align="center" width="125" bgcolor="#B7F0B1">글내용</td>
    <td align="left" width="375" colspan="3">
    <%=article.getContent()%></td>
  </tr>
<!-- -------------------------------------- -->
<tr>
    <td align="center" width="125" bgcolor="#B7F0B1">첨부파일</td>
    <td align="left" width="375" colspan="3">&nbsp;
    <a href="download.jsp?num=<%=article.getNum()%>"><%=fileName %></a></td>
</tr>   
<!-- -------------------------------------- -->  
  <tr height="30">
    <td colspan="4" bgcolor="" align="right" > 
	  <input type="button" value="글수정" 
       onclick="document.contentEditFrm.submit()">
	   
	  <input type="button" value="글삭제" 
       onclick="document.contentDelFrm.submit()">
	   
      <!-- input type="button" value="답글쓰기old" onclick="document.location.href='writeForm.jsp?num=<%=num%>&ref=<%=ref%>&re_step=<%=re_step%>&re_level=<%=re_level%>'"-->
<input type="button" value="답글쓰기" onclick="document.contentReFrm.submit()">
	   
       <input type="button" value="글목록" 
       onclick="document.contentListFrm.submit()">
    </td>
  </tr>
</table>    
<%
 }catch(Exception e){} 
 %>
</form>
<!-- 글 내용 보기에 이동 form 시작 -->
<form name="contentListFrm" action="list.jsp" method="post">
	<input type="hidden" name="HTML_TITLE" value="목록 보기" >
	<input type="hidden" name="CENTER_PAGE" value="board/list.jsp" >
	<input type="hidden" name="pageNum" value="<%=pageNum%>" >
</form>
<form name="contentEditFrm" action="updateForm.jsp" method="post">
	<input type="hidden" name="HTML_TITLE" value="글수정" >
	<input type="hidden" name="CENTER_PAGE" value="board/updateForm.jsp" >
	<input type="hidden" name="pageNum" value="<%=pageNum%>" >
	<input type="hidden" name="num" value="<%=article.getNum()%>">
</form>
<form name="contentDelFrm" action="deleteForm.jsp" method="post">
	<input type="hidden" name="HTML_TITLE" value="글삭제" >
	<input type="hidden" name="CENTER_PAGE" value="board/deleteForm.jsp" >
	<input type="hidden" name="pageNum" value="<%=pageNum%>" >
	<input type="hidden" name="num" value="<%=article.getNum()%>">
</form>
<form name="contentReFrm" action="writeForm.jsp" method="post">
	<input type="hidden" name="HTML_TITLE" value="답글" >
	<input type="hidden" name="CENTER_PAGE" value="board/writeForm.jsp" >
	<input type="hidden" name="pageNum" value="<%=pageNum%>" >
	<input type="hidden" name="num" value="<%=article.getNum()%>">
	<input type="hidden" name="ref" value="<%=article.getRef()%>" >
	<input type="hidden" name="re_step" value="<%=article.getRe_step()%>" >
	<input type="hidden" name="re_level" value="<%=article.getRe_level()%>" >
</form>
<!-- 글 내용 보기에 이동 form 끝 -->

