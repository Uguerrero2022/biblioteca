<%-- 
    Document   : editarConsulta
    Created on : 22/03/2022, 08:52:21 PM
    Author     : ubaldo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Consulta</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
                    <a class="nav-link" href="altaConsulta.htm">Alta Consulta</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="listaConsulta.htm">Lista Consulta</a>
                </li>  
                
                <li class="nav-item active">
                    <a class="nav-link" href="altaVisitante.htm">Alta Visitante</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="listaVisitante.htm">Lista Visitante</a>
                </li> 
            </ul>
        </div>
    </nav>
        <div class="container mt-4 col-lg-a">
            <div class="card boarder-info">
                <div class="card-header bg-info">
                    <h3>Actualiza el Registro</h3>

                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Titulo</label>
                        <input type = "text" name="titulo" class="form-control" value="${lista[0].titulo}"/>
                        <label>Fecha</label>
                        <input type = "date" name="fecha" class="form-control" value="${lista[0].fecha}"/>
                        <label>Hora</label>
                        <input type = "time" name="hora" class="form-control" value="${lista[0].hora}"/>
                        <label>Devolucion</label>
                        <input type = "text" name="devolucion" class="form-control" value="${lista[0].devolucion}"/>
                        <label>Seccion</label>
                        <input type = "text" name="seccion" class="form-control" value="${lista[0].seccion}"/>
                        <label>Genero del libro</label>
                        <input type = "text" name="generoLibro" class="form-control" value="${lista[0].generoLibro}"/>
                        <label>Prestamo</label>
                        <input type = "text" name="prestamo" class="form-control" value="${lista[0].prestamo}"/>
                        <label>Estado de devolucion</label>
                        <input type = "text" name="estadoDevolucion" class="form-control" value="${lista[0].estadoDevolucion}"/>
                        <input type="submit" value="Actualizar" class="btn btn-success">
                        <a href="listaConsulta.htm">Regresar</a> 
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
