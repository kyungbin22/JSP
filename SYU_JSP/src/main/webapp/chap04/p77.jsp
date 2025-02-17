<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<%@ page import="java.util.Map" %>
<% 
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Request Parameter Test</title>
</head>
<body>
    <b>request.getParameter() 메서드 사용</b><br>
    name 파라미터 = <%= request.getParameter("name") %><br>
    address 파라미터 = <%= request.getParameter("address") %>
    <p>
    
    <b>request.getParameterValues() 메서드 사용</b><br>
    <% 
    String[] values = request.getParameterValues("pet");
    if (values != null) {
        for (String value : values) {
    %>
        <%= value %> <br>
    <% 
        }
    }
    %>
    <p>

    <b>request.getParameterNames() 메서드 사용</b><br>
    <%
    Enumeration<String> paramEnum = request.getParameterNames();
    while (paramEnum.hasMoreElements()) {
        String paramName = paramEnum.nextElement();
    %>
        <%= paramName %> <br>
    <%
    }
    %>
    <p>

    <b>request.getParameterMap() 메서드 사용</b><br>
    <%
    Map<String, String[]> parameterMap = request.getParameterMap();
    String[] nameParam = parameterMap.get("name");
    if (nameParam != null && nameParam.length > 0) {
    %>
        name = <%= nameParam[0] %>
    <%
    }
    %>
</body>
</html>
