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
<ul>
<c:choose>
	<c:when test="${param.name == 'bk'}" >
		<li> 당신의 이름은 ${param.name} 입니다.
	</c:when>
	<c:when test="${param.age > 20}">
		W<li> 당신으 20세 이상입니다.
	</c:when>
	<c:otherwise>
		<li> 당신은 'bk'가 아니고 20세 이상이 아닙니다.
	</c:otherwise>
</c:choose>
</ul>
</body>
</html>