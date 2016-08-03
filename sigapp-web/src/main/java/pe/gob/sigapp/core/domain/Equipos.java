package pe.gob.sigapp.core.domain;

import java.io.Serializable;

public class Equipos extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 0L;

	private String nombreequi;
	private String descripcionequi;
	private String area;
	public String getNombreequi() {
		return nombreequi;
	}
	public void setNombreequi(String nombreequi) {
		this.nombreequi = nombreequi;
	}
	
	public String getDescripcionequi() {
		return descripcionequi;
	}
	public void setDescripcionequi(String descripcionequi) {
		this.descripcionequi = descripcionequi;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	
}
