package br.com.chipstore.model;

public class Fabricante {
	
	private long id;
	private String nome;
	private String cnpj;
	private String endereco;
	private String complemento;
	private String bairro;
	private String municipio;
	private String uf;
	private String contato;
	private String email;
	private String telefone;
	
	public Fabricante() {
		super();
	}
	
	public Fabricante(long id, String nome, String cnpj, String endereco, String complemento, String bairro,
			String municipio, String uf, String contato, String email, String telefone) {
		super();
		this.id = id;
		this.nome = nome;
		this.cnpj = cnpj;
		this.endereco = endereco;
		this.complemento = complemento;
		this.bairro = bairro;
		this.municipio = municipio;
		this.uf = uf;
		this.contato = contato;
		this.email = email;
		this.telefone = telefone;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
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

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public String getContato() {
		return contato;
	}

	public void setContato(String contato) {
		this.contato = contato;
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

	@Override
	public String toString() {
		return "Fabricante [id=" + id + ", nome=" + nome + ", cnpj=" + cnpj + ", endereco=" + endereco
				+ ", complemento=" + complemento + ", bairro=" + bairro + ", municipio=" + municipio + ", uf=" + uf
				+ ", contato=" + contato + ", email=" + email + ", telefone=" + telefone + "]";
	}



	
	
	
	


}
