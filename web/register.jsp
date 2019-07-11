<%@ page import="com.sigua.model.User" %><%--
  Created by IntelliJ IDEA.
  User: 丝瓜
  Date: 2019-7-9
  Time: 19:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
</head>
<body>

<%
    Object o = session.getAttribute("user");
    if (o!=null){
        User user = (User) o;
        out.print("当前登陆用户："+user.getUsername()+"</br>");

    }
%>

<form action="register_do" method="post">
    用户名：<input type="text" name="username"/><br>
    密码：<input type="password" name="password"/><br>
    年龄：<input type="text" name="age"/><br>
    性别：男<input type="radio" name="sex" value="男"/>女<input type="radio" name="sex" value="女"/><br>
    <input type="submit" value="注册">
</form>

</body>
</html>
