<%-- 
    Document   : listaVisitante
    Created on : 20/03/2022, 12:10:16 PM
    Author     : ubaldo
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Lista General</title>
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
        <div class="container mt-4">
            <div class="card boarder-info">
                <div class="card-header bg-info text-white">
                    <h4>Lista general</h4>

                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>ID del libro</th>
                                <th>Titulo</th>
                                <th>Hora de Ingreso</th>
                                <th>Autor</th>
                                <th>Editorial</th>
                                <th>Fecha Publicación</th>
                                <th>Conservación (Años) </th>
                                <th>Genero</th>
                                <th>Ejemplares</th>
                                <th>Sección</th>
                                <th>Télefono</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.idLibro}</td>
                                    <td>${dato.titulo}</td>
                                    <td>${dato.horaIngreso}</td>
                                    <td>${dato.autor}</td>
                                    <td>${dato.editorial}</td>
                                    <td>${dato.fPublicacion}</td>
                                    <td>${dato.tiemConservacion}</td>
                                    <td>${dato.genero}</td>
                                    <td>${dato.ejemplares}</td>
                                    <td>${dato.seccion}</td>
                                    
                                    <td>
                                        <a href="editarLibro.htm?idLibro=${dato.idLibro}"
                                           class="btn btn-warning">Editar</a>

                                        <a href="eliminarLibro.htm?idLibro=${dato.idLibro}"
                                           class="btn btn-danger">Eliminar</a>
                                    </td>
                                </tr>
                            </c:forEach> 
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <style type="text/css" media="screen">
            body{
                background: url("https://img.freepik.com/vector-gratis/interior-biblioteca-sala-vacia-leer-libros-estantes-madera_33099-1722.jpg");
                background-repeat:repeat;
                background-size: cover;
            }
        </style>
    </body>
</html>
