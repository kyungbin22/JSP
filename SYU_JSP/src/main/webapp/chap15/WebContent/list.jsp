<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import ="guestbook.moder.Message" %>
<%@ page import ="guestbook.service.MessageListView" %>
<%@ page import ="guestbook.service.GetMessageListService" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%

	String pageNumberStr = request.getParameter("page");
	int pageNumber = 1;
	if (pageNumberStr != null) {
	pageNumber = Integer.parseInt(pageNumberStr);
	}
	
	GetMessageListService messageListService =
	GetMessageListService.getInstance();
	MessageListView viewData = 
	messageListService.getMessageList(pageNumber);
%>
<c:set var="viewData" value="<%= viewData %> "/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="writeMessage.jsp" method="post">
이름: <input type="text" name="guestName"> <br>
암호: <input type="password" name="password"> <br>
메세지: <textarea name="message" cols="30" rows="3"></textarea><br>
<input type="submit" value="메세지 남기기" />
</form>
<hr>
<c:if test="${viewData.isEmpty()}">
등록된 메세지가 없습니다.
</c:if>

<c:if test="${!viewData.isEMpty()}">
<table border="1">
	<c:forEach var="message" items="$viewData.messageList}">
	<tr>
		<td>
		메세지 번호: ${message.id } <br/>
		손님이름: ${message.guestName } <br/>
		메세지: ${message.message } <br/>
		<a gref="confirmDeletion.jsp?messageId=${message.id}">[삭제하기]</a>
		</td>
	</tr>
	</c:forEach>
</table>

<c:forEach var="pageNum" begin="1" end="${viewData.pageTotalCount}">
<a href="list.jsp?page=${pageNum }">[${pageNum}]</a>
</c:forEach>
</c:if>
</body>
</html>