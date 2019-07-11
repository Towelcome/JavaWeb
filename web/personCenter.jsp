<%@ page import="com.sigua.model.User" %><%--
  Created by IntelliJ IDEA.
  User: 丝瓜
  Date: 2019-7-10
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>PersonCenter</title>
</head>
<body>
<%
    User user = (User)session.getAttribute("user");
%>

用户名：<%=user.getUsername()%> <br>
密码：<%=user.getPassword()%> <br>
年龄：<%=user.getAge()%> <br>
性别：<%=user.getSex()%> <br>

</body>
</html>
