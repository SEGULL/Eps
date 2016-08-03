package pe.gob.sigapp.core.domain;

import java.io.Serializable;

public class Servicios extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 0L;
	private String nombreser;
	private String tiposervicios;

	public String getNombreser() {
		return nombreser;
	}

	public void setNombreser(String nombreser) {
		this.nombreser = nombreser;
	}

	public String getTiposervicios() {
		return tiposervicios;
	}

	public void setTiposervicios(String tiposervicios) {
		this.tiposervicios = tiposervicios;
	}

}
