<%@ page import="com.example.demo.bean.contactBean" %>
<%@ page import="java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Data</title>
<style>
    body {
        font-family: "Segoe UI", Arial, sans-serif;
        background-color: #f5f6fa;
        margin: 0;
        padding: 40px;
    }

    h2 {
        text-align: center;
        color: #2f3640;
        margin-bottom: 20px;
    }

    table {
        width: 90%;
        margin: 0 auto;
        border-collapse: collapse;
        background-color: #fff;
        box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        border-radius: 10px;
        overflow: hidden;
    }

    th, td {
        text-align: left;
        padding: 12px 15px;
        border-bottom: 1px solid #ddd;
    }

    th {
        background-color: #273c75;
        color: white;
        text-transform: uppercase;
        font-size: 14px;
        letter-spacing: 0.05em;
    }

    tr:hover {
        background-color: #f1f2f6;
        transition: background-color 0.3s;
    }

    td {
        font-size: 15px;
        color: #2f3640;
    }

    .no-data {
        text-align: center;
        padding: 20px;
        color: #888;
    }
</style>
</head>
<body>
    <h2>Contact Messages</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Mobile</th>
            <th>Subject</th>
            <th>Message</th>
        </tr>
        <%
            ArrayList<contactBean> list = (ArrayList<contactBean>) session.getAttribute("getContactData");
            if (list != null && !list.isEmpty()) {
                for (contactBean c : list) {
        %>
        <tr>
            <td><%= c.getId() %></td>
            <td><%= c.getName() %></td>
            <td><%= c.getEmail() %></td>
            <td><%= c.getPhone() %></td>
            <td><%= c.getSubject() %></td>
            <td><%= c.getMessage() %></td>
        </tr>
        <% 
                }
            } else {
        %>
        <tr>
            <td colspan="6" class="no-data">No contact records found.</td>
        </tr>
        <% } %>
    </table>
</body>
</html>
