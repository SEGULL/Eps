package pe.gob.sigapp.service.services;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.validation.constraints.Null;

//import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.gob.sigapp.core.dao.MedicionDAO;
import pe.gob.sigapp.core.dao.OperacionesDAO;
import pe.gob.sigapp.core.dao.ServiciosDAO;
import pe.gob.sigapp.core.dao.SolicitudDAO;
import pe.gob.sigapp.core.domain.Cliente;
import pe.gob.sigapp.core.domain.Equipos;
import pe.gob.sigapp.core.domain.Personal;
import pe.gob.sigapp.core.domain.PuntoControl;
import pe.gob.sigapp.core.domain.Solicitud;
import pe.gob.sigapp.core.domain.Subservicios;
import pe.gob.sigapp.core.domain.TipoMedicion;



@Service("medicionService")
public class MedicionServiceImpl {
	
	@Autowired
	private MedicionDAO medicionDAO;

	public List<Equipos> listaEquipos(String nombre) {
		// TODO Auto-generated method stub
		return medicionDAO.ListarEquipo(nombre);
	}

	public List<Personal> listaPersonal() {
		// TODO Auto-generated method stub
		return medicionDAO.ListarPersonal();
	}

	public List<PuntoControl> listaPuntoControlCaudal() {
		// TODO Auto-generated method stub
		return medicionDAO.ListaPuntoControlCaudal();
	}

	public void GuardarMedicion(TipoMedicion tipomedicion) {
		// TODO Auto-generated method stub
		this.medicionDAO.GuardarMedicion(tipomedicion);
	}

	public List<PuntoControl> listaPuntoControlPrecion() {
		// TODO Auto-generated method stub
		return medicionDAO.ListarPuntoControlPrecion();
	}

	public List<PuntoControl> listaPuntoControlNivel() {
		// TODO Auto-generated method stub
		return medicionDAO.listaPuntoControlNivel();
	}

	public List<TipoMedicion> ListaReporteMediciones() {
		// TODO Auto-generated method stub
		return medicionDAO.ListaReporteMediciones();
	}

	public List<TipoMedicion> ListaAvanzada(Date fechainicio, Date fechafin) {
		// TODO Auto-generated method stub
		return medicionDAO.ListarAvanzada(fechainicio,fechafin);
	}

	public Double SumarPromediCaudal() {
		// TODO Auto-generated method stub
		return medicionDAO.SumarPromediCaudal();
	}

//	public Long IdEquipoAvanzado(Equipos equipo) {
//		// TODO Auto-generated method stubDate fechainicio, Date fechafin
//		return medicionDAO.IdEquipoAvanzado(equipo);
//	}
	
	

}
                           