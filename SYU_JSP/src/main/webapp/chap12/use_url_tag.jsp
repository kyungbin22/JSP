<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:url value="http://sesarch.daum.get.net/search" var="searchUrl">
	<c:param name="w" value="blog"/>
	<c:param name="q" value="공원" />
</c:url>

<ul>
	<li>${searchUrl}</li>
	<li><c:url value="/use_if_tag.jsp" /></li>
	<li><c:url value="./use_if_tag.jsp" /></li>
</ul>
</body>
</html>