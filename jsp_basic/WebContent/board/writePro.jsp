<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "jsputil.bbs.*" %>
<%@ page import = "java.sql.Timestamp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*" %>

<% request.setCharacterEncoding("euc-kr");
BoardVO article = null;
File file = null;
try{
	article = new BoardVO();
	int num = Integer.parseInt(request.getParameter("num"));
	int ref = Integer.parseInt(request.getParameter("ref"));
	int re_step = Integer.parseInt(request.getParameter("re_step"));
	int re_level = Integer.parseInt(request.getParameter("re_level"));
	article.setNum(num);
	article.setRef(ref);
	article.setRe_step(re_step);
	article.setRe_level(re_level);
	article.setWriter(request.getParameter("writer"));
	article.setSubject(request.getParameter("subject"));
	article.setEmail(request.getParameter("email"));
	article.setContent(request.getParameter("content"));
	article.setPasswd(request.getParameter("passwd"));
	article.setFilePath(file.getAbsolutePath());	 
}catch(Exception ex){
	out.println(ex);
}
article.setIp(request.getRemoteAddr());
BoardDAO dbPro = BoardDAO.getInstance();
dbPro.insertArticle(article);
%>
<form name="writeListFrm" action="list.jsp" method="post">
	<input type="hidden" name="HTML_TITLE" value="±Û ¸ñ·Ï" >
	<input type="hidden" name="CENTER_PAGE" value="board/list.jsp" >
</form>
<script>
	document.writeListFrm.submit();
</script>

