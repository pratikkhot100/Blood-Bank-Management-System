<%@ page import="java.sql.*" %>
<%@ page import="Project.ConnectionProvider" %>
<%
int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String father = request.getParameter("father");
String mother = request.getParameter("mother");
String mobilenumber = request.getParameter("mobilenumber");
String gender = request.getParameter("gender");
String email = request.getParameter("email");
String bloodgroup = request.getParameter("bloodgroup");
String address = request.getParameter("address");

try {
    Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement(
        "UPDATE donor SET name=?, father=?, mother=?, mobilenumber=?, gender=?, email=?, bloodgroup=?, address=? WHERE id=?"
    );
    ps.setString(1, name);
    ps.setString(2, father);
    ps.setString(3, mother);
    ps.setString(4, mobilenumber);
    ps.setString(5, gender);
    ps.setString(6, email);
    ps.setString(7, bloodgroup);
    ps.setString(8, address);
    ps.setInt(9, id);
    ps.executeUpdate();

    response.sendRedirect("viewDonors.jsp");

} catch (Exception e) {
    e.printStackTrace();
    out.println("Error updating donor.");
}
%>
