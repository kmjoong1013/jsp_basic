<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jsputil.goods.*" %>
<%
	String title = "상품수정";
	String actionPage = "goodsUptProc.jsp";
	
	String code =request.getParameter("code");
	
	GoodsDAO goodsDAO = new GoodsDAO();
	GoodsVO goodsVO = goodsDAO.getGoodsInfo(code);
	
	String goodsColor = goodsVO.getColor();
	
%>
<html>
<head>
<title><%=title%></title>
</head>
<body>
	<form name="goodsInsFrm" action="<%=actionPage %>" method="post">
		<table align="center" border="1">
			<tr>
				<td>
					코드
				</td>
				<td>
					<input type="text" name="code" value="<%=goodsVO.getCode() %>" readonly>
					<input type="button" value="중복확인">
				</td>
			</tr>
			<tr>
				<td>
					상품명
				</td>
				<td>
					<input type="text" name="name" value="<%=goodsVO.getName()%>">
				</td>
			</tr>			
			<tr>
				<td>
					단가
				</td>
				<td>
					<input type="text" name="price" value="<%=goodsVO.getPrice()%>">
				</td>
			</tr>
			<tr>
				<td>
					색상
				</td>
				<td>
					<select name="color">
						<option value="">--선택--</option>
						<option value="red" <% if(goodsColor.equals("red")) out.print("selected"); %>>붉은색</option>
						<option value="white" <% if(goodsColor.equals("white")) out.print("selected"); %>>흰색</option>
						<option value="green" <% if(goodsColor.equals("green")) out.print("selected"); %>>녹색</option>
						<option value="blue" <% if(goodsColor.equals("blue")) out.print("selected"); %>>파란색</option>
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