package pe.gob.sigapp.core.domain;

import java.io.Serializable;

public class PuntoControl extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 0L;

	private String tipocontrol;
	private String estado;
	private String nombrecontrol;
	private String Descripcion;
	private String direccion;
	public String getTipocontrol() {
		return tipocontrol;
	}
	public void setTipocontrol(String tipocontrol) {
		this.tipocontrol = tipocontrol;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getNombrecontrol() {
		return nombrecontrol;
	}
	public void setNombrecontrol(String nombrecontrol) {
		this.nombrecontrol = nombrecontrol;
	}
	public String getDescripcion() {
		return Descripcion;
	}
	public void setDescripcion(String descripcion) {
		Descripcion = descripcion;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	
}
