/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import config.conexionBD;
import entidades.biblioteca;
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
public class controladorBiblioteca {
    //Instancia para conexion
    conexionBD con = new conexionBD();
    JdbcTemplate jdbc = new JdbcTemplate(con.Conectar());
    ModelAndView mav = new ModelAndView(); //Importar la que dice SERVLET
    
    //Metodo para las vistas - METODO PARA OBTENER VISTAS
    @RequestMapping(value = "altaBiblioteca.htm", method = RequestMethod.GET)
    public ModelAndView VistaAgregar(){
        mav.addObject(new biblioteca());
        mav.setViewName("altaBiblioteca");
        return mav;
    }
    
    //METODO PARA AGREGAR
    @RequestMapping(value = "altaBiblioteca.htm", method = RequestMethod.POST)
    public ModelAndView Agregar (biblioteca b){
        String sql = "insert into biblioteca (direccion,nombre,telefono,correo,claveTrabajo) values (?,?,?,?,?)";
        this.jdbc.update(sql, b.getDireccion(), b.getNombre(),b.getTelefono(),b.getCorreo(),b.getClaveTrabajo());
        return new ModelAndView("redirect:/altaBiblioteca.htm");
    }
    
    int idBiblioteca;
    List datos;
    
    @RequestMapping("listaBiblioteca.htm")
    public ModelAndView Lista(){
        String sql = "select * from biblioteca";
        datos = this.jdbc.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("listaBiblioteca");
        return mav;
    }
   
    @RequestMapping(value = "editarBiblioteca.htm" , method = RequestMethod.GET)
    public ModelAndView vistaEditar(HttpServletRequest request){
        idBiblioteca = Integer.parseInt(request.getParameter("idBiblioteca")); //Este "codigo" es el nombre a como esrta en la base de datos
        String sql = "select * from biblioteca where idBiblioteca=" + idBiblioteca;
        datos = this.jdbc.queryForList(sql);
        datos = this.jdbc.queryForList(sql);
        mav.addObject("lista", datos);
        mav.setViewName("editarBiblioteca");
        return mav;
    }
    
    //Metodo para editar
    @RequestMapping(value = "editarBiblioteca.htm", method = RequestMethod.POST)
    public ModelAndView Editar(biblioteca b){
        String sql = "update biblioteca set direccion=?,nombre=?,telefono=?,correo=?,claveTrabajo=? where idBiblioteca=?";
        this.jdbc.update(sql,b.getDireccion(),b.getNombre(),b.getTelefono(),b.getCorreo(),b.getClaveTrabajo(),idBiblioteca);
        return new ModelAndView("redirect: listaBiblioteca.htm");
    }
     
    
    //Metodo para eliminar
    
    @RequestMapping(value = "eliminarBiblioteca.htm")
    public ModelAndView Eliminar(HttpServletRequest request){
    idBiblioteca = Integer.parseInt(request.getParameter("idBiblioteca")); //Este "codigo" es el nombre a como esrta en la base de datos
        String sql = "delete from biblioteca where idBiblioteca=" + idBiblioteca;
        this.jdbc.update(sql);
        return new ModelAndView("redirect:/listaBiblioteca.htm");
    }
}
