<%@page import="jsputil.product.ProductVO"%>
<%@page import="jsputil.product.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String code = request.getParameter("code");
	Cookie cookie = new Cookie("cart", code);
	response.addCookie(cookie);
	ProductDAO productDAO = new ProductDAO();
	ProductVO productVO = productDAO.getProduct(code);
%>
상품명 : <%=productVO.getName() %> <br>
상품코드 : <%=productVO.getCode() %><br>
상품가격 : <%=productVO.getPrice() %><br>
장바구니에 저장
<a href = "cookie2.jsp">상품목록</a>
</body>
</html>