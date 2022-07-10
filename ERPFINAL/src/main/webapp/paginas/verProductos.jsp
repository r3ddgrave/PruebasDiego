<%-- 
    Document   : verProductos
    Created on : 14-jul-2021, 19:48:54
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
                                <div class="col-12 pt-2" style="width: auto; height: auto; "> 
                                    <div class="h3 rounded" style="background:#F29C46; border: 1px solid black;">Productos</div>
                                    <div class="table-responsive">
                                        <table class="table  table-bordered table-sm" style="border: 1px solid black;">
                                            <thead class="table-dark">
                                                <tr>
                                                    <th colspan="6"> Mantemiento</th>
                                                    <th><a href="agregarProducto.jsp">
                                                            <img src="iconos/agregarr.png" style="width: 30px; height: 30px;"></a></th>
                                                </tr>
                                                <tr>
                                                    <th>ID Producto</th>
                                                    <th>ID Categoria</th>
                                                    <th>Descripcion del Producto</th>
                                                    <th>Nombre del Producto</th>
                                                    <th>Precio del producto</th>
                                                    <th>Stock del Producto</th>
                                                    <th>Accion</th>
                                                </tr>
                                            </thead>
                                            <%
                                                Connection cnx = null;
                                                Statement sta = null;
                                                ResultSet rs = null;

                                                try {
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/erp?user=root&password=");

                                                    sta = cnx.createStatement();
                                                    rs = sta.executeQuery("select * from productos");

                                                    while (rs.next()) {
                                            %>
                                            <tbody style="border-color: black; background: white;">
                                                <tr>
                                                    <td><%=rs.getString(1)%></td>
                                                    <td><%=rs.getString(2)%></td>
                                                    <td><%=rs.getString(3)%></td>
                                                    <td><%=rs.getString(4)%></td>
                                                    <td><%=rs.getString(5)%></td>
                                                    <td><%=rs.getString(6)%></td>
                                                    <td>
                                                        <a href="editarProductos.jsp?idpro=<%=rs.getString(1)%>">
                                                            <img src="iconos/editar.png" style="width: 25px; height: 25px;"> ||
                                                        </a>
                                                        <a href="eliminarProducto.jsp?idpro=<%=rs.getString(1)%>">
                                                            <img src="iconos/eliminar.png" style="width: 25px; height: 25px;">
                                                        </a>
                                                    </td>
                                                </tr>
                                                <%
                                                        }
                                                        sta.close();
                                                        rs.close();
                                                        cnx.close();
                                                    } catch (Exception e) {

                                                    }
                                                %>
                                            </tbody>
                                        </table>
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