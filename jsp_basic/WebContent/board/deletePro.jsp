<%@ page contentType="text/html;charset=euc-kr" %>
<%@ page import = "jsputil.bbs.*" %>
<%@ page import = "java.sql.Timestamp" %>

<% request.setCharacterEncoding("euc-kr");%>

<%
  int num = Integer.parseInt(request.getParameter("num"));
  String pageNum = request.getParameter("pageNum");
  String passwd = request.getParameter("passwd");

  BoardDAO dbPro = BoardDAO.getInstance();
  int check = dbPro.deleteArticle(num, passwd);

  if(check==1){
%>
	<!--meta http-equiv="Refresh" content="0;url=list.jsp?pageNum=<%=pageNum%>" -->
	<form name="contentdelFrm" action="list.jsp" method="post">
		<input type="hidden" name="HTML_TITLE" value="�۸��" >
		<input type="hidden" name="CENTER_PAGE" value="board/list.jsp" >
		<input type="hidden" name="pageNum" value="<%=pageNum%>" >
	</form>
	<script>
		document.contentdelFrm.submit();
	</script>
<% }else{%>
       <script language="JavaScript">      
         alert("��й�ȣ�� ���� �ʽ��ϴ�");
         history.go(-1);
      </script>
<%
    }
 %>
