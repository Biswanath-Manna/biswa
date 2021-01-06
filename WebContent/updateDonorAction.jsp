<%@page import="java.sql.*"%>
<%@page import="com.biswanath.ConnectionProvider"%>
<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String father = request.getParameter("father");
	String mother = request.getParameter("mother");
	String mobilenumber = request.getParameter("mobilenumber");
	//String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	//String bloodgroup = request.getParameter("bloodgroup");
	String address = request.getParameter("address");
	
	try
	{
		Connection con = ConnectionProvider.getCon();
		PreparedStatement ps = con.prepareStatement("update donor set name=?, father=?, mother=?, mobilenumber=?, email=?, adderss=? where id=?");
		
		ps.setString(1, name);
		ps.setString(2, father);
		ps.setString(3, mother);
		ps.setString(4, mobilenumber);
		//ps.setString(5, gender);
		ps.setString(5, email);
		//ps.setString(7, bloodgroup);
		ps.setString(6, address);
		ps.setString(7, id);
		int i = ps.executeUpdate();
		if(i > 0)
		{
			response.sendRedirect("editDeleteList.jsp?msg=valid");
		}
		else
		{
			response.sendRedirect("editDeleteList.jsp?msg=invalid");
		}
		
		
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>