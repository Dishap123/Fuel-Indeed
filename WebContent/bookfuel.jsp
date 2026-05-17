<%@page import="java.sql.*" %>
<%@page import="com.disha.database.*" %>
<%@page import="com.disha.service.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
                    <div class="content">
                    <h3 class="title1">Assign Task</h3>
                    <div class="bs-example widget-shadow" data-example-id="hoverable-table">
                        <h4>Task Assignment:</h4>
                        <div class="table-container">
                            <%
                            	int bid=0;
                                int uid = Integer.parseInt(request.getParameter("uid"));
                                System.out.println("uid"+uid);
                                
                                int fid = Integer.parseInt(request.getParameter("fid"));
                                System.out.println("fid"+fid);
                                
                                String fueltype = request.getParameter("fueltype");
                                System.out.println("Fuel Type"+fueltype);
                                
                                int quantity = Integer.parseInt(request.getParameter("quantity"));
                                System.out.println("Quantity"+quantity);
                                String bstatus ="Pending";
                                int deliverycode = (int) (Math.random()*9000+1000);
                                String query = null;
                                
                                try {
                                	Connection con = ConnectDB.dbCon();
                                	
                                    if(fueltype.equals("Petrol")){
                                        query = "SELECT fpetrolrate FROM fuelstation WHERE fid = ?";
                                    } else if(fueltype.equals("Diesel")){
                                        query = "SELECT fdieselrate FROM fuelstation WHERE fid = ?";
                                    }
                                    
                                    PreparedStatement ps1 = con.prepareStatement(query);
                                    ps1.setInt(1,fid);
                                    ResultSet rs = ps1.executeQuery();
                                    if(rs.next()) {
                                        float rate = rs.getFloat(1);
                                        float bill = rate * quantity;

                                        PreparedStatement ps = con.prepareStatement("insert into booking (fid, uid, fueltype, quantity, bill, bstatus, deliverycode) values (?, ?, ?, ?, ?, ?, ?)");
            
                                        ps.setInt(1,fid);
                                        ps.setInt(2,uid);
                                        ps.setString(3,fueltype);
                                        ps.setInt(4,quantity);
                                        ps.setFloat(5,bill);
                                        ps.setString(6,bstatus);
                                        ps.setInt(7,deliverycode);
                                        

                                        int result = ps.executeUpdate();
                                        if(result > 0)
                                        {
                           				 %>
                            			<p>Booking successfully created! Your delivery code is <%= deliverycode %> and your total bill is <%= bill %> INR.</p>
                          			  <%
                                        }
                                        else
                                        {
                           				 %>
                            			<p>Failed to create booking. Please try again.</p>
                            			<%
                                        }
                                    } 
                                    else
                                    {
			                            %>
			                            <p>Failed to retrieve fuel rate. Please try again.</p>
			                            <%
                                    }
                                } 
                                catch (Exception e) {
                                    e.printStackTrace();
                            %>
                            <p>Exception occurred: <%= e.getMessage() %></p>
                            <%
                                }
                            %>
                            <a href="fuelstations_dashboard.jsp">Back to View Fuel Stations</a>
                        </div>
                    </div>
                </div>
          
        <!--footer-->
     
   

</body>
</html>