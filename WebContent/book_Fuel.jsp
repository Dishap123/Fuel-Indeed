<%@page import="java.sql.*" %>
<%@page import="com.disha.database.*" %>
<%@page import="com.disha.service.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            padding: 170px;
        }
        .container {
            max-width: 400px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        input[type="text"], input[type="number"], input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Create Booking</h2>
        <form action="bookfuel.jsp" method="post">
        
           
              <%
                                    int fid = 0;
                                 String fidParam = request.getParameter("fid");
                              if (fidParam != null && !fidParam.trim().isEmpty()) {
                                     fid = Integer.parseInt(fidParam);
                                    }
                                %>
                                <input type="hidden" name="fid" value="<%= fid %>">
                                <input type="hidden" name="uid" value="<%=Station.getUid() %>">
                                <label for="fueltype">Select Fuel Type:</label>
                                <select id="fueltype" name="fueltype" required>
                                    <option value="Petrol">Petrol</option>
                                    <option value="Diesel">Diesel</option>
                                </select>
                                <label for="quantity">Quantity (in Litres):</label>
                                <input type="number" id="quantity" name="quantity" min="1" required>
                                <button type="submit">Book</button>
                            </form>
                        </div>

  
       
    </div>
    
</body>
</html>