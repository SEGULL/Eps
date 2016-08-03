package pe.gob.sigapp.webapp.controller;

import javax.servlet.http.HttpServletRequest;


import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import pe.gob.sigapp.core.domain.Solicitud;
import pe.gob.sigapp.core.domain.Subservicios;
import pe.gob.sigapp.service.services.OperacionesServiceImpl;
import pe.gob.sigapp.service.services.SolicitudServiceImpl;

@Controller
public class SolicitudController {

	@Autowired
	private SolicitudServiceImpl solicitudService;
	 
	protected Log logger = LogFactory.getLog(getClass());
	//****<Redireciona Menus>
	//Conexiones
	@RequestMapping(value = "Solicitud/Conexion", method = RequestMethod.GET)
	public String Conexion(Model model, HttpServletRequest request) {
			model.addAttribute("Solicitud", new Solicitud());
//			model.addAttribute("ListaCliente", solicitudService.ListaCliente());
		request.getSession().setAttribute("menuHeader", "Solicitud");
		return "Solicitud/Conexion";
	}
	//Gasfiteria
	@RequestMapping(value = "Solicitud/Gasfiteria", method = RequestMethod.GET)
	public String Gasfiteria(Model model, HttpServletRequest request) {
		model.addAttribute("Solicitud", new Solicitud());
		request.getSession().setAttribute("menuHeader", "Solicitud");
		return "Solicitud/Gasfiteria";
	}
	//Desatoro
	@RequestMapping(value = "Solicitud/Desatoro", method = RequestMethod.GET)
	public String Desatoro(Model model, HttpServletRequest request) {
		model.addAttribute("Solicitud", new Solicitud());
		request.getSession().setAttribute("menuHeader", "Solicitud");
		return "Solicitud/Desatoro";
	}
	//Reparacion
	@RequestMapping(value = "Solicitud/Reparacion", method = RequestMethod.GET)
	public String Reparacion(Model model, HttpServletRequest request) {
		model.addAttribute("Solicitud", new Solicitud());
		request.getSession().setAttribute("menuHeader", "Solicitud");
		return "Solicitud/Reparacion";
	}
	//Limpieza
	@RequestMapping(value = "Solicitud/Limpieza", method = RequestMethod.GET)
	public String Limpieza(Model model, HttpServletRequest request) {
		model.addAttribute("Solicitud", new Solicitud());
		request.getSession().setAttribute("menuHeader", "Solicitud");
		return "Solicitud/Limpieza";
	}
	//Lectura
	@RequestMapping(value = "Solicitud/Lectura", method = RequestMethod.GET)
	public String Lectura(Model model, HttpServletRequest request) {
		model.addAttribute("Solicitud", new Solicitud());
		request.getSession().setAttribute("menuHeader", "Solicitud");
		return "Solicitud/Lectura";
	}
	//Otros
	@RequestMapping(value = "Solicitud/Otros", method = RequestMethod.GET)
	public String Otros(Model model, HttpServletRequest request) {
		model.addAttribute("Solicitud", new Solicitud());
		request.getSession().setAttribute("menuHeader", "Solicitud");
		return "Solicitud/Otros";
	}
	//****</Redireciona Menus>
	//************<Direcion de Fomularios>
	//listado de usuarios
	@RequestMapping(value = "Solicitud/{idR}/ConexionAgua", method = RequestMethod.GET)
	public String Listausuario(@PathVariable int idR,Model model, HttpServletRequest request) {
			model.addAttribute("Solicitud", new Solicitud());
			model.addAttribute("seg", idR);
			model.addAttribute("ListaCliente", solicitudService.ListaCliente());
		request.getSession().setAttribute("menuHeader", "Solicitud");
		return "Solicitud/SelecionUser";
	}
	
	//formulario de coneiones de agua
	@RequestMapping(value = "ConexionAgua/{id}/Select", method = RequestMethod.GET)
	public String IdUserAgua(@PathVariable String id,String idR,Model model) {
		model.addAttribute("Solicitud", new Solicitud());
		model.addAttribute("seg", idR);
		model.addAttribute("cliente", solicitudService.ListIdCliente(id));
		model.addAttribute("Cliente", solicitudService.IdCliente(id));
		
	return "Solicitud/FormConexionAgua";
	}
	//genera una solicitud
	@RequestMapping(value = "ConexionAgua/{id}/Guardar", method = RequestMethod.POST)
	public String FormSolicitud(@PathVariable String id,Model model,@ModelAttribute("Solicitud") Solicitud solicitud) {
		Subservicios sub = solicitudService.IdSubser(1);
		solicitud.setSubservios(sub);
		solicitudService.GuardarSolicitud(solicitud);
		model.addAttribute("Solicitud", solicitudService.IdSolicitud(solicitud.getId()));
		
	return "Solicitud/FichaSolicitud";
	}
}
