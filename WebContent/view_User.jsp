<%@page import="java.sql.*" %>
<%@page import="com.disha.database.*" %>
<%@page import="com.disha.service.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Reminder List</title>
<link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
<style>
  body {
    background-color: #f0f0f0; /* Light gray background */
  }
  .container {
    margin-top: 50px;
  }
  table {
    background: white;
  }
</style>
</head>
<body>
<div class="container">
  <h1 class="text-center mb-4" style="color: #4a4a4a;">User Details</h1>
  <table class="table table-bordered table-hover">
    <thead class="thead-light">
      <tr>
        <th>Name</th>
        <th>Contact</th>
        <th>Email</th>
        <th>City</th>
        <th>Address</th>
        <th>Pincode</th>
      </tr>
    </thead>
    <tbody>
	<%
	try
	{
		Connection con = ConnectDB.dbCon();
		PreparedStatement ps = con.prepareStatement("select * from user");
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{%>
			<tr>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(6)%></td>
				<td><%=rs.getString(7)%></td>
				<td><%=rs.getString(8)%></td>
			</tr>
			
		<% }
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
		
</table>

</body>
</html>