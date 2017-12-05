package br.com.chipstore.model;

public class Fabricante {
	
	private long codigo;
	private String nome;
	
	public Fabricante() {
		super();
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
		return "Fabricante [codigo=" + codigo + ", nome=" + nome + "]";
	}
	
	
	


}
