<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jsputil.product.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="cookie02a.jsp" method="post">
	<table>
		<tr>
			<td><input type="radio"  value="A-100" name="code">냉장고</td><td>100000</td>
		</tr>
		<tr>
			<td><input type="radio"  value="B-101" name="code">LCD TV</td><td>200000</td>
		</tr>
		<tr>
			<td><input type="radio"  value="C-200" name="code">컴퓨터</td><td>120000</td>
		</tr>				
		<tr>
			<td><input type="radio"  value="D-100" name="code">로봇청소기</td><td>190000</td>
		</tr>		
		<tr>
			<td colspan="2"><input type="submit" value="선택"></td>
		</tr>		
	</table>
	</form>
	<hr>
	<table>
		<tr><td>선택한 상품</td></tr>
		<tr>
			<td>
		<%
		/*
		A-100  냉장고
		B-101  LCD TV
		C-200  컴퓨터
		D-100  로봇청소기
		E-111  나이스운동화
		*/
		
			Cookie cookies[] = request.getCookies();
			String name = null;
			int cookie_len = 0;
			if(cookies != null) {
				cookie_len = cookies.length;
			}
			for(int i = 0; i < cookie_len; i++){
				name = cookies[i].getName();
				if(name.equals("cart")){
					out.print(cookies[i].getValue());
					ProductDAO productDao = new ProductDAO(); 
					ProductVO product = productDao.getProduct(cookies[i].getValue());
		%> 
				<%=product.getName() %>:<%=product.getPrice() %>
		<%
				}else {
					out.println("&nbsp;");
				}
			}
		%>
			</td>
		</tr>
	</table>	
</body>
</html>