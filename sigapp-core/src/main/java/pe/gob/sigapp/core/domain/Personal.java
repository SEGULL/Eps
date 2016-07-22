package pe.gob.sigapp.core.domain;

import java.io.Serializable;

public class Personal extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 0L;

	private String nombre;
	private String apellidopat;
	private String apellidomat;
	private int edad;
	private int telefono;
	private String direccion;
	private String correo;
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidopat() {
		return apellidopat;
	}
	public void setApellidopat(String apellidopat) {
		this.apellidopat = apellidopat;
	}
	public String getApellidomat() {
		return apellidomat;
	}
	public void setApellidomat(String apellidomat) {
		this.apellidomat = apellidomat;
	}
	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	public int getTelefono() {
		return telefono;
	}
	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}
	public String getDireccion() {
		return direccion;
	}
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}
	public String getCorreo() {
		return correo;
	}
	public void setCorreo(String correo) {
		this.correo = correo;
	}
	
}
