<%-- 
    Document   : editarFacturaa
    Created on : 20-jul-2021, 17:03:31
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
                                            String idfact = request.getParameter("idfact");

                                            Connection cnx = null;
                                            Statement sta = null;
                                            ResultSet rs = null;

                                            try {
                                                Class.forName("com.mysql.jdbc.Driver");
                                                cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/erp?user=root&password=");

                                                sta = cnx.createStatement();
                                                rs = sta.executeQuery("select * from factura where id_factura='" + idfact + "'");

                                                while (rs.next()) {
                                        %>
                                        
                                        
                                        
                                        <form action="">
                                            <h3 class="p-2">Editar factura</h3>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">ID Factura</span>
                                                <input type="text" name="txtidFactura" value="<%=rs.getString(1)%>" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">ID Producto</span>
                                                <input type="text" name="txtidProducto" value="<%=rs.getString(2)%>"   class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">ID Venta</span>
                                                <input type="text" name="txtRutClienteFact" value="<%=rs.getString(3)%>"   class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">Descripcion de la venta</span>
                                                <input type="text" name="txtDescVentaFact" value="<%=rs.getString(4)%>"   class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">Cantidad de productos</span>
                                                <input type="text" name="txtCantProdFact" value="<%=rs.getString(5)%>"   class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">Monto</span>
                                                <input type="text" name="txtMonto" value="<%=rs.getString(6)%>"   class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">Descuentos</span>
                                                <input type="text" name="txtDescuentoFact" value="<%=rs.getString(7)%>"   class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="input-group mb-3">
                                                <span class="input-group-text" id="inputGroup-sizing-default">Total</span>
                                                <input type="text" name="txttotal" value="<%=rs.getString(8)%>"   class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default">
                                            </div>
                                            <div class="col-12">
                                                <button type="submit"  name="btnGrabar" class="btn btn-primary">Guardar Cambios</button>
                                            </div>
                                        </form>
                                        <%    
                                          }
                                            } catch (Exception e) {
                                            }

                                             if(request.getParameter("btnGrabar")!=null){ 
                                            String idfact1=request.getParameter("txtidFactura");
                                            String idprod=request.getParameter("txtidProducto");
                                            String rutcliefact=request.getParameter("txtRutClienteFact");
                                            String descvent=request.getParameter("txtDescVentaFact");
                                            String cantprodfact=request.getParameter("txtCantProdFact");
                                            String mont=request.getParameter("txtMonto");
                                            String descfact=request.getParameter("txtDescuentoFact");
                                            String total=request.getParameter("txttotal");
                                            
                                                

                                                sta.executeUpdate("update factura set id_prod_fk=" +idprod +  ",id_venta_fl=" + rutcliefact + "',descripcion_venta='" + descvent + ",cantidad_prod=" + cantprodfact + " ,monto='" + mont + ",descuentos=" + descfact + ",total=" + total + " where id_factura=" + idfact1+"          ");
                                                request.getRequestDispatcher("verFacturas.jsp").forward(request, response);
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
