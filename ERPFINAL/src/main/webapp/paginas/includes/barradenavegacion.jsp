<%-- 
    Document   : barradenavegacion
    Created on : 20-jul-2021, 16:07:10
    Author     : diego
--%>

<div class="collapse navbar-collapse" id="navbarSupportedContent" >
    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item dropdown border border-dark rounded" style="background: #F29C46; margin: 5px;">
            <a class="nav-link dropdown-toggle" style="color: black; margin-right: 5px;" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Ventas/Detalles
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="verDetallesVentas.jsp">Ver detalles de las ventas</a></li>
            </ul>
        </li>
        <li class="nav-item dropdown border border-dark rounded" style="background: #F29C46; margin: 5px; margin-left: 20px;">
            <a class="nav-link dropdown-toggle" style="color: black; margin-right: 5px;" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Productos
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="verProductos.jsp">Ver productos</a></li>
            </ul>
        </li>
        <li class="nav-item dropdown border border-dark rounded" style="background: #F29C46; margin: 5px; margin-left: 20px;">
            <a class="nav-link dropdown-toggle" style="color: black; margin-right: 5px;" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Facturas
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="verFacturas.jsp">Ver Facturas</a></li>
            </ul>
        </li>
        <li class="nav-item dropdown border border-dark rounded" style="background: #F29C46; margin: 5px; margin-left: 20px;">
            <a class="nav-link dropdown-toggle" style="color: black; margin-right: 5px;" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Trabajadores
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="verTrabajadores.jsp">Ver lista de Trabajadores</a></li>
            </ul>
        </li>
        <li class="nav-item dropdown border border-dark rounded" style="background: #F29C46; margin: 5px; margin-left: 20px;">
            <a class="nav-link dropdown-toggle" style="color: black; margin-right: 5px;" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Clientes
            </a>
            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="verDatosClientes.jsp">Ver datos clientes</a></li>
            </ul>
        </li>
    </ul>
    <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Ingrese Busqueda" aria-label="Search">
        <button type="button" class="btn btn-rounded btn-lg border border-dark" data-mdb-ripple-color="#ffffff" style="background-color:#F29C46; text-align: center; color: black;"> Buscar </button>
    </form>
</div>
