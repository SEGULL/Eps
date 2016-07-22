package pe.gob.sigapp.core.dao;

import java.util.List;

import pe.gob.sigapp.core.domain.Cliente;
import pe.gob.sigapp.core.domain.Solicitud;
import pe.gob.sigapp.core.domain.Subservicios;

/**
 * @author Usuario
 *
 */
public class SolicitudDAOImpl extends BaseDAOHibernate implements SolicitudDAO {

	//	MenuCliente
	public List<Cliente> ListaCliente(){
		return find(Cliente.class,"FROM Cliente");
	}
	// Id de cliente
	public Cliente IdCliente(Long id){
		return findFirst(Cliente.class, "FROM Cliente WHERE id='"+id+"'");
	};
	// Lista de solicitudes
	public Solicitud IdSolicitud(Long id){
		return findFirst(Solicitud.class, "FROM Solicitud Where id='"+id+"'");
	};
	//guadar una solicitud
	public void GuardarSolicitud(Solicitud solicitud){
		this.save(solicitud);
	};
	//Id Subservicio
	public Subservicios IdSubser(Long id){
		return findFirst(Subservicios.class, "FROM Subservicios Where id='"+id+"'");
	};
	//Id ListCliente
	public List<Cliente> ListIdCliente(Long id){
		return find(Cliente.class,"FROM Cliente Where id='"+id+"'");
	};	
			
}
