package pe.gob.sigapp.core.domain;

import java.io.Serializable;
import java.sql.Date;

public class Solicitud extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 0L;

	private Date fechasol;
	private String descripcion;
	private Subservicios subservios;
	private Cliente cliente;
	private String direccionservicio;

	public String getDireccionservicio() {
		return direccionservicio;
	}

	public void setDireccionservicio(String direccionservicio) {
		this.direccionservicio = direccionservicio;
	}
	public Date getFechasol() {
		return fechasol;
	}

	public void setFechasol(Date fechasol) {
		this.fechasol = fechasol;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public Subservicios getSubservios() {
		return subservios;
	}

	public void setSubservios(Subservicios subservios) {
		this.subservios = subservios;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
}
