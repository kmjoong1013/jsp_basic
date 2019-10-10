<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="jsputil.goods.*" %>    
<%
// DAO VO를 이용해서 상품 정보를 insert하고 goodslist로 이동
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="goods" class="jsputil.goods.GoodsVO"></jsp:useBean>
<jsp:setProperty name="goods" property="code"  param="code"/>
<jsp:setProperty name="goods" property="price"  param="price"/>

<jsp:getProperty name="goods" property="code"/> 
<jsp:getProperty name="goods" property="price"/>
<%
	GoodsDAO goodsDao = new GoodsDAO();
	goodsDao.goodsIns(goods);
	//response.sendRedirect("goodsList.jsp");
%> 