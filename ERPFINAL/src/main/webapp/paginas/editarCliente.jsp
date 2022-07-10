<%-- 
    Document   : editarCliente
    Created on : 20-jul-2021, 17:00:48
    Author     : diego
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>Modulo Ventas</title>
    </head>
    <body style="width: auto; height: auto; font-family: currier;">
        <div class="container-fluid bg-dark" style="height: 15%; border-bottom: 1px solid gray;">
            <%@include file="includes/header.jsp" %>
        </div>
        <div id="main-container" style="width: 100%; height: 80%;">
            <div class="row" style="width: 100%; height: 100%;">
                <%@include file="includes/barralateral.jsp" %>
                <div class="col-10 rounded" style="background: #b8b6b6; margin-top: 5px; margin-bottom: 5px; border: 1px solid gray; ">
                    <div class="col-10" style="width: 84%;"><h3 class="border border-dark rounded" style="margin-top: 10px; margin-bottom: 10px; text-align: center; padding-top: 10px; padding-bottom: 10px; background: #BB561C; color: black; width: 1562px;">Modulo Ventas</h3>
                        <div class="row">
                            <div class="col-12" style="width: 100%;">
                                <nav class="d-flex navbar navbar-expand-lg navbar-light bg-dark rounded" style="width: 1562px;">
                                    <div class="container-fluid">
                                        <%@include file="includes/barradenavegacion.jsp" %>
                                    </div>
                                </nav>
                            </div>
                            <div class="col-12 pt-2">
                                <div class="col-12 pt-2"> 
                                    <div class="container-fluid p-5">
                                        <%
                                            String rut1 = request.getParameter("rut");

                                            Connection cnx = null;
                                            Statement sta = null;
                                            ResultSet rs = null;

                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/erp?user=root&password=");

                                                sta = cnx.createStatement();
                                                rs = sta.executeQuery("select * from cliente where rut_clie='" + rut1 + "'");

                                                while (rs.next()) {
                                        %>

                                        <form action="">
                                            <h3 class="p-2">Editar datos de cliente</h3>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">Rut del Cliente</span>
                                                <input type="text" name="txtRutCliente" value="<%=rs.getString(1)%>" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">Nombre del cliente</span>
                                                <input type="text" name="txtNombreCliente" value="<%=rs.getString(2)%>" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">Correo</span>
                                                <input type="text" name="txtCorreo" value="<%=rs.getString(3)%>" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">Direccion</span>
                                                <input type="text" name="txtDireccion" value="<%=rs.getString(4)%>" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">Telefono</span>
                                                <input type="text" name="txtTelefono" value="<%=rs.getString(5)%>" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div> 
                                            <div class="col-12">
                                                <button type="submit" name="btnGrabar" class="btn btn-primary">Editar cliente</button>
                                            </div>
                                        </form>
                                        <%
                                                }
                                            } catch (Exception e) {
                                            }

                                            if (request.getParameter("btnGrabar") != null) {
                                                String rut = request.getParameter("txtRutCliente");
                                                String nom = request.getParameter("txtNombreCliente");
                                                String cor = request.getParameter("txtCorreo");
                                                String dir = request.getParameter("txtDireccion");
                                                String tel = request.getParameter("txtTelefono");

                                                sta.executeUpdate("update cliente set nombre_clie='" + nom + "',correo='" + cor + "',direccion_clie='" + dir + "',telefono='" + tel + "' where rut_clie='" + rut + "'");
                                                request.getRequestDispatcher("verDatosClientes.jsp").forward(request, response);
                                            }
                                        %>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid bg-dark" style="border-top: 1px solid gray;">
            <%@include file="includes/footer.jsp" %>
        </div>
    </body>
</html>
