package pe.gob.sigapp.core.dao;

import java.util.List;

import pe.gob.sigapp.core.domain.Cliente;
import pe.gob.sigapp.core.domain.Servicios;
import pe.gob.sigapp.core.domain.Solicitud;
import pe.gob.sigapp.core.domain.Subservicios;



public interface SolicitudDAO {
	//	MenuCliente
	public List<Cliente> ListaCliente();
	// Id de cliente
	public Cliente IdCliente(Long id);
	// Lista de solicitudes
	public Solicitud IdSolicitud(Long id);
	//guadar una solicitud
	public void GuardarSolicitud(Solicitud solicitud);
	//Id Subservicio
	public Subservicios IdSubser(Long id);
	//Id ListCliente
	public List<Cliente> ListIdCliente(Long id);
	
			
}
