package pe.gob.sigapp.service.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pe.gob.sigapp.core.dao.OperacionesDAO;



@Service("empssapalService")
public class OperacionesServiceImpl {
	
	@Autowired
	private OperacionesDAO operacionesDAO;
	
	

}
