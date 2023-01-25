<%-- 
    Document   : altaProducto
    Created on : 16/02/2022, 07:43:57 AM
    Author     : ubaldo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Editar Libros</title>
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
                    <li class="nav-item active">
                        <a class="nav-link" href="altaEmpleado.htm">Alta Visitante</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="listaEmpleado.htm">Lista Visitante</a>
                    </li> 
                </ul>
            </div>
        </nav>
        <div class="container mt-4 col-lg-a">
            <div class="card boarder-info">
                <div class="card-header bg-info">
                    <h3>Editar Registro</h3>
                    <div style="float: right">
                        <a class="btn btn-outline-light" href="listaVisitante.htm">Ver Registro</a>
                        <a class="btn btn-outline-light" href="index.htm">Inicio</a>
                    </div>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Titulo</label>
                        <input type = "text" name="titulo" class="form-control" value="${lista[0].titulo}"/>
                        <label>Hora de ingreso</label>
                        <input type = "text" name="horaIngreso" class="form-control" value="${lista[0].horaIngreso}"/>
                        <label>Autor</label>
                        <input type = "text" name="autor" class="form-control" value="${lista[0].autor}"/>
                        <label>Editorial</label>
                        <input type = "text" name="editorial" class="form-control" value="${lista[0].editorial}"/>
                        <label>Fecha de publicación</label>
                        <input type = "date" name="fPublicacion" class="form-control" value="${lista[0].fPublicacion}"/>
                        <label>Tiempo de conservación (Años)</label>
                        <input type = "number" name="tiemConservacion" class="form-control" value="${lista[0].tiemConservacion}"/>
                        <label>Genero</label>
                        <input type = "text" name="genero" class="form-control" value="${lista[0].genero}"/>
                        <label>Ejemplares</label>
                        <input type = "text" name="ejemplares" class="form-control" value="${lista[0].ejemplares}"/>
                        <label>Seccion</label>
                        <input type = "text" name="seccion" class="form-control" value="${lista[0].seccion}"/>
                        

                        <input type="submit" value="Actualizar" class="btn btn-success">
                        <a href="listaLibro.htm">Regresar</a> 
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