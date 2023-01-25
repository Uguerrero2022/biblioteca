/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import config.conexionBD;
import entidades.consulta;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author ubaldo
 */

@Controller
public class controladorConsulta {
    //Instancia para conexion
    conexionBD con = new conexionBD();
    JdbcTemplate jdbc = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView(); //Importar la que dice SERVLET
    
    //Metodo para las vistas - METODO PARA OBTENER VISTAS
    @RequestMapping(value = "altaConsulta.htm", method = RequestMethod.GET)
    public ModelAndView VistaAgregar(){
        mav.addObject(new consulta());
        mav.setViewName("altaConsulta");
        return mav;
    }
    
    //METODO PARA AGREGAR
    @RequestMapping(value = "altaConsulta.htm", method = RequestMethod.POST)
    public ModelAndView Agregar (consulta b){
        String sql = "insert into consulta (titulo,fecha,hora,devolucion,seccion,generoLibro,prestamo,estadoDevolucion,empleado,visitante,libro) values (?,?,?,?,?,?,?,?,?,?,?)";
        this.jdbc.update(sql, b.getTitulo(), b.getFecha(),b.getHora(),b.getDevolucion(),b.getSeccion(),b.getGeneroLibro(),b.getPrestamo(),b.getEstadoDevolucion(),b.getEmpleado(),b.getVisitante(),b.getLibro());
        return new ModelAndView("redirect:/altaConsulta.htm");
    }
    
    int idConsulta;
    List datos;
    
    @RequestMapping("listaConsulta.htm")
    public ModelAndView Lista(){
        String sql = "select * from consulta";
        datos = this.jdbc.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("listaConsulta");
        return mav;
    }
   
    @RequestMapping(value = "editarConsulta.htm" , method = RequestMethod.GET)
    public ModelAndView vistaEditar(HttpServletRequest request){
        idConsulta = Integer.parseInt(request.getParameter("idConsulta")); //Este "codigo" es el nombre a como esrta en la base de datos
        String sql = "select * from consulta where idConsulta=" + idConsulta;
        datos = this.jdbc.queryForList(sql);
        datos = this.jdbc.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("editarConsulta");
        return mav;
    }
    
    //Metodo para editar
    @RequestMapping(value = "editarConsulta.htm", method = RequestMethod.POST)
    public ModelAndView Editar(consulta b){
        String sql = "update consulta set titulo=?,fecha=?,hora=?,devolucion=?,seccion=?, generoLibro=?,prestamo=?,estadoDevolucion=? where idConsulta=?";
        this.jdbc.update(sql,b.getTitulo(),b.getFecha(),b.getHora(),b.getDevolucion(),b.getSeccion(),b.getGeneroLibro(),b.getPrestamo(),b.getEstadoDevolucion(),idConsulta);
        return new ModelAndView("redirect: listaConsulta.htm");
    }
     
    
    //Metodo para eliminar
    
    @RequestMapping(value = "eliminarConsulta.htm")
    public ModelAndView Eliminar(HttpServletRequest request){
    idConsulta = Integer.parseInt(request.getParameter("idConsulta")); //Este "codigo" es el nombre a como esrta en la base de datos
        String sql = "delete from consulta where idConsulta=" + idConsulta;
        this.jdbc.update(sql);
        return new ModelAndView("redirect:/listaConsulta.htm");
    }
}

