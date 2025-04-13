<%
String username=request.getParameter("username");
String password=request.getParameter("password");
if("pratik@company.com".equals(username) && "password".equals(password))
{
	response.sendRedirect("home.jsp");
}
else{
	response.sendRedirect("adminLogin.jsp?msg=invalid");
}
%>