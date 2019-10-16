<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:bundle basename="jsputil.bundle.message">
	<fmt:message key="name" var="name" />	
	<fmt:message key="message" var="msg" />
	<fmt:message key="TITLE" var="title"/>
</fmt:bundle>
<html>
<head>
<title>${title }</title>
</head>
<body>

name : ${name} - msg : ${msg} <br>
<hr>
<fmt:setBundle basename="jsputil.bundle.message" var="setBundleData"/>

<fmt:message bundle="${setBundleData}" key="name" var="bundle_name"/>
<fmt:message bundle="${setBundleData}" key="message" var="bundle_message"/>
name : ${bundle_name } - msg :  ${bundle_message}
</body>
</html>