<%-- 
    Document   : editarProductos
    Created on : 14-jul-2021, 19:53:42
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
                                            int idpro1 = Integer.parseInt(request.getParameter("idpro"));

                                            Connection cnx = null;
                                            Statement sta = null;
                                            ResultSet rs = null;

                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/erp?user=root&password=");

                                                sta = cnx.createStatement();
                                                rs = sta.executeQuery("select * from productos where id_prod=" + idpro1 + "");

                                                while (rs.next()) {
                                        %>
                                        <form action="">
                                            <h3 class="p-2">Editar Producto</h3>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">ID Producto</span>
                                                <input type="text" name="txtIDProducto" value="<%=rs.getString(1)%>" readonly=readonly class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">ID Categoria</span>
                                                <input type="text" name="txtIDCategoria" value="<%=rs.getString(2)%>" readonly=readonly class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">Descripcion del producto</span>
                                                <input type="text" name="txtDescripcionProducto" value="<%=rs.getString(3)%>" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">Nombre del producto</span>
                                                <input type="text" name="txtNombreProducto" value="<%=rs.getString(4)%>" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">Precio</span>
                                                <input type="text" name="txtPrecio" value="<%=rs.getString(5)%>" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">Stock del producto</span>
                                                <input type="text" name="txtStockProducto" value="<%=rs.getString(6)%>" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="col-12">
                                                <button type="submit" name="btnGrabar" class="btn btn-primary">Editar producto</button>
                                            </div>
                                        </form>
                                        <%
                                                }
                                            } catch (Exception e) {
                                            }

                                            if (request.getParameter("btnGrabar") != null) {
                                                int idpro = Integer.parseInt(request.getParameter("txtIDProducto"));
                                                int idcat = Integer.parseInt(request.getParameter("txtIDCategoria"));
                                                String desc = request.getParameter("txtDescripcionProducto");
                                                String nom = request.getParameter("txtNombreProducto");
                                                int pre = Integer.parseInt(request.getParameter("txtPrecio"));
                                                int sto = Integer.parseInt(request.getParameter("txtStockProducto"));

                                                sta.executeUpdate("update productos set id_categ_fk=" + idcat + ",descrip_prod='" + desc + "',nom_prod='" + nom + "',precio_prod=" + pre + ",stock_prod=" + sto + " where id_prod=" + idpro + "");
                                                request.getRequestDispatcher("verProductos.jsp").forward(request, response);
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
