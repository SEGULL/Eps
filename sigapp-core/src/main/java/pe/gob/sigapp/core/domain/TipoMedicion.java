package pe.gob.sigapp.core.domain;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;

public class TipoMedicion extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 0L;
	
	
	private Equipos equipos;
	private PuntoControl puntocontrol;
	private Personal personal;
	private String tipo;
	private Date fechamedicion;
	private Date fechainicio;
	private Date fechafin;
	public Date getFechainicio() {
		return fechainicio;
	}
	public void setFechainicio(Date fechainicio) {
		this.fechainicio = fechainicio;
	}
	public Date getFechafin() {
		return fechafin;
	}
	public void setFechafin(Date fechafin) {
		this.fechafin = fechafin;
	}
	private String hora;
	private String anotaciones;
	private Double cvalorlc;
	private Double pvalormac;
	private Double nvalorm;
	public Equipos getEquipos() {
		return equipos;
	}
	public void setEquipos(Equipos equipos) {
		this.equipos = equipos;
	}
	public PuntoControl getPuntocontrol() {
		return puntocontrol;
	}
	public void setPuntocontrol(PuntoControl puntocontrol) {
		this.puntocontrol = puntocontrol;
	}
	public Personal getPersonal() {
		return personal;
	}
	public void setPersonal(Personal personal) {
		this.personal = personal;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public Date getFechamedicion() {
		return fechamedicion;
	}
	public void setFechamedicion(Date fechamedicion) {
		this.fechamedicion = fechamedicion;
	}
	public String getHora() {
		return hora;
	}
	public void setHora(String hora) {
		this.hora = hora;
	}
	public String getAnotaciones() {
		return anotaciones;
	}
	public void setAnotaciones(String anotaciones) {
		this.anotaciones = anotaciones;
	}
	public Double getCvalorlc() {
		return cvalorlc;
	}
	public void setCvalorlc(Double cvalorlc) {
		this.cvalorlc = cvalorlc;
	}
	public Double getPvalormac() {
		return pvalormac;
	}
	public void setPvalormac(Double pvalormac) {
		this.pvalormac = pvalormac;
	}
	public Double getNvalorm() {
		return nvalorm;
	}
	public void setNvalorm(Double nvalorm) {
		this.nvalorm = nvalorm;
	}
	
}
