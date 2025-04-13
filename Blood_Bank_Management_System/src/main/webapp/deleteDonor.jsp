<%@ page import="java.sql.*" %>
<%@ page import="Project.ConnectionProvider" %>
<%
int id = Integer.parseInt(request.getParameter("id"));

try {
    Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement("DELETE FROM donor WHERE id=?");
    ps.setInt(1, id);
    ps.executeUpdate();
    response.sendRedirect("viewDonors.jsp");
} catch (Exception e) {
    e.printStackTrace();
    out.println("Error deleting donor.");
}
%>
