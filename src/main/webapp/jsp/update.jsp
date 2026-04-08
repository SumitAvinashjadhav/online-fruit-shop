<%@page import="com.example.demo.bean.registerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
    body {
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(135deg, #f6d365 0%, #fda085 100%);
      min-height: 100vh;
      margin: 0;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .register-box {
      background: rgba(255, 255, 255, 0.9);
      backdrop-filter: blur(10px);
      padding: 40px;
      border-radius: 20px;
      width: 380px;
      box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
      animation: fadeIn 1s ease;
    }

    .register-box h2 {
      margin-bottom: 25px;
      color: #28a745;
      font-size: 26px;
      font-weight: 700;
      text-align: center;
    }

    .register-box label {
      display: block;
      margin-bottom: 6px;
      font-size: 14px;
      font-weight: 600;
      color: #000;
      text-align: left;
    }

    .register-box input,
    .register-box select {
      width: 100%;
      padding: 12px;
      margin-bottom: 18px;
      border: 1px solid #ccc;
      border-radius: 12px;
      font-size: 14px;
      color: #000;
      background: #fff;
      outline: none;
      transition: all 0.3s ease;
    }

    .register-box input:focus,
    .register-box select:focus {
      border: 2px solid #28a745;
      box-shadow: 0 0 8px rgba(40, 167, 69, 0.4);
    }

    .register-box button {
      width: 100%;
      padding: 12px;
      background: linear-gradient(135deg, #28a745, #218838);
      border: none;
      border-radius: 12px;
      font-size: 16px;
      font-weight: 600;
      color: #fff;
      cursor: pointer;
      transition: all 0.3s ease;
    }

    .register-box button:hover {
      background: linear-gradient(135deg, #218838, #1e7e34);
      transform: scale(1.05);
      box-shadow: 0 8px 20px rgba(40, 167, 69, 0.5);
    }

    .register-box p {
      margin-top: 15px;
      font-size: 14px;
      color: #000;
      text-align: center;
    }

    .register-box a {
      color: #28a745;
      text-decoration: none;
      font-weight: 600;
    }

    .register-box a:hover {
      text-decoration: underline;
      color: #000;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(-20px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>
	 <div class="register-box">
	 
    <h2>update Register Data</h2>
    <form action="updateData" >
    <% registerBean r=(registerBean)session.getAttribute("updateData"); %>
      <input type="hidden" name="id" value="<%=r.getId()%>">
    
      <label>Full Name</label>
      <input type="text" name="fullname"  value="<%=r.getFullname()%>">

      <label>Email</label>
      <input type="email" name="email" value="<%=r.getEmail()%>">

      <label>Password</label>
      <input type="password" name="password" value="<%=r.getPassword()%>">

      <label for="city">City:</label>
	    <select name="city" id="city">
	        <option value="Satara" <%= "Satara".equals(r.getCity()) ? "selected" : "" %>>Satara</option>
	        <option value="Pune" <%= "Pune".equals(r.getCity()) ? "selected" : "" %>>Pune</option>
	        <option value="Mumbai" <%= "Mumbai".equals(r.getCity()) ? "selected" : "" %>>Mumbai</option>
	    </select>
	    <br><br>

      <button type="submit">Update</button>
    </form>
  </div>
</body>
</html>