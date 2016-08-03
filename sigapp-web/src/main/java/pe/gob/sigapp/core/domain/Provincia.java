package pe.gob.sigapp.core.domain;

import java.io.Serializable;

public class Provincia extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 0L;

	private String nombre;
	private int numeropob;
	private String descripcion;
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getNumeropob() {
		return numeropob;
	}
	public void setNumeropob(int numeropob) {
		this.numeropob = numeropob;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	
}
