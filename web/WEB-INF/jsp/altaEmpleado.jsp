<%-- 
    Document   : altaEmpleado
    Created on : 15/03/2022, 10:13:39 PM
    Author     : ubaldo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Agregar Empleado</title>
    </head>
    <body>
       <nav class="navbar  navbar-expand-lg navbar-dark bg-dark">

        <a class="navbar-brand" href="index.htm">Sistema de Bibliotecas</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="altaBiblioteca.htm">Alta Biblioteca</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="listaBiblioteca.htm">Lista Biblioteca</a>
                </li>  
                
                <li class="nav-item active">
                    <a class="nav-link" href="altaEmpleado.htm">Alta Empleado</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="listaEmpleado.htm">Lista Empleado</a>
                </li> 
            </ul>
        </div>
    </nav>
        <div class="container mt-4 col-lg-a">
            <div class="card boarder-info">
                <div class="card-header bg-info">
                    <h3>Nuevo Registro</h3>
                    
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Nombre del Empleado</label>
                        <input type = "text" name="nombre" class="form-control"/>
                        <label>Apellido Paterno</label>
                        <input type = "text" name="apellidoP" class="form-control"/>
                        <label>Apellido Paterno</label>
                        <input type = "text" name="apellidoM" class="form-control"/>
                        <label>Telefono</label>
                        <input type = "number" name="telefono" class="form-control"/>
                        <label>Direcci??n de Empleado</label>
                        <input type = "text" name="direccion" class="form-control"/>
                        <label>NIMSS</label>
                        <input type = "text" name="NIMSS" class="form-control"/>
                        
                        <button type="submit" class="btn btn-success">Agregar</button>
                    </form>
                </div>
            </div>
        </div>
        
        <style type="text/css" media="screen">
        body{
            background: url("https://img.freepik.com/vector-gratis/interior-biblioteca-sala-vacia-leer-libros-estantes-madera_33099-1722.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
    </body>
</html>

