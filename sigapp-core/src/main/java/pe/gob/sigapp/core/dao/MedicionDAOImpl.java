package pe.gob.sigapp.core.dao;

import java.sql.Date;
import java.util.List;
//import java.util.Date;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.sql.QuerySelect;
import org.springframework.transaction.annotation.Transactional;


import pe.gob.sigapp.core.domain.Equipos;
import pe.gob.sigapp.core.domain.Personal;
import pe.gob.sigapp.core.domain.PuntoControl;
import pe.gob.sigapp.core.domain.Servicios;
import pe.gob.sigapp.core.domain.TipoMedicion;




public class MedicionDAOImpl extends BaseDAOHibernate implements MedicionDAO {


	/* (non-Javadoc)
	 * @see pe.gob.sigapp.core.dao.MedicionDAO#ListarServicioa()
	 */
	public List<Servicios> ListarServicioa(){
		return find(Servicios.class,"FROM Servicios");
	}
	/* (non-Javadoc)
	 * @see pe.gob.sigapp.core.dao.MedicionDAO#ListarEquipo(java.lang.String)
	 */
	public List<Equipos> ListarEquipo(String nombre) {
		// TODO Auto-generated method stub
		return find(Equipos.class,"FROM Equipos Where area ='"+nombre+"'");
	}
	
	/* (non-Javadoc)
	 * @see pe.gob.sigapp.core.dao.MedicionDAO#ListarPersonal()
	 */
	public List<Personal> ListarPersonal() {
		// TODO Auto-generated method stub
		return find(Personal.class,"FROM Personal");
	}
	
	/* (non-Javadoc)
	 * @see pe.gob.sigapp.core.dao.MedicionDAO#ListaPuntoControlCaudal()
	 */
	public List<PuntoControl> ListaPuntoControlCaudal() {
		// TODO Auto-generated method stub
		return find(PuntoControl.class, "FROM PuntoControl Where tipocontrol = 'Redes Distribucion' or tipocontrol = 'Reservorio' ");
	}
	/* (non-Javadoc)
	 * @see pe.gob.sigapp.core.dao.MedicionDAO#GuardarMedicion(pe.gob.sigapp.core.domain.TipoMedicion)
	 */
	public void GuardarMedicion(TipoMedicion medicion) {
		// TODO Auto-generated method stub
		this.save(medicion);
	}
	/* (non-Javadoc)
	 * @see pe.gob.sigapp.core.dao.MedicionDAO#ListarPuntoControlPrecion()
	 */
	public List<PuntoControl> ListarPuntoControlPrecion() {
		// TODO Auto-generated method stub
		return find(PuntoControl.class, "FROM PuntoControl Where tipocontrol = 'Redes Distribucion'  ");
	}
	/* (non-Javadoc)
	 * @see pe.gob.sigapp.core.dao.MedicionDAO#listaPuntoControlNivel()
	 */
	public List<PuntoControl> listaPuntoControlNivel() {
		// TODO Auto-generated method stub
		return find(PuntoControl.class, "FROM PuntoControl Where tipocontrol = 'Reservorio'  ");
	}
	public List<TipoMedicion> ListaReporteMediciones() {
		// TODO Auto-generated method stub
		return find(TipoMedicion.class,"FROM TipoMedicion ");
	}
//	public Long IdEquipoAvanzado(Equipos equipo) {
//		// TODO Auto-generated method stub
//		return findFirst(Equipos.class, "FROM Equipo Where  ");
//	}
	public List<TipoMedicion> ListarAvanzada(Date fechainicio, Date fechafin) {
		// TODO Auto-generated method stub
		return find(TipoMedicion.class,"FROM TipoMedicion Where fechamedicion>='"+fechainicio+"' and "
				+ "fechamedicion<='"+fechafin+"' ");
//						+ "and "
//				+ "equipos.id='"+equipos.getId()+"'");
	}
//	Date fechainicio, Date fechafin
	@Transactional
	public Double SumarPromediCaudal() throws HibernateException {
		// TODO Auto-generated method stub
		Query query = this
				.getSQLQuery("SELECT avg(CValorLC) FROM tipomedicion Where IdPuntoControl ='1' and Tipo='Caudal'");
		return ((Double) query.uniqueResult()).doubleValue();
	}
	public Equipos IdEquipo(int i){
		return findFirst(Equipos.class, "FROM Equipo where id='"+i+"'");
	};

}
