package pe.gob.sigapp.core.domain;

import java.io.Serializable;

public class Cliente extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 0L;

	private String nombre;
	private String apellidos;
	private String direccion;
	private int dni;
	

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public int getDni() {
		return dni;
	}

	public void setDni(int dni) {
		this.dni = dni;
	}

}
