<%-- 
    Document   : altaConsulta
    Created on : 22/03/2022, 07:25:58 PM
    Author     : ubaldo
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>alta Consulta</title>
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
                    <a class="nav-link" href="altaConsulta.htm">Alta consulta</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="listaConsulta.htm">Lista consulta</a>
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
                        <label>Titulo de libro</label>
                        <input type = "text" name="titulo" class="form-control"/>
                        <label>fecha</label>
                        <input type = "date" name="fecha" class="form-control"/>
                        <label>hora</label>
                        <input type = "time" name="hora" class="form-control"/>
                        <label>devolucion</label>
                        <input type = "date" name="devolucion" class="form-control"/>
                        <label>seccion</label>
                        <input type = "text" name="seccion" class="form-control"/>
                         <label>Genero de Libro</label>
                        <input type = "text" name="generoLibro" class="form-control"/>
                         <label>prestamo</label>
                        <input type = "text" name="prestamo" class="form-control"/>
                         <label>Estado de devolucion</label>
                        <input type = "text" name="estadoDevolucion" class="form-control"/>
                           <label>IdEmpleado</label>
                        <input type = "number" name="empleado" class="form-control"/>
                           <label>IdVisitante</label>
                        <input type = "number" name="visitante" class="form-control"/>
                           <label>IdLibro</label>
                        <input type = "number" name="libro" class="form-control"/>
                        
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
