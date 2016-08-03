package pe.gob.sigapp.core.dao.impl;

import java.util.List;

import pe.gob.sigapp.core.dao.ServiciosDAO;
import pe.gob.sigapp.core.domain.Servicios;




public class ServiciosDAOImpl extends BaseDAOHibernate implements ServiciosDAO {


	public List<Servicios> ListarServicioa(){
		return find(Servicios.class,"FROM Servicios");
	}

}
