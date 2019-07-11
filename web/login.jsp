<%@ page import="com.sigua.model.User" %><%--
  Created by IntelliJ IDEA.
  User: 丝瓜
  Date: 2019-7-9
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登陆页面</title>
</head>
<body>

<%
Object msg = request.getAttribute("message");
if (msg!=null){
    out.println(msg);
}else {
    out.print("登陆页面");
}

%>
    <hr>
<%--<%--%>
<%--String username = request.getParameter("username");--%>
<%--String password = request.getParameter("password");--%>
<%--System.out.println(username+":"+password);--%>
<%--%>--%>

<%
    Object o = session.getAttribute("user");
    if (o!=null){
        User user = (User) o;
        out.print("当前登陆用户："+user.getUsername()+"</br>");

    }
%>

<form action="login_do.jsp" method="post">
    用户名：<input type="text" name="username"/><br>
    密码：<input type="password" name="password"/><br>
    <input type="submit">
</form>




</body>
</html>
