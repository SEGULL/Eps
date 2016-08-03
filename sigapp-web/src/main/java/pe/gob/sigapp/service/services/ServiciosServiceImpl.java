package pe.gob.sigapp.service.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.gob.sigapp.core.dao.OperacionesDAO;
import pe.gob.sigapp.core.dao.ServiciosDAO;



@Service("serviciosService")
public class ServiciosServiceImpl {
	
	@Autowired
	private ServiciosDAO serviciosDAO;
	
	

}
                           