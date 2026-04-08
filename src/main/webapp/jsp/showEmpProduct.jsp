<%@page import="com.example.demo.bean.Employeeproduct"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buy Product</title>
<link rel="stylesheet" href="assets/css/buy.css">
<style >
	body {
    font-family: Arial, sans-serif;
    background-color: #f5f7fa;
}

.title {
    text-align: center;
    margin: 20px 0;
}

.product-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
}

.product-card {
    width: 220px;
    background: #fff;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0,0,0,0.1);
    padding: 15px;
    text-align: center;
    transition: transform 0.2s;
}

.product-card:hover {
    transform: scale(1.05);
}

.product-card img {
    width: 100%;
    height: 160px;
    object-fit: cover;
    border-radius: 6px;
}

.product-card h3 {
    font-size: 16px;
    margin: 10px 0;
}

.price {
    color: green;
    font-size: 18px;
    font-weight: bold;
}

button {
    margin-top: 10px;
    background-color: #007bff;
    color: #fff;
    border: none;
    padding: 8px 15px;
    cursor: pointer;
    border-radius: 5px;
}

button:hover {
    background-color: #0056b3;
}
	
</style>
</head>
<body>

<h2 class="title">Buy Products</h2>

<div class="product-container">
<%
    ArrayList<Employeeproduct> list =
        (ArrayList<Employeeproduct>) session.getAttribute("EmpProductData");

    if (list != null) {
        for (Employeeproduct e : list) {
%>
    <div class="product-card">
        <img src="assets/img/<%=e.getImage()%>" alt="Product Image">
        <h3><%=e.getName()%></h3>
        <p class="price">₹ <%=e.getPrice()%></p>

        <form action="BuyProductController" method="post">
            <input type="hidden" name="id" value="<%=e.getId()%>">
            <button type="submit">Buy Now</button>
        </form>
    </div>
<%
        }
    }
%>
</div>

</body>
</html>
