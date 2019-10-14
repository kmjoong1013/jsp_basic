<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "jsputil.bbs.*" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("euc-kr");%>

<jsp:useBean id="article" scope="page" class="jsputil.bbs.BoardVO">
   <jsp:setProperty name="article" property="*"/>
</jsp:useBean>
<%
 
    String pageNum = request.getParameter("pageNum");

	BoardDAO dbPro = BoardDAO.getInstance();
    int check = dbPro.updateArticle(article);

    if(check==1){
%>
	<!--meta http-equiv="Refresh" content="0;url=list.jsp?pageNum=<%=pageNum%>" -->
	<form name="boardListFrm" action="list.jsp" method="post">
		<input type="hidden" name="HTML_TITLE" value="글 목록" >
		<input type="hidden" name="CENTER_PAGE" value="board/list.jsp" >
		<input type="hidden" name="pageNum" value="<%=pageNum%>" >
	</form>
	<script>
		document.boardListFrm.submit();
	</script>
<% }else{%>
      <script language="JavaScript">      
        alert("비밀번호가 맞지 않습니다");
        history.go(-1);
     </script>
<%
    }
 %>
