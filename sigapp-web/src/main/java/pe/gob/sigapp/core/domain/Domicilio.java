package pe.gob.sigapp.core.domain;

import java.io.Serializable;

public class Domicilio extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 0L;

	private String tipodomicilio;
	private String codigoubicacion;
	private Cliente cliente;
	private Cuadra cuadra;
	public String getTipodomicilio() {
		return tipodomicilio;
	}
	public void setTipodomicilio(String tipodomicilio) {
		this.tipodomicilio = tipodomicilio;
	}
	public String getCodigoubicacion() {
		return codigoubicacion;
	}
	public void setCodigoubicacion(String codigoubicacion) {
		this.codigoubicacion = codigoubicacion;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	public Cuadra getCuadra() {
		return cuadra;
	}
	public void setCuadra(Cuadra cuadra) {
		this.cuadra = cuadra;
	}
	
}
