<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		 <h2>Add Product</h2>

    <form action="addpData" >

        <!-- Image URL -->
        <label for="image">Product Image</label>
      <input type="file" id="image" name="image" accept="image/*">

        <!-- Product Name -->
        <label>Product Name</label>
        <input type="text" name="name" required>

        <!-- Product Price -->
        <label>Product Price</label>
        <input type="number" name="price" step="0.01" required>

        <button type="submit">Add Product</button>
    </form>
</body>
</html>