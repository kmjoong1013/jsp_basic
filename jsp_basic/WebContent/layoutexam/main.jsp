<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String centerPage = request.getParameter("centerPage");
	if(centerPage == null) centerPage="sub/center.jsp";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function moveLayout(centerPage){
		location.href = 'main.jsp?centerPage='+centerPage;
	}
</script>
</head>
<body>
<table border="1" width="90%" height="500" align="center" >
	<tr height="70">
		<td colspan="2" align="left"><jsp:include page="sub/top.jsp"/></td>
	</tr>
	<tr  valign="top"> 
		<td width="180">
			<jsp:include page="sub/left.jsp"/>
		</td>
		<td>
			<jsp:include page="<%=centerPage%>"/>
		</td>
	</tr>
	<tr height="70">
		<td colspan="2"><jsp:include page="sub/bottom.jsp"/></td> 
	</tr>
</table>
</body>
</html>