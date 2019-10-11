<%@page import="jsputil.goods.GoodsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsputil.goods.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 목록</title>
</head>
<body>
장바구니 목록<br/>

<%
	Cookie cookies[] = request.getCookies();
%>

<%
	for(int i = 0; i<cookies.length; i++){
		out.print(cookies[i].getName());
		if(cookies[i].getName().equals("cart")){
						
			GoodsDAO goodsDao = new GoodsDAO();
			GoodsVO goodsVO = goodsDao.getGoodsInfo(cookies[i].getValue());
		%>
		
		상품코드: <%= goodsVO.getCode() %><br/>
		상품이름: <%= goodsVO.getName() %><br/>
		상품가격: <%= goodsVO.getPrice()%>
						
		<%}else { %>
		장바구니에 상품이 없습니다.
	<%}
	}
%>

</body>
</html>