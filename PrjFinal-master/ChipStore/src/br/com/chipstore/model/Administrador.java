package br.com.chipstore.model;

import java.util.Date;

public  class Administrador{

	private long matricula;
	private String nome;
	private String email;
	private String telefone;
	private String senha;
	
	public Administrador() {
		super();
	}

	public long getMatricula() {
		return matricula;
	}

	public void setMatricula(long matricula) {
		this.matricula = matricula;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	@Override
	public String toString() {
		return "Administrador [matricula=" + matricula + ", nome=" + nome + ", email=" + email + ", telefone="
				+ telefone + ", senha=" + senha + "]";
	}
	
	
	
	
	
	
}
