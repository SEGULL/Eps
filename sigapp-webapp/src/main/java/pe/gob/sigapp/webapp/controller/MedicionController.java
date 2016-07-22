package pe.gob.sigapp.webapp.controller;

import java.sql.Date;

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

import pe.gob.sigapp.core.domain.Equipos;
import pe.gob.sigapp.core.domain.Solicitud;
import pe.gob.sigapp.core.domain.TipoMedicion;
import pe.gob.sigapp.service.services.MedicionServiceImpl;
import pe.gob.sigapp.service.services.ServiciosServiceImpl;

@Controller
public class MedicionController {

	@Autowired
	private MedicionServiceImpl medicionService;
	 
	protected Log logger = LogFactory.getLog(getClass());
	
	//	Form_Medicion de caudal
	@RequestMapping(value = "Medicion/Caudal", method = RequestMethod.GET)
	public String Caudal(Model model, HttpServletRequest request) {
			model.addAttribute("Tipo", new TipoMedicion());
			String Caudal="Caudal";
			model.addAttribute("Equipo", medicionService.listaEquipos(Caudal));
			model.addAttribute("Punto", medicionService.listaPuntoControlCaudal());
			model.addAttribute("Personal", medicionService.listaPersonal());
		request.getSession().setAttribute("menuHeader", "Medicion");
		return "Medicion/FormularioCaudal";
	}

	//	Form_Medicion de presion
	@RequestMapping(value = "Medicion/Presion", method = RequestMethod.GET)
	public String Presion(Model model, HttpServletRequest request) {
			model.addAttribute("Tipo", new TipoMedicion());
			String Presion ="Presion";
			model.addAttribute("Equipo", medicionService.listaEquipos(Presion));
			model.addAttribute("Punto", medicionService.listaPuntoControlPrecion());
			model.addAttribute("Personal", medicionService.listaPersonal());
		request.getSession().setAttribute("menuHeader", "Medicion");
		return "Medicion/FormularioPresion";
	}
	//	Form_Medicion de nivel
	@RequestMapping(value = "Medicion/Nivel", method = RequestMethod.GET)
	public String Nivel(Model model, HttpServletRequest request) {
			model.addAttribute("Tipo", new TipoMedicion());
			String Nivel ="Nivel";
			model.addAttribute("Equipo", medicionService.listaEquipos(Nivel));
			model.addAttribute("Punto", medicionService.listaPuntoControlNivel());
			model.addAttribute("Personal", medicionService.listaPersonal());
		request.getSession().setAttribute("menuHeader", "Medicion");
		return "Medicion/FormularioNivel";
	}
	
	//	guarda la medicion
	@RequestMapping(value = "Medicion/guardar", method = RequestMethod.POST)
	public String MedicionCaudal(Model model,@ModelAttribute("Tipo") TipoMedicion Tipo) {
		medicionService.GuardarMedicion(Tipo);
	return "redirect:/Medicion/Caudal";
	}
	
	//ReportesSisoper/SumarioMediciones
	@RequestMapping(value = "Medicion/SumarioMediciones", method = RequestMethod.GET)
	public String Reporte(Model model, HttpServletRequest request) {
	//		model.addAttribute("Tipo", new TipoMedicion());
			model.addAttribute("ReporteMediciones", medicionService.ListaReporteMediciones());
		request.getSession().setAttribute("menuHeader", "Medicion");
		return "Medicion/ReporteMediciones";
	}
	
	//ReportesSisoper/SumarioMediciones
	@RequestMapping(value = "ReporteMediciones/Caudal", method = RequestMethod.GET)
	public String ReporteCaudal(Model model) {
			model.addAttribute("Tipo", new TipoMedicion());
			model.addAttribute("Punto", medicionService.listaPuntoControlCaudal());
			model.addAttribute("ReporteMediciones", medicionService.ListaReporteMediciones());
		return "Medicion/ReporteCaudal";
	}
	//ReportesSisoper/SumarioMediciones
	@RequestMapping(value = "ReporteMediciones/buscar", method = RequestMethod.POST)
	public String BusquedaAvanzada(Model model,@ModelAttribute("Tipo") TipoMedicion Tipo) {
			model.addAttribute("ReporteAvanzado", medicionService.ListaAvanzada(Tipo.getFechainicio(),Tipo.getFechafin()));		
			model.addAttribute("Promedio", medicionService.SumarPromediCaudal());
		return "Medicion/ReporteAvanzado";
	}
}
