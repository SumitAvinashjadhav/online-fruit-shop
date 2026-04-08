<%@page import="com.example.demo.bean.registerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/">

	<!-- title -->
	<title>Fruitkha</title>

	<!-- favicon -->
	<link rel="shortcut icon" type="image/png" href="assets/img/favicon.png">
	<!-- google font -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
	<!-- fontawesome -->
	<link rel="stylesheet" href="assets/css/all.min.css">
	<!-- bootstrap -->
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
	<!-- owl carousel -->
	<link rel="stylesheet" href="assets/css/owl.carousel.css">
	<!-- magnific popup -->
	<link rel="stylesheet" href="assets/css/magnific-popup.css">
	<!-- animate css -->
	<link rel="stylesheet" href="assets/css/animate.css">
	<!-- mean menu css -->
	<link rel="stylesheet" href="assets/css/meanmenu.min.css">
	<!-- main style -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- responsive -->
	<link rel="stylesheet" href="assets/css/responsive.css">

</head>
<body>
<!-- header start -->
<div class="top-header-area" id="sticker">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-sm-12 text-center">
				<div class="main-menu-wrap">
					
					<!-- logo -->
					<div class="site-logo">
						<a href="index">
							<img src="assets/img/logo.png" alt="Logo">
						</a>
					</div>
					<!-- logo end -->

					<!-- menu start -->
					<nav class="main-menu">
						<ul>
							<li class="current-list-item"><a href="index">Home</a></li>
							<li><a href="about">About</a></li>
							<li><a href="shop">Shop</a></li>
							<li><a href="contact">Contact</a></li>
							<li><a href="news">News</a></li>
							<li>
								<div class="header-icons">
									 <%
										registerBean r = (registerBean) session.getAttribute("getname");
									 
										if (r != null) {
									%>
										<span style="color:white; font-weight:bold;">Welcome, <%= r.getFullname() %></span>
									<% } else { %>
										<a class="user-login ms-3" href="login">
										    <i class="fas fa-user"></i> Login
										</a>
									<% } %> 
									
									<a class="shopping-cart" href="cart"><i class="fas fa-shopping-cart"></i></a>
								</div>
							</li>
						</ul>
					</nav>
					<div class="mobile-menu"></div>
					<!-- menu end -->
				</div>
			</div>
		</div>
	</div>
</div>
<!-- header end -->
</body>
</html>