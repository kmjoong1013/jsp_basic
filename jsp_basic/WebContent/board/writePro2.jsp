<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "jsputil.bbs.*" %>
<%@ page import = "java.sql.Timestamp" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*" %>

<% request.setCharacterEncoding("euc-kr");

String realPath = (String)application.getRealPath("/"); // ���� ���
String saveDir = realPath+"upload"; // ���ε�� ����
String encType = "euc-kr"; // ���ڵ� Ÿ��
int maxSize = 5*1024*1024; // upload file max size 5Mega
MultipartRequest mRequest = null;
BoardVO article = null;
File file = null;
try{
	// ���� ��ý ���� 
	mRequest = new MultipartRequest(request, saveDir, maxSize,encType, new DefaultFileRenamePolicy());
	
	article = new BoardVO();
	
	file = mRequest.getFile("upFile");
	int num = Integer.parseInt(mRequest.getParameter("num"));
	int ref = Integer.parseInt(mRequest.getParameter("ref"));
	int re_step = Integer.parseInt(mRequest.getParameter("re_step"));
	int re_level = Integer.parseInt(mRequest.getParameter("re_level"));
	article.setNum(num);
	article.setRef(ref);
	article.setRe_step(re_step);
	article.setRe_level(re_level);
	article.setWriter(mRequest.getParameter("writer"));
	article.setSubject(mRequest.getParameter("subject"));
	article.setEmail(mRequest.getParameter("email"));
	article.setContent(mRequest.getParameter("content"));
	article.setPasswd(mRequest.getParameter("passwd"));
	article.setFilePath(file.getAbsolutePath());	 
}catch(IOException e){
	out.println(e);
}catch(Exception ex){
	out.println(ex);
}
//article.setIp(request.getRemoteAddr());
article.setIp("");
BoardDAO dbPro = BoardDAO.getInstance();
dbPro.insertArticle(article);
%>
<form name="writeListFrm" action="list.jsp" method="post">
	<input type="hidden" name="HTML_TITLE" value="�� ���" >
	<input type="hidden" name="CENTER_PAGE" value="board/list.jsp" >
</form>
<script>
	document.writeListFrm.submit();
</script>

