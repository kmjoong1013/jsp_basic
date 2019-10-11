<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsputil.goods.*" %>
<%@ page import="java.util.*" %>
<%
	GoodsDAO goodsDao = new GoodsDAO();
	List<GoodsVO> goodsList = goodsDao.getGoodsList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품구매  리스트</title>
</head>
<body>
<form>
	<table align="center" border="1" width="500">
		<tr>
			<td colspan="5">상품 구매 리스트</td>
		</tr>
		<tr>
			<td>코드</td>
			<td>상품명</td>
			<td>단가</td>
			<td>색상</td>
			<td>장바구니 추가</td>
		</tr>	
		<% if(goodsList.size()<=0){ %>
			
		<% }else { 
			for(int i=0; i<goodsList.size(); i++){
				GoodsVO goods = goodsList.get(i);
		%>
		<tr> 
			<td><%=goods.getCode() %></td>
			<td><%=goods.getName() %></td>
			<td><%=goods.getPrice() %></td>
		<td>
		<%
			if(goods.getColor().equals("red")){ 		%>
			   빨간색
		<%	}else if(goods.getColor().equals("white")){ %>
			 흰색
		<%	}else if(goods.getColor().equals("green")){ %>
			녹색
		<%	}else if(goods.getColor().equals("blue")){  %>
			파란색
		<% } %>
		</td>	
			<td><a href="main.jsp?centerPage=shop/shopListProc.jsp?code=<%=goods.getCode()%>">장바구니 추가하기</a></td>
		</tr>
			<% } %>
		<% } %>		
	</table>
</form>
	<br/>
	<center><a href="main.jsp?centerPage=sub/center.jsp">돌아가기</a></center>
	<br/>
</body>
</html>