<%-- 
    Document   : agregarTrabajador
    Created on : 20-jul-2021, 16:46:25
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
                                        <form action="">
                                            <h3 class="p-2">Agregar nuevo trabajador</h3>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">ID Trabajador</span>
                                                <input type="text" name="txtIDtrabajador" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">ID rol del trabajador</span>
                                                <input type="text" name="txtidroltrabajador" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">Nombre</span>
                                                <input type="text" name="idnombre" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">Apellido</span>
                                                <input type="text" name="txtapellido" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="col-12">
                                                <button type="submit" name="btnGrabar" class="btn btn-primary">Guardar</button>
                                            </div>
                                        </form>

                                        <%
                                            if (request.getParameter("btnGrabar") != null) {
                                                int idtrab = Integer.parseInt(request.getParameter("txtIDtrabajador"));
                                                int idrol = Integer.parseInt(request.getParameter("txtidroltrabajador"));
                                                String nom = request.getParameter("idnombre");
                                                String ape = request.getParameter("txtapellido");

                                                Connection cnx = null;
                                                ResultSet rs = null;
                                                Statement sta = null;

                                                try {
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/erp?user=root&password=");

                                                    sta = cnx.createStatement();

                                                    sta.executeUpdate("insert into trabajador values(" + idtrab + ", " + idrol + ",'" + nom + "','" + ape + "'");
                                                    request.getRequestDispatcher("verTrabajadores.jsp").forward(request, response);
                                                    sta.close();
                                                    rs.close();
                                                    cnx.close();
                                                } catch (Exception e) {
                                                    out.print(e + "");
                                                }
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
