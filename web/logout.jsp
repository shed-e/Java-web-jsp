<%--
  Created by IntelliJ IDEA.
  User: 31359
  Date: 2020/6/10
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>MyVersity.com</title>
</head>
<body>
<%
    session.removeAttribute("username");
    response.sendRedirect("home.jsp");
%>

</body>
</html>
