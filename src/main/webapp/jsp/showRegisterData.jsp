<%@page import="com.example.demo.bean.registerBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
 
  <style>
    body {
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(135deg, #89f7fe 0%, #66a6ff 100%);
      min-height: 100vh;
      margin: 0;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .table-box {
      background: rgba(255, 255, 255, 0.95);
      backdrop-filter: blur(8px);
      padding: 30px;
      border-radius: 20px;
      width: 90%;
      max-width: 1000px;
      box-shadow: 0 12px 30px rgba(0, 0, 0, 0.2);
      animation: fadeIn 1s ease;
      overflow-x: auto;
    }

    .table-box h2 {
      margin-bottom: 20px;
      color: #007bff;
      font-size: 26px;
      font-weight: 700;
      text-align: center;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      font-size: 15px;
    }

    table thead {
      background: linear-gradient(135deg, #007bff, #0056b3);
      color: #fff;
    }

    table th, table td {
      padding: 12px 15px;
      border-bottom: 1px solid #ddd;
      text-align: center;
    }

    table tr:hover {
      background: rgba(0, 123, 255, 0.1);
      transition: 0.3s;
    }

    .action-btn {
      padding: 6px 12px;
      border-radius: 8px;
      font-size: 13px;
      font-weight: 600;
      border: none;
      cursor: pointer;
      margin: 0 3px;
      transition: all 0.3s ease;
    }

    .edit-btn {
      background: #ffc107;
      color: #000;
    }
    .edit-btn:hover {
      background: #e0a800;
    }

    .delete-btn {
      background: #dc3545;
      color: #fff;
    }
    .delete-btn:hover {
      background: #bd2130;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(-20px); }
      to { opacity: 1; transform: translateY(0); }
    }
  </style>
</head>
<body>
	<div class="table-box">
    <h2>Registered Users</h2>
    <table>
      <thead>
        <tr>
          <th>ID</th>
          <th>Full Name</th>
          <th>Email</th>
          <th>City</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <% ArrayList<registerBean> list =(ArrayList<registerBean>)session.getAttribute("getdata"); 
        	for(registerBean r: list){
        %>
        <tr>
          <td><%=r.getId() %></td>
          <td><%=r.getFullname() %></td>
          <td><%=r.getEmail() %></td>
          <td><%=r.getCity() %></td>
          <td>
            <a class="action-btn edit-btn" href="update?id=<%=r.getId() %>">Edit</a>
            <a class="action-btn delete-btn" href="delete?id=<%= r.getId() %>">Delete</a>
          </td>
        </tr>
        <%} %>
      </tbody>
    </table>
  </div>
</body>
</html>