<%@ page contentType = "text/html; charset=euc-kr" %>
<%@ page import = "jsputil.bbs.*" %>
<%@ page import = "java.util.List" %>
<%@ page import = "java.text.SimpleDateFormat" %>
 <script type="text/javascript">
 /*
window.attachEvent("onload",function() {
  var arr=document.all.tags("a");
  for (var i=0; i<arr.length; i++) {
    arr[i].onmouseover=function() {
      return true;
    }
  }
});
*/
</script>
<%
  
	SimpleDateFormat sdf = 
	new SimpleDateFormat("yyyy-MM-dd");
	
	String pageNum = request.getParameter("pageNum");
	if (pageNum == null) {
		pageNum = "1";
	}

    int pageSize = 10;
  
    int currentPage = Integer.parseInt(pageNum);
    int startRow = (currentPage - 1) * pageSize +1;
    //int endRow = currentPage * pageSize;
    int endRow = pageSize;
    int count = 0;
    int number=0;

    List<BoardVO> articleList = null;
    BoardDAO dbPro = BoardDAO.getInstance();
    count = dbPro.getArticleCount();
    if (count > 0) {
        //articleList = dbPro.getArticles(startRow, startRow+pageSize);
    	articleList = dbPro.getArticles(startRow, pageSize);
    }

	number=count-(currentPage-1)*pageSize;
%>
<script>
	function goFnBBs(frm, num){
		frm.num.value = num;
		frm.submit();
	}
	function goFnBBsList(frm, page){
		frm.pageNum.value = page;
		frm.submit();
	}
</script>	
<center><b>글목록(전체 글:<%=count%>)</b>
<%
    if (count == 0) {
%>
<table width="700" border="1" cellpadding="0" cellspacing="0">
<tr>
    <td align="center">
    게시판에 저장된 글이 없습니다.
    </td>
</table> 

<%  } else {    %>
<table border="1" width="700" cellpadding="0" cellspacing="0" align="center"> 
    <tr height="30" bgcolor="#B7F0B1"> 
      <td align="center"  width="50"  >번 호</td> 
      <td align="center"  width="250" >제   목</td> 
      <td align="center"  width="100" >작성자</td>
      <td align="center"  width="150" >작성일</td> 
      <td align="center"  width="50" >조 회</td> 
    </tr>
<%  
        for (int i = 0 ; i < articleList.size() ; i++) {
          BoardVO article = (BoardVO)articleList.get(i);
%>
   <tr height="30">
    <td align="center"  width="50" > <%=number--%></td>
    <td  width="250" >
	<%
	      int wid=0; 
	      if(article.getRe_level()>0){
	        wid=5*(article.getRe_level());
	%>
	  <img src="level.gif" width="<%=wid%>" height="16">
	  <img src="re.gif">
	<%}else{%>
	  <img src="level.gif" width="<%=wid%>" height="16">
	<%}%>
           
<a href="#" onClick="goFnBBs(document.boardContentFrm,<%=article.getNum()%>)"><%=article.getSubject()%></a> 
          <% if(article.getReadcount()>=20){%>
         <img src="hot.gif" border="0"  height="16"><%}%> </td>
    <td align="center"  width="100"><%=article.getWriter()%></td>
    <td align="center"  width="150"><%=sdf.format(article.getReg_date()) %></td>
    <td align="center"  width="50"><%=article.getReadcount()%></td>
  </tr>
     <%}%>
</table>
<%}%>
 
<%
    if (count > 0) {
        int pageCount = count / pageSize + ( count % pageSize == 0 ? 0 : 1);
        int pageBlock=5;
        int startPage = (int)(currentPage/pageBlock)*pageBlock+1;
		
        int endPage = startPage + pageBlock-1;
        if (endPage > pageCount) endPage = pageCount;
        
        if (startPage > pageBlock) {    %>
        	<a href='#' onClick='goFnBBsList(document.boardListFrm,<%= startPage - pageBlock %>)'>[이전]</a>
<%      }
        for (int i = startPage ; i <= endPage ; i++) {  %>
        <a href="#" onClick="goFnBBsList(document.boardListFrm,<%= i %>)">[<%= i %>]</a>
<%
        }
        if (endPage < pageCount) {  %>
        <a href="#" onClick="goFnBBsList(document.boardListFrm,<%= startPage + pageBlock %>)">[다음]</a>
<%
        }
    }
	
%>
<table width="700">
<tr>
    <td align="right" bgcolor="#D4F4FA">
    <a href="#" onClick="boardWriteFrm.submit()" status="test" onFocus="window.status='tes';" onfocus=blur() >글쓰기</a>
    </td>
</table>

<!-- 페이지 이동 form 시작 -->
<form name="boardContentFrm" action="content.jsp" method="post">
	<input type="hidden" name="HTML_TITLE" value="글 내용" >
	<input type="hidden" name="CENTER_PAGE" value="board/content.jsp" >
	<input type="hidden" name="num">
	<input type="hidden" name="pageNum" value="<%=currentPage%>" >
</form>
<form name="boardListFrm" action="list.jsp" method="post">
	<input type="hidden" name="HTML_TITLE" value="글 목록" >
	<input type="hidden" name="CENTER_PAGE" value="board/list.jsp" >
	<input type="hidden" name="pageNum" value="" >
</form>
<form name="boardWriteFrm" action="writeForm.jsp" method="post">
	<input type="hidden" name="HTML_TITLE" value="글 쓰기" >
	<input type="hidden" name="CENTER_PAGE" value="board/writeForm.jsp" >
	<input type="hidden" name="pageNum" value="" >
</form>
<!-- 페이지 이동 form 끝 -->
