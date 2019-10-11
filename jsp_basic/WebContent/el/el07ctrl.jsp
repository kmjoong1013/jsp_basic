<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="jsputil.goods.*"%> 
<%
	String code = request.getParameter("code");
	GoodsDAO goodsDAO = new GoodsDAO();
	GoodsVO goodsVO = goodsDAO.getGoodsInfo(code);
	
	request.setAttribute("goods", goodsVO);
%>
<jsp:forward page="${param.center}"></jsp:forward>