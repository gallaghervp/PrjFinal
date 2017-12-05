package br.com.chipstore.model;

import java.util.Date;

public  class Administrador extends Usuario{

	private long matricula;

	/**
	 * 
	 */
	private Administrador() {
		super();
		
	}

	public long getMatricula() {
		return matricula;
	}

	public void setMatricula(long matricula) {
		this.matricula = matricula;
	}

	@Override
	public String toString() {
		return "Administrador [matricula=" + matricula + "]";
	}
	
	
	
	
}
