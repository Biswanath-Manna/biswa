
<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	if ("biswa".equals(username) && "biswa".equals(password)) {
		response.sendRedirect("home.jsp");
	} else {
		response.sendRedirect("adminLogin.jsp?msg=invalid");
	}
%>