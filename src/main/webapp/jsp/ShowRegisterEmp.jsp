<%@page import="com.example.demo.bean.RegisterEmp"%>
<%@page import="com.example.demo.bean.registerBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2 >Employee Data</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Password</th>
    </tr>

    <%
       ArrayList<RegisterEmp> list=(ArrayList<RegisterEmp>)session.getAttribute("getRegisterData");
    	for(RegisterEmp r:list){
    %>
    <tr>
        <td><%= r.getId() %></td>
        <td><%= r.getName() %></td>
        <td><%= r.getEmail() %></td>
        <td><%= r.getPassword() %></td>
    </tr>
   
<%} %>
</table>
	
</body>
</html>