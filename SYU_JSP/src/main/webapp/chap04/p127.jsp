<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
char[] buff = new char[128];
int len = -1;
String filePath = "C:\\Users\\kyungbin\\git\\jsp\\SYU_JSP\\src\\main\\webapp\\message\\notice.txt";
try(InputStreamReader fr = new InputStreamReader(new FileInputStream(filePath), "UTF-8")) {
	while ((len = fr.read(buff)) != -1) {
		out.print(new String(buff,0, len));
	}
}catch(IOException ex) {
	out.println("익셉션 발생:"+ex.getMessage());
}
%>
</body>
</html>