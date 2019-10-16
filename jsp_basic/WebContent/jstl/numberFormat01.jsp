<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<c:set var="price" value="10000" />
<c:set var="buyRatio" value="0.03" />
<fmt:formatNumber value="${price }" type="number" var="numberType" />
숫자 : ${numberType}<br>
통화 : <fmt:formatNumber value="${price }" type="currency" currencySymbol="\\" /><br> 
퍼센트 :<fmt:formatNumber value="${buyRatio }" type="percent" groupingUsed="false" /><br>

</body>
</html>