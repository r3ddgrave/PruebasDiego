<%-- 
    Document   : index
    Created on : 10-jul-2021, 2:16:46
    Author     : diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link href="../css/signin.css" rel="stylesheet" type="text/css"/>
        <title>Inicio de Sesión ERP</title>
    </head>
    <body class="text-center" style="background: #F29C46; padding-top: 50px; padding-bottom: 50px; padding-left: 80px; padding-right: 80px;">
        <main class="form-signin rounded" style="background: #f9f7f7; border: 4px solid black; width: 1300px; height: 600px;">
            <form action="/UsuarioController">
                <img class="mb-4 mt-4" src="https://i.imgur.com/mCHCOJP.png" alt="" width="180" height="150">
                <h1 class="h3 mb-4 fw-normal" style="color: black;">Ingrece Credenciales</h1>
                <div class="form-floating">
                    <input type="email" class="form-control" id="floatingInput" style="background: #F29C46; border: 1px solid black" placeholder="name@example.com">
                    <label for="floatingInput" style="color: black;">Correo</label>
                </div>
                <div class="form-floating">
                    <input type="password" class="form-control" id="floatingPassword" style="background: #F29C46; border: 1px solid black" placeholder="Password">
                    <label for="floatingPassword" style="color: black;">Contraseña</label>
                </div>
                <a href="Pagina-Principal.jsp" class="btn btn-lg" style="background: #F29C46; border: 1px solid black;"><span class="glyphicon glyphicon-user"></span> Iniciar Sesi&oacute;n </a>
                <p class="mt-5" style="color: black;">&copy; Inacap ERP 2021</p>
            </form>
        </main>
    </body>
</html>
