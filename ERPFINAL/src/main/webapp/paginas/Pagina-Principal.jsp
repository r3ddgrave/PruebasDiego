<%-- 
    Document   : Row-Col
    Created on : 11-jul-2021, 22:22:53
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <title>Menu Principal ERP</title>
    </head>
    <body style="width: auto; height: auto; font-family: currier;">
        <div class="container-fluid bg-dark" style="height: 15%; border-bottom: 1px solid gray;">
             <%@include file="includes/header.jsp" %>
        </div>
        <div id="main-container" style="width: 100%; height: 80%;">
            <div class="row" style="width: 100%; height: 100%;">
                <%@include file="includes/barralateral.jsp" %>
                <div class="col-10 rounded" style="background: #b8b6b6; margin-top: 10px; margin-bottom: 10px; border: 1px solid gray;">
                </div>
            </div>
        </div>
        <div class="container-fluid bg-dark" style="border-top: 1px solid gray;">
            <%@include file="includes/footer.jsp" %>
        </div>
    </body>
</html>
