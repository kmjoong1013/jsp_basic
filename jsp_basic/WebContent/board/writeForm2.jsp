<%@ page contentType="text/html; charset=euc-kr" %>
<% 
  int num=0,ref=1,re_step=0,re_level=0;

    if(request.getParameter("num")!=null){
	num=Integer.parseInt(request.getParameter("num"));
	ref=Integer.parseInt(request.getParameter("ref"));
	re_step=Integer.parseInt(request.getParameter("re_step"));
	re_level=Integer.parseInt(request.getParameter("re_level"));
	}
    
    String loginId = (String)session.getAttribute("loginId");
    if(loginId == null) loginId = "userid";
%>
<center><b>글쓰기</b>
<br>
<form method="post" name="writeform" action="writePro.jsp" onsubmit="return writeSave()"
 enctype="multipart/form-data" >
<input type="hidden" name="num" value="<%=num%>">
<input type="hidden" name="ref" value="<%=ref%>">
<input type="hidden" name="re_step" value="<%=re_step%>">
<input type="hidden" name="re_level" value="<%=re_level%>">

<table width="400" border="1" cellspacing="0" cellpadding="0"  bgcolor="" align="center">
  <tr>
    <td  width="70"  bgcolor="" align="center">아이디</td>
    <td  width="330">
       <input type="text" size="10" maxlength="10" name="writer" value="<%=loginId%>" readonly></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="" align="center" >제 목</td>
    <td  width="330">
    <%if(request.getParameter("num")==null){%>
       <input type="text" size="40" maxlength="50" name="subject">
	<%}else{%>
	   <input type="text" size="40" maxlength="50" name="subject" value="[답변]">
	<%}%>
	</td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="" align="center">Email</td>
    <td  width="330">
       <input type="text" size="40" maxlength="30" name="email" ></td>
  </tr>
  <tr>
    <td  width="70"  bgcolor="" align="center" >내 용</td>
    <td  width="330" >
     <textarea name="content" rows="13" cols="40"></textarea> </td>
  </tr>
<!-- ----------------------------------------- -->
  <tr>
    <td  width="70"  bgcolor="" align="center" >첨부파일</td>
    <td  width="330" >
     <input type="file" name="upFile"> 
	 </td>
  </tr>  
<!-- ---------------------------------------- -->    
  <tr>
    <td  width="70"  bgcolor="" align="center" >비밀번호</td>
    <td  width="330" >
     <input type="password" size="8" maxlength="12" name="passwd"> 
	 </td>
  </tr>
<tr>      
 <td colspan=2 bgcolor="" align="center"> 
  <input type="submit" value="글쓰기" >  
  <input type="reset" value="다시작성">
  <input type="button" value="목록보기" OnClick="document.writeListFrm.submit();">
</td></tr></table>    
    
</form>
<form name="writeListFrm" action="list.jsp" method="post">
	<input type="hidden" name="HTML_TITLE" value="글목록" >
	<input type="hidden" name="CENTER_PAGE" value="board/list.jsp" >
</form>

