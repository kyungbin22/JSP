<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action = "deleteMessage.jsp" method="post">
<input type="hidden" name="messssageId" value="${param.messageId}">
메세지를 삭제하시려면 암호를 입력:<br>
암호: <input type="password" name="password"> <br>
<input type="submit" value="메세지 삭제">
</form>

</body>
</html>