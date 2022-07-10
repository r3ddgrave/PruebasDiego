<%-- 
    Document   : eliminarCliente
    Created on : 20-jul-2021, 19:38:27
    Author     : diego
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%

            String rut = request.getParameter("rut");

            Connection cnx = null;
            ResultSet rs = null;
            Statement sta = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/erp?user=root&password=");

                sta = cnx.createStatement();

                sta.executeUpdate("delete from cliente where rut_clie='" + rut + "'");
                request.getRequestDispatcher("verDatosClientes.jsp").forward(request, response);
                sta.close();
                rs.close();
                cnx.close();
            } catch (Exception e) {
                out.print(e + "");
            }

        %>
    </body>
</html>
