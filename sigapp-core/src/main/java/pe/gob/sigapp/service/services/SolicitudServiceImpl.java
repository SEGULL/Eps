package pe.gob.sigapp.service.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.gob.sigapp.core.dao.OperacionesDAO;
import pe.gob.sigapp.core.dao.ServiciosDAO;
import pe.gob.sigapp.core.dao.SolicitudDAO;
import pe.gob.sigapp.core.domain.Cliente;
import pe.gob.sigapp.core.domain.Solicitud;
import pe.gob.sigapp.core.domain.Subservicios;



@Service("solicitudService")
public class SolicitudServiceImpl {
	
	@Autowired
	private SolicitudDAO solicitudDAO;
	
	//	MenuCliente
	public List<Cliente> ListaCliente(){
		return solicitudDAO.ListaCliente();
	}
	//Id de cliente
	public Cliente IdCliente(String id) {
		// TODO Auto-generated method stub
		return solicitudDAO.IdCliente(new Long(Integer.parseInt(id)));
	}
	public Solicitud IdSolicitud(Long id) {
		// TODO Auto-generated method stub
		return	solicitudDAO.IdSolicitud(id);
	}
	public void GuardarSolicitud(Solicitud solicitud) {
		// TODO Auto-generated method stub
		this.solicitudDAO.GuardarSolicitud(solicitud);
	}
	public Subservicios IdSubser(int id) {
		// TODO Auto-generated method stub
		return solicitudDAO.IdSubser(new Long(id));
	}
	public List<Cliente> ListIdCliente(String id) {
		// TODO Auto-generated method stub
		return solicitudDAO.ListIdCliente(new Long(Integer.parseInt(id)));
	}
	

}
                           