package pe.gob.sigapp.core.domain;

import java.io.Serializable;

public class Subservicios extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 0L;

	private String nombresub;
	private Double tiempo;
	private Double costosub;
	private Servicios servicios;
	public String getNombresub() {
		return nombresub;
	}
	public void setNombresub(String nombresub) {
		this.nombresub = nombresub;
	}
	public Double getTiempo() {
		return tiempo;
	}
	public void setTiempo(Double tiempo) {
		this.tiempo = tiempo;
	}
	public Double getCostosub() {
		return costosub;
	}
	public void setCostosub(Double costosub) {
		this.costosub = costosub;
	}
	public Servicios getServicios() {
		return servicios;
	}
	public void setServicios(Servicios servicios) {
		this.servicios = servicios;
	}
	

	
}
