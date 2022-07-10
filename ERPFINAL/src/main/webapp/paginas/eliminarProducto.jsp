<%-- 
    Document   : eliminarProducto
    Created on : 21-jul-2021, 0:53:26
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

            int idpro = Integer.parseInt(request.getParameter("idpro"));

            Connection cnx = null;
            ResultSet rs = null;
            Statement sta = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/erp?user=root&password=");

                sta = cnx.createStatement();

                sta.executeUpdate("delete from productos where id_prod='" + idpro + "'");
                request.getRequestDispatcher("verProductos.jsp").forward(request, response);
                sta.close();
                rs.close();
                cnx.close();
            } catch (Exception e) {
                out.print(e + "");
            }

        %>
    </body>
</html>
