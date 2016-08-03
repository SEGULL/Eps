package pe.gob.sigapp.core.domain;

import java.io.Serializable;

public class Cuadra extends BaseEntity implements Serializable {

	private static final long serialVersionUID = 0L;
	
	private int numerocuadra;
	private Double ancho;
	private String lado;
	private Calles calles;
	
	public int getNumerocuadra() {
		return numerocuadra;
	}
	public void setNumerocuadra(int numerocuadra) {
		this.numerocuadra = numerocuadra;
	}
	public Double getAncho() {
		return ancho;
	}
	public void setAncho(Double ancho) {
		this.ancho = ancho;
	}
	public String getLado() {
		return lado;
	}
	public void setLado(String lado) {
		this.lado = lado;
	}
	public Calles getCalles() {
		return calles;
	}
	public void setCalles(Calles calles) {
		this.calles = calles;
	}
	
}
