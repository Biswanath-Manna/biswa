<%@page import="java.sql.*"%>
<%@page import="com.biswanath.ConnectionProvider"%>
<%@include file="header.html"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
</style>
</head>
<body>
<%
	String id = request.getParameter("id");
try
{
	Connection con = ConnectionProvider.getCon();
	//PreparedStatement ps = con.prepareStatement("select * from donor where id='"+id+"'");
	//ResultSet rs = ps.executeQuery();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from donor where id='"+id+"'");
	while(rs.next())
	{
%>
<div clas="container">
<form action="updateDonorAction.jsp" method="post">
	<input type="hidden" name="id" value="<% out.println(id); %>">
	
	<h1>Name</h1>
	<input type="text" value="<%= rs.getString(2) %>" name="name">
	<hr>
	
	<h1>Father Name</h1>
	<input type="text" value="<%= rs.getString(3) %>" name="father">
	<hr>
	
	<h1>Mother Name</h1>
	<input type="text" value="<%= rs.getString(4) %>" name="mother">
	<hr>
	
	<h1>Mobile Number</h1>
	<input type="number" value="<%= rs.getString(5) %>" name="mobilenumber">
	<hr>
	
	<h1>Email</h1>
	<input type="email" value="<%= rs.getString(7) %>" name="email">
	<hr>
	
	<h1>Address</h1>
	<input type="text" value="<%= rs.getString(9) %>" name="address">
	<br>
	
	<center><button type="submit" class="button">Save</button></center> 
	
</form>
</div>
<% 
	}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
<br>
<br>
<br>
<br>
<h3><center>All Right Reserved @ BTech Days :: 2020  </center></h3>

</body>
</html>