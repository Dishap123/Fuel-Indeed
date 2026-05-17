
<%@page import="java.sql.*" %>
<%@page import="com.disha.database.*" %>
<%@page import="com.disha.service.*" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<title>Indian Fuel</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
 
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<div class="main-content">
		<!--left-fixed -navigation-->
		<div class=" sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
					<ul class="nav" id="side-menu">
						<li>
							<a href="update_fuelAvailable.html"><i class="fa fa-table nav_icon"></i>Update Fuel Availability</a>
						</li>
						<li>
							<a href="update_fuelRate.html"><i class="fa fa-table nav_icon"></i>Update Fuel Rates</a>
						</li>
						<li>
							<a href="add_deliveryPerson.html"><i class="fa fa-table nav_icon"></i>Add Delivery Person</a>
						</li>
						<li>
							<a href="view_deliveryPerson.jsp"><i class="fa fa-table nav_icon"></i>View Delivery Person</a>
						</li>
						<li>
							<a href="pending_booking.jsp"><i class="fa fa-table nav_icon"></i>View Pending Booking</a>
						</li>
						<li>
							<a href="view_assignBooking.jsp"><i class="fa fa-table nav_icon"></i>View Assigned Booking</a>
						</li>
						
						<li>
							<a href="#"><i class="fa fa-table nav_icon"></i>View Delivered Booking</a>
						</li>
						<li>
							<a href="view_rejectedBooking.jsp"><i class="fa fa-table nav_icon"></i>View Rejected Booking</a>
						</li>
						<li>
							<a href="change_passwordFuelStation.html"><i class="fa fa-table nav_icon"></i>Change Password</a>
						</li>
						
					</ul>
					<div class="clearfix"> </div>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<!--logo -->
				<div class="logo">
					<a href="index.html">
						<h1>INDIA FUEL</h1>
						<span>AdminPanel</span>
					</a>
				</div>
				<!--//logo-->
				
				<div class="clearfix"> </div>
			</div>
			
			
			
			<div class="header-right">
				<div class="profile_details_left"><!--notifications of menu start -->
					
					
					
					
					<div class="clearfix"> </div>
				</div>
				<!--notification menu end -->
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="images/a.png" alt=""> </span> 
									<div class="user-name">
										<p>Welcome</p>
										<span>Admin</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="index.html"><i class="fa fa-sign-out"></i> Logout</a> </li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>	
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page">
				<div class="forms">
		<div class="Damini">
		
		
		 <style>
        body {
            background-color: #f0f0f0; /* Light gray background */
        }
        .container {
            margin-top: 50px;
        }
        .content-right {
            margin-left: 250px; /* Adjust this value based on your sidebar width */
            padding: 20px;
        }
        table {
            background: white;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="content-right">
            <h1 class="text-center mb-4" style="color: #4a4a4a;">Delivery Person</h1>
            <table class="table table-bordered table-hover">
                <thead class="thead-light">
                    <tr>
      <th>Fuel Station ID</th>
        <th>Name</th>
        <th>Contact</th>
        <th>Email</th>
        <th>City</th>
        <th>Address</th>
        <th>Pincode</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
	<%
	try
	{
		Connection con = ConnectDB.dbCon();
		PreparedStatement ps = con.prepareStatement("select * from dperson");
		ResultSet rs = ps.executeQuery();
		while(rs.next())
		{%>
			<tr>
				<td><%=rs.getInt(2) %>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
				<td><%=rs.getString(7)%></td>
				<td><%=rs.getString(8)%></td>
				<td><a href="view_deliveryPerson.jsp?dpid=<%=rs.getInt(1)%>">Delete</a></td>
			</tr>
			
		<% }
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
		
</table>
   
   
   
   <% 
   try
   {
	   String dpid=request.getParameter("dpid");
	   
	   
	   Connection con=ConnectDB.dbCon();
	  PreparedStatement ps=con.prepareStatement("delete from dperson where dpid=?");
	  ps.setString(1,dpid);
	int i=  ps.executeUpdate();
	
	if(i>0){
		response.sendRedirect("fuelstation_dashboard.html");
	}
	else{
		System.out.println("erro");
	}
	  
   }
   catch(Exception e)
   {
	   e.printStackTrace();
   }
   %>
   
   </div>
    </div>
		
	</div>	
	</div>	
	</div>	
		
		
		
		
		
		</div>
		
	</div>
	<!-- Classie -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.js"> </script>
</body>
</html>