<%@page import="com.example.demo.bean.RegisterEmp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Simple Navbar</title>

<style>
    body {
        margin: 0;
        font-family: Arial, sans-serif;
    }

    .navbar {
        background-color: #333;
        overflow: hidden;
        padding: 10px 20px;
    }

    .navbar a {
        color: white;
        text-decoration: none;
        padding: 10px 15px;
        float: left;
    }

    .navbar a:hover {
        background-color: #575757;
        border-radius: 4px;
    }

    .right {
        float: right;
        color: white;
        font-weight: bold;
    }
</style>
</head>

<body>

<div class="navbar">
    <a href="home">Home</a>
    <a href="registerEmp">Register</a>
    <a href="addEmpProuct">add Product</a>
    <a href="showEmpProduct">Showproduct</a>

    <div class="right">
        <%
            RegisterEmp r = (RegisterEmp) session.getAttribute("getname");
            if (r != null) {
        %>
            Welcome, <%= r.getName() %>
            <a href="logout">Logout</a>
        <%
            } else {
        %>
            <a href="Elogin">Login</a>
        <%
            }
        %>
    </div>
</div>

</body>
</html>
