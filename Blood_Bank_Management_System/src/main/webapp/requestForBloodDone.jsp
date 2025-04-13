<%@page import="Project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String mobilenumber=request.getParameter("mobilenumber");
try
{
    Connection con=ConnectionProvider.getCon();
    PreparedStatement ps=con.prepareStatement("update bloodrequest set status='completed' where mobilenumber=?");
    ps.setString(1,mobilenumber);
    ps.executeUpdate();
    response.sendRedirect("requestForBlood.jsp");
}
catch(Exception e)
{
    response.sendRedirect("requestForBlood.jsp");
}
%>