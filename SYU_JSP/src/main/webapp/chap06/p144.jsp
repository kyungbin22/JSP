<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage = "true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
요청 처리 과정에서 에러가 발생하였습니다. <br>
빠른시간 내에 문제를 해결
<p>
에러타입: <%= exception.getClass().getName()  %><br>
에러메세지: <b><%= exception.getMessage() %></b>
</body>
</html>