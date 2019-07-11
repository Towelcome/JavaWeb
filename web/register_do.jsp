<%@ page import="com.sigua.util.DButil" %><%--
  Created by IntelliJ IDEA.
  User: 丝瓜
  Date: 2019-7-9
  Time: 19:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理注册页面</title>
</head>
<body>
    处理注册页面
    <br>
<%
String username = request.getParameter("username");
String password = request.getParameter("password");
int age = Integer.parseInt(request.getParameter("age"));
String sex = new String(request.getParameter("sex").getBytes("iso-8859-1"),"utf-8");


boolean isSuccess = DButil.addUser(username, password, age, sex);
if (isSuccess){
    request.setAttribute("message", "注册成功，请登录！");
    request.getRequestDispatcher("login.jsp").forward(request, response);
}else {
    request.setAttribute("message", "用户名重复，请选择其他用户名！");
    request.getRequestDispatcher("login.jsp").forward(request, response);
}

%>







<%--
if (isSuccess){
//    out.print("<font color='green'>注册成功</font>");
    %>

    <font color='green'>恭喜你！用户名：<%=username%>注册成功</font>

    <%
}else {
//    out.print("<font color='red'>注册失败</font>");
    %>

    <font color='red'>注册失败</font>

    <%
}
%>
--%>

</body>
</html>
