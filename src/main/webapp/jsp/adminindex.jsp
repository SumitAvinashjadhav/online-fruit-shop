<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Admin Panel - Fruitkha</title>
  <style>
    body {
      margin: 0;
      font-family: 'Poppins', sans-serif;
      background: #f4f6f9;
    }

    /* Sidebar */
    .sidebar {
      position: fixed;
      left: 0;
      top: 0;
      width: 220px;
      height: 100%;
      background: linear-gradient(135deg, #007bff, #0056b3);
      color: #fff;
      padding-top: 20px;
      box-shadow: 2px 0 10px rgba(0,0,0,0.2);
    }

    .sidebar h2 {
      text-align: center;
      margin-bottom: 30px;
      font-size: 22px;
      font-weight: bold;
    }

    .sidebar a {
      display: block;
      padding: 12px 20px;
      color: #fff;
      text-decoration: none;
      font-size: 15px;
      transition: all 0.3s ease;
    }

    .sidebar a:hover {
      background: rgba(255,255,255,0.2);
      padding-left: 30px;
    }

    /* Header */
    .header {
      margin-left: 220px;
      background: #fff;
      padding: 15px 25px;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
      display: flex;
      justify-content: space-between;
      align-items: center;
    }

    .header h1 {
      font-size: 20px;
      color: #333;
      margin: 0;
    }

    .header .logout {
      background: #dc3545;
      color: #fff;
      padding: 8px 14px;
      border-radius: 6px;
      text-decoration: none;
      font-size: 14px;
      transition: 0.3s;
    }
    .header .logout:hover {
      background: #bd2130;
    }

    /* Content */
    .content {
      margin-left: 220px;
      padding: 25px;
    }

    .cards {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 20px;
    }

    .card {
      background: #fff;
      padding: 20px;
      border-radius: 15px;
      box-shadow: 0 5px 15px rgba(0,0,0,0.1);
      text-align: center;
      transition: 0.3s;
    }
    .card:hover {
      transform: translateY(-5px);
    }

    .card h3 {
      margin-bottom: 10px;
      font-size: 18px;
      color: #007bff;
    }

    .card p {
      font-size: 14px;
      color: #555;
    }
  </style>
</head>
<body>

  <!-- Sidebar -->
  <div class="sidebar">
    <h2>Admin Panel</h2>
    <a href="index.jsp">Dashboard</a>
    <a href="showRegisterData">Manage Users</a>
    <a href="showcontact">View contact</a>
    <a href="addproduct">Manage Products</a>
    <a href="showOrder">Manage Orders</a>
    <a href="settings.jsp">Settings</a>
  </div>

  <!-- Header -->
  <div class="header">
    <h1>Welcome, Admin</h1>
    <a href="logout.jsp" class="logout">Logout</a>
  </div>

  <!-- Content -->
  <div class="content">
    <div class="cards">
      <div class="card">
        <h3>Total Users</h3>
        <p>150</p>
      </div>
      <div class="card">
        <h3>Total Products</h3>
        <p>85</p>
      </div>
      <div class="card">
        <h3>Total Orders</h3>
        <p>320</p>
      </div>
      <div class="card">
        <h3>Revenue</h3>
        <p>₹1,25,000</p>
      </div>
    </div>
  </div>

</body>
</html>
