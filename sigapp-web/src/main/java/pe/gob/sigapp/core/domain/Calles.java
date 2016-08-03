package pe.gob.sigapp.core.domain;

import java.io.Serializable;

public class Calles extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 0L;

	private String tipocalle;
	private Distrito distrito;
	private String nombrecalle;
	public String getTipocalle() {
		return tipocalle;
	}
	public void setTipocalle(String tipocalle) {
		this.tipocalle = tipocalle;
	}
	public Distrito getDistrito() {
		return distrito;
	}
	public void setDistrito(Distrito distrito) {
		this.distrito = distrito;
	}
	public String getNombrecalle() {
		return nombrecalle;
	}
	public void setNombrecalle(String nombrecalle) {
		this.nombrecalle = nombrecalle;
	}
	
}
