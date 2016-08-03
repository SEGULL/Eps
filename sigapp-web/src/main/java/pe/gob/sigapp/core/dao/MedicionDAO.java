package pe.gob.sigapp.core.dao;

import java.sql.Date;
import java.util.List;
//import java.util.Date;
import pe.gob.sigapp.core.domain.Equipos;
import pe.gob.sigapp.core.domain.Personal;
import pe.gob.sigapp.core.domain.PuntoControl;
import pe.gob.sigapp.core.domain.Servicios;
import pe.gob.sigapp.core.domain.TipoMedicion;



public interface MedicionDAO {
	
	public List<Servicios> ListarServicioa();

	public List<Equipos> ListarEquipo(String nombre);

	public List<Personal> ListarPersonal();

	public List<PuntoControl> ListaPuntoControlCaudal();

	public void GuardarMedicion(TipoMedicion medicion);

	public List<PuntoControl> ListarPuntoControlPrecion();

	public List<PuntoControl> listaPuntoControlNivel();

	public List<TipoMedicion> ListaReporteMediciones();

	public List<TipoMedicion> ListarAvanzada(Date fechainicio, Date fechafin);

	public Double SumarPromediCaudal();

	public Equipos IdEquipo(int i);

//	public Double SumarPromediCaudal();
//	public Long IdEquipoAvanzado(Equipos equipo);Date fechainicio, Date fechafin
			
}
