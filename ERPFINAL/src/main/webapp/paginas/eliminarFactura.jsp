<%-- 
    Document   : eliminarFactura
    Created on : 21-07-2021, 2:03:03
    Author     : ricar
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

            String idfact = request.getParameter("idfact");

            Connection cnx = null;
            ResultSet rs = null;
            Statement sta = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/erp?user=root&password=");

                sta = cnx.createStatement();

                sta.executeUpdate("delete from factura where id_factura='" + idfact + "'");
                request.getRequestDispatcher("verFacturas.jsp").forward(request, response);
                sta.close();
                rs.close();
                cnx.close();
            } catch (Exception e) {
                out.print(e + "");
            }

        %>
    </body>
</html>
