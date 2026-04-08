<%@page import="com.example.demo.bean.product"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
    <title>Add Product</title>
     <style>
    body {
      font-family: Arial, sans-serif;
      background: #f5f5f5;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      margin: 0;
    }
    .form-container {
      background: #fff;
      padding: 25px;
      border-radius: 10px;
      box-shadow: 0 5px 15px rgba(0,0,0,0.2);
      width: 400px;
    }
    h2 {
      text-align: center;
      margin-bottom: 20px;
      color: #333;
    }
    label {
      font-weight: bold;
      display: block;
      margin-bottom: 5px;
      color: #555;
    }
    input, textarea, select {
      width: 100%;
      padding: 10px;
      margin-bottom: 15px;
      border: 1px solid #ddd;
      border-radius: 5px;
      outline: none;
    }
    input:focus, textarea:focus, select:focus {
      border-color: #4CAF50;
    }
    button {
      width: 100%;
      padding: 12px;
      background: #4CAF50;
      color: #fff;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
    }
    button:hover {
      background: #45a049;
    }
  </style>
</head>
<body>
    <div class="form-container">
    
    <h2>Add Product</h2>
    <form action="insertproduct" >
   
      <label for="image">Product Image</label>
      <input type="file" id="image" name="image" accept="image/*">
      
      <label for="name">Product Name</label>
      <input type="text" id="name" name="name" placeholder="Enter product name" required>

      <label for="price">Price</label>
      <input type="number" id="price" name="price" placeholder="Enter product price" step="0.01" required>
	
      <button type="submit">Add Product</button>
    </form>
  </div>
</body>
</html>
