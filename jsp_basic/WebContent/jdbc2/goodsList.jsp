<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsputil.goods.*" %>
<%@ page import="java.util.*" %>
<%
	GoodsDAO goodsDao = new GoodsDAO();
	List<GoodsVO> goodsList = goodsDao.getGoodsList();
%>    
<html>
<head>
<title>상품 리스트</title>
</head>
<body>
	<table align="center" border="1" width="500">
		<tr>
			<td colspan="5">상품 리스트</td>
		</tr>
		<tr>
			<td>코드</td>
			<td>상품명</td>
			<td>단가</td>
			<td>색상</td>
			<td>수정/삭제</td>
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
			<td><%=goods.getColor() %></td>
			<td><a href="goodsUptForm.jsp?mode=upt&code=<%=goods.getCode()%>">수정</a>/삭제</td>
		</tr>
			<% } %>
		<% } %>		
	</table>
<a href="goodsInsForm.jsp">상품등록</a>	
</body>
</html>