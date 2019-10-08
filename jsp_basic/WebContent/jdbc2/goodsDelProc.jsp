<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page import="jsputil.goods.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	String code = request.getParameter("code");
	String name = request.getParameter("name");
	String s_price = request.getParameter("price");
	int price = Integer.parseInt(s_price);
	String color = request.getParameter("color");
	
	GoodsVO goods = new GoodsVO();
	goods.setCode(code);
	goods.setName(name);
	goods.setPrice(price);
	goods.setColor(color);
	
	// member
	GoodsDAO goodsDAO = new GoodsDAO();
	//goodsDAO.goodsDel(goods); 
%>
등록 완료 <br/>
<a href="goodsList.jsp">상품목록</a>
</body>
</html>