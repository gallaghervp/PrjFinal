package br.com.chipstore.model;

import java.util.Date;

public class Usuario {
	
	private String nome;
	private Date dataNascimento;
	private String cpf;
	private String rg;
	private String telefone;
	private String email;
	private String endereco;
	private String complemento;
	private String bairro;
	private String municipio;
	private String estado;
	private String senha;
	
	
	public Usuario() {
		super();
		
	}


	public String getNome() {
		return nome;
	}


	public void setNome(String nome) {
		this.nome = nome;
	}


	public Date getDataNascimento() {
		return dataNascimento;
	}


	public void setDataNascimento(Date dataNascimento) {
		this.dataNascimento = dataNascimento;
	}


	public String getCpf() {
		return cpf;
	}


	public void setCpf(String cpf) {
		this.cpf = cpf;
	}


	public String getRg() {
		return rg;
	}


	public void setRg(String rg) {
		this.rg = rg;
	}


	public String getTelefone() {
		return telefone;
	}


	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getEndereco() {
		return endereco;
	}


	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}


	public String getComplemento() {
		return complemento;
	}


	public void setComplemento(String complemento) {
		this.complemento = complemento;
	}


	public String getBairro() {
		return bairro;
	}


	public void setBairro(String bairro) {
		this.bairro = bairro;
	}


	public String getMunicipio() {
		return municipio;
	}


	public void setMunicipio(String municipio) {
		this.municipio = municipio;
	}


	public String getEstado() {
		return estado;
	}


	public void setEstado(String estado) {
		this.estado = estado;
	}


	public String getSenha() {
		return senha;
	}


	public void setSenha(String senha) {
		this.senha = senha;
	}


	@Override
	public String toString() {
		return "Usuario [nome=" + nome + ", dataNascimento=" + dataNascimento + ", cpf=" + cpf + ", rg=" + rg
				+ ", telefone=" + telefone + ", email=" + email + ", endereco=" + endereco + ", complemento="
				+ complemento + ", bairro=" + bairro + ", municipio=" + municipio + ", estado=" + estado + ", senha="
				+ senha + "]";
	}

	

}
