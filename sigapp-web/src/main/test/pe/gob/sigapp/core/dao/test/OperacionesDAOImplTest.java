package pe.gob.sigapp.core.dao.test;

import java.math.BigDecimal;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import pe.gob.sigapp.core.dao.MedicionDAO;
import pe.gob.sigapp.core.domain.Equipos;





public class OperacionesDAOImplTest extends AbstractUnitTest{

	@Autowired
	protected MedicionDAO medicionDAO;
//	"30-07-2016"
    Date fecha ; 
    
	public void test_suma() {
		Double ok = medicionDAO.SumarPromediCaudal();
		System.out.println(ok);
		}
	
//	public void test_ordenes(){
//		List<Producto> orde = ventaDAO.MenudeProductos();
//		for(Producto ord: orde){
//			System.out.println(ord.getCproestado());
//			}
//		}
	}
//	
//		public void  test_transacional(){
//					int salida = 1; 
//				Transaccion tras = new Transaccion();
//					Producto prod = operacionesDAO.productoid(new Long(1));
//					Venta venta = operacionesDAO.Ventaxid(new Long(2));
//					
//					tras.setVenta(venta);
//					tras.setProducto(prod);
////					tras.setNtraprecio(prod.getNproprecioventa());//prod.getNproprecioventa()
////					tras.setNtrapreciototal(prod.getNproprecioventa()*salida);//prod.getNproprecioventa()*salida
////					tras.setNtracantidad(salida);//salida
//				operacionesDAO.generartransaccion(tras);
//	
//		}
	
	
//}
//		List<Respersonal> pers = operacionesDAO.listarresp();
//		for(Respersonal per:pers){
//			System.out.println(per.getCargo());
//		}
//	}
	
//		logger.info("%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%" + ferreteriaDao);
////		String dni = "vhg";
//		List<Producto> findproducto = (List<Producto>) ferreteriaDao.findproducto();
//		List<Producto> listInst = findproducto;
//		logger.info("::: " + listInst);
//		for (Producto institution : listInst) {
//			System.out.println(institution.getCantidad());
//			System.out.println(institution.getEstado());
		
	

