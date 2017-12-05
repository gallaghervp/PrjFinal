package br.com.chipstore.model;

import java.util.Date;

public class Cliente extends Usuario {

	private long id;

	private Cliente() {
		super();
		
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Cliente [id=" + id + "]";
	}

	
	

}
