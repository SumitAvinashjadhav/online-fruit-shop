<%@page import="com.example.demo.bean.EmployeeContact"%>
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
		<h2>Contact Show</h2>

<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Message</th>
    </tr>
	<%
		ArrayList<EmployeeContact> list=(ArrayList<EmployeeContact>)session.getAttribute("getcontactdata");
		for(EmployeeContact e:list){
	%>
  
    <tr>
        <td><%=e.getId() %></td>
        <td><%=e.getName() %></td>
        <td><%=e.getEmail() %></td>
        <td><%=e.getSubject() %></td>
        <td><%=e.getMessage() %></td>
    </tr>
   <%} %>
</table>

</body>
</html>