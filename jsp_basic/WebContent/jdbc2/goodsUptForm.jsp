<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="jsputil.goods.*" %>
<%
	String code = request.getParameter("code");

	GoodsDAO goodsDAO = new GoodsDAO();
	GoodsVO goods = goodsDAO.getGoodsInfo(code);
	if(goods == null) goods = new GoodsVO();
	
	String title = "상품수정";
	String actionPage = "goodsUptProc.jsp";
%>
<html>
<head>
<title><%=title%></title>
<script type="text/javascript">
	function goGoodsList() {
		location.href = '/jsp_basic/jdbc2/goodsList.jsp';
	}
	function openDup(){
		var win = window.open("codeDup.html","","width=400,height=500");
	}
</script>
</head>
<body>
	<form name="goodsInsFrm" action="<%=actionPage %>" method="post">
		<table align="center" border="1">
			<tr>
				<td>
					코드
				</td>
				<td>
					<input type="text" name="code" value="<%=code%>">
					<input type="button" value="중복확인" onclick="openDup()">
				</td>
			</tr>
			<tr>
				<td>
					상품명
				</td>
				<td>
					<input type="text" name="name" value="<%=goods.getName()%>">
				</td>
			</tr>			
			<tr>
				<td>
					단가
				</td>
				<td>
					<input type="text" name="price" value="<%=goods.getPrice()%>">
				</td>
			</tr>
			<tr>
				<td>
					색상
				</td>
				<td>
					<select name="color" value="<%=goods.getColor()%>">
						<option value="">--선택--</option>
						<option value="red" >붉은색</option>
						<option value="white" >흰색</option>
						<option value="green" >녹색</option>
						<option value="blue" >파란색</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="5"><input type="submit" value="등록"></td>
			</tr>	
		</table>
	</form>
<a href="goodsList.jsp">상품리스트</a>	
</body>
</html>