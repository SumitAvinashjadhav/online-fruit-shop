<%@page import="com.example.demo.bean.orderBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Orders</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 30px;
        }

        table {
            width: 90%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0,0,0,0.2);
        }

        th, td {
            padding: 12px 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #28a745;
            color: white;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #d1e7dd;
        }
    </style>
</head>
<body>
    <h2>My Orders</h2>
    
    <table>
        <tr>
            <th>Order ID</th>
            <th>Product ID</th>
            <th>Address</th>
            <th>Name</th>
            <th>Mobile No</th>
            <th>Quantity</th>
        </tr>
        
        <% 
        ArrayList<orderBean> list = (ArrayList<orderBean>) session.getAttribute("orderData"); 
        if(list != null){
            for(orderBean o : list){
        %>
            <tr>
                <td><%=o.getOrderId() %></td>
                <td><%=o.getProductId() %></td>
                <td><%=o.getAddress() %></td>
                <td><%=o.getName() %></td>
                <td><%=o.getMobilenumber() %></td>
                <td><%=o.getQuantity() %></td>
            </tr>
        <% 
            }
        } 
        %>
    </table>
</body>
</html>
