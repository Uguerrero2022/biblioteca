<%-- 
    Document   : listaConsulta
    Created on : 22/03/2022, 07:42:19 PM
    Author     : ubaldo
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Lista Consulta</title>
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
                    <a class="nav-link" href="altaConsulta.htm">Alta Consulta</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="listaConsulta.htm">Lista Consulta</a>
                </li> 
            </ul>
        </div>
    </nav>
        <div class="container mt-4">
            <div class="card boarder-info">
                <div class="card-header bg-info text-white">
                    <h4>Lista Consulta</h4>
                    
                </div>
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Identificación</th>
                                <th>Titulo de libro</th>
                                <th>Fecha</th>
                                <th>Hora</th>
                                <th>Devolucion</th>
                                <th>Seccion</th>
                                <th>Genero de libro</th>
                                <th>Prestamo</th>
                                <th>Estado de Devolucion</th>
                                <th>IdEmpleado</th>
                                <th>IdVisitante</th>
                                <th>IdLibro</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                                <tr>
                                    <td>${dato.idConsulta}</td>
                                    <td>${dato.titulo}</td>
                                    <td>${dato.fecha}</td>  
                                    <td>${dato.hora}</td>
                                    <td>${dato.devolucion}</td>
                                    <td>${dato.seccion}</td>
                                    <td>${dato.generoLibro}</td>
                                    <td>${dato.prestamo}</td>
                                    <td>${dato.estadoDevolucion}</td>
                                    <td>${dato.empleado}</td>
                                    <td>${dato.visitante}</td>
                                    <td>${dato.libro}</td>
                               
                                    <td>
                                        <a href="editarConsulta.htm?idConsulta=${dato.idConsulta}"
                                           class="btn btn-warning">Editar</a>
                                           
                                        <a href="eliminarConsulta.htm?idConsulta=${dato.idConsulta}"
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
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
    </body>
</html>
