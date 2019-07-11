<%@ page import="com.sigua.model.User" %>
<%@ page import="com.sigua.util.DButil" %>
<%--
  Created by IntelliJ IDEA.
  User: 丝瓜
  Date: 2019-7-9
  Time: 19:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理登陆</title>
</head>
<body>
登陆处理页面
<br>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");

User user = DButil.verifyAccount(username, password);
if (user==null){
//    out.print("登陆失败,用户名或密码错误！");
    request.setAttribute("message", "登陆失败,用户名或密码错误！");
    request.getRequestDispatcher("login.jsp").forward(request,response);
}else {
//    out.print("登陆成功！");
    int number = 0;
    if (application.getAttribute("userNumber") != null){
        number = (Integer)application.getAttribute("userNumber");
    }

    number ++;

    application.setAttribute("userNumber", number);

    session.setAttribute("user", user);
    request.getRequestDispatcher("personCenter.jsp").forward(request, response);
}

%>

</body>
</html>
