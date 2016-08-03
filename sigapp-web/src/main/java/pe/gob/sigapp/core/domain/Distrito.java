package pe.gob.sigapp.core.domain;

import java.io.Serializable;

public class Distrito extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 0L;

	private String nombre;
	private int numeropob;
	private Provincia provincia;
	
	public Provincia getProvincia() {
		return provincia;
	}
	public void setProvincia(Provincia provincia) {
		this.provincia = provincia;
	}
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
	
}
