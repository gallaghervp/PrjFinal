package br.com.chipstore.model;

import java.io.Serializable;

public class Categoria implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private long codigo;
	private String nome;
	
	public Categoria() {
		super();
	}
	
	public Categoria(long codigo, String nome) {
		super();
		this.codigo = codigo;
		this.nome = nome;
	}

	public long getCodigo() {
		return codigo;
	}
	
	public void setCodigo(long codigo) {
		this.codigo = codigo;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	@Override
	public String toString() {
		return "Categoria [codigo=" + codigo + ", nome=" + nome + "]";
	}
	
	
	
	
	

}
