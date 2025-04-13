<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%
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

    // ✅ Updated with column names
    String sql = "INSERT INTO donor (name, father, mother, mobilenumber, gender, email, bloodgroup, address) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    PreparedStatement ps = con.prepareStatement(sql);

    ps.setString(1, name);
    ps.setString(2, father);
    ps.setString(3, mother);
    ps.setString(4, mobilenumber);
    ps.setString(5, gender);
    ps.setString(6, email);
    ps.setString(7, bloodgroup);
    ps.setString(8, address);

    ps.executeUpdate();

    response.sendRedirect("addNewDonor.jsp?msg=valid");

} catch (Exception e) {
    // ✅ Print the actual error to server logs
    e.printStackTrace();

    // Optional: Show error message in debug mode (not recommended in production)
    // out.println("Error: " + e.getMessage());

    response.sendRedirect("addNewDonor.jsp?msg=invalid");
}
%>
