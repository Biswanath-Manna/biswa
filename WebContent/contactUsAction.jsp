<%@page import="java.sql.*"%>
<%@page import="com.biswanath.ConnectionProvider"%>
<%
	String mname = request.getParameter("mname");
	String memail = request.getParameter("memail");
	String msubject = request.getParameter("msubject");	
	String mmessage = request.getParameter("mmessage");
	
	try
	{
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps = con.prepareStatement("insert into message values(?, ?, ?, ?)");
		ps.setString(1, mname);
		ps.setString(2, memail);
		ps.setString(3, msubject);
		ps.setString(4, mmessage);
		ps.executeUpdate();
		response.sendRedirect("contactUs.jsp?msg=valid");
	}
	catch(Exception e)
	{
		response.sendRedirect("contactUs.jsp?msg=valid");
	}














%>