<%@page import="jsputil.goods.GoodsDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsputil.goods.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 상품 확인</title>
</head>
<body>
<%
	String code = request.getParameter("code");

	Cookie cookie = new Cookie("cart", code);
	cookie.setPath("/layoutexam");
	out.print("path:"+cookie.getPath());
	out.print("age:"+cookie.getMaxAge());
	out.print("name:"+cookie.getName());
	out.print("value:"+cookie.getValue());
	response.addCookie(cookie);

	GoodsDAO goodsDao = new GoodsDAO();
	GoodsVO goodsVO = goodsDao.getGoodsInfo(code);
		
%>

상품명 : <%=goodsVO.getName() %><br/>
가격 : <%=goodsVO.getPrice() %><br/>
색상 : <%=goodsVO.getColor() %><br/>

<a href="main.jsp?centerPage=shop/shopList.jsp">취소</a><br/>
<a href="main.jsp?centerPage=shop/cart.jsp">장바구니에 담기</a><br/>
</body>
</html>