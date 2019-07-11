<%@ page import="com.sigua.model.User" %><%--
  Created by IntelliJ IDEA.
  User: 丝瓜
  Date: 2019-7-9
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>

<html>

  <head>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <title>Java web</title>
  </head>

  <body>

<%--  <% int count = 1;%>--%>
<%--  <% String a = "哈哈哈哈";%>--%>
<%--  <%--%>
<%--    out.print("你好世界");--%>
<%--  %>--%>
<%--  <%--%>
<%--    System.out.println("Hello world");--%>
<%--    out.print(count);--%>

<%--  <%--%>
<%--    String username = request.getParameter("username");--%>
<%--    String password = request.getParameter("password");--%>
<%--    System.out.println(username);--%>
<%--    System.out.println(password);--%>
<%--  %>--%>


<%--  登陆--%>
<%--  <form action="login.jsp" method="post">--%>
<%--    <input type="text" name="username"/>--%>
<%--    <input type="password" name="password"/>--%>
<%--    <input type="submit">--%>
<%--  </form>--%>

<%
Object o = session.getAttribute("user");
if (o!=null){
    User user = (User) o;
    out.print("当前登陆用户："+user.getUsername()+"</br>");
}
%>

<%
Object o2 = application.getAttribute("userNumber");
if (o2 != null){
    out.println("当前登陆用户数量："+o2+"<br/>");
}
%>

  <a href="login.jsp">登陆</a> <a href="register.jsp">注册</a>



  </body>
</html>
