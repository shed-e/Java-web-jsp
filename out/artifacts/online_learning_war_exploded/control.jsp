<%@ page import="java.util.List" %>
<%@ page import="com.entity.Courses" %>
<%@ page import="com.dao.Coudao" %>
<%@ page import="com.dao.Coudaoimpl" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 31359
  Date: 2020/6/14
  Time: 11:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <title>admin</title>

    <script>
        function onc() {
            alert("${message}");
        }
    </script>

    <style>

        a{text-decoration:none}

        a:hover{text-decoration:none}

    </style> <!--去除超链接下划线-->

</head>
<body>

<div class="clear"></div>
<div>
    <span><a href="home.jsp">Sign Out</a></span>
    <span><h1 style="text-align: center">List of all courses</h1></span>
</div>
<table width="1000" border="2" cellpadding="0" style="text-align: center;margin:auto" >
    <tr>
        <td>Course ID</td>
        <td>Course Name</td>
        <td>Course Fees</td>
        <td>operations</td>
    </tr>
    <%
        List<Courses> clist=new Coudaoimpl().getcourses();
        for (Courses co:clist)
        {%>
    <form action="UpdateServlet" method="post">
        <tr>
          <td><input type="text" value="<%=co.getId()%>" name="id" ></td>
          <td><input type="text" value="<%=co.getName()%>" name="name" ></td>
          <td><input type="text" value="<%=co.getFees()%>" name="fees" ></td>
          <td><a href="DeleteServlet?id=<%=co.getId()%>" onclick="onc()">Delect Courses</a> <input type="submit" value="Update Courses" onclick="onc()">
          </td>
        </tr>
    </form>
    <%}%>
    <form method="post" action="AddcouServlet">
        <tr>
            <td><input type="text" name="id" required=""> </td>
            <td><input type="text" name="name" required=""> </td>
            <td><input type="text" name="fees" required=""> </td>
            <td><input type="submit" value="Add Courses" onclick="onc()"> </td>
        </tr>
    </form>


</table>

</body>
</html>

