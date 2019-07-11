package com.sigua.servlet;

import com.sigua.util.DButil;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//@WebServlet("/register_do") //注解
public class RegisterServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
    }
}
