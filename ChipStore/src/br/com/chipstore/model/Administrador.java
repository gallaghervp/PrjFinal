package br.com.chipstore.model;

public  class Administrador{

	private long matricula;
	private String nome;
	private String cpf;
	private String email;
	private String telefone;
	private String senha;
	
	public Administrador() {
		super();
	}

	public Administrador(long matricula, String nome, String cpf, String email, String telefone, String senha) {
		super();
		this.matricula = matricula;
		this.nome = nome;
		this.cpf = cpf;
		this.email = email;
		this.telefone = telefone;
		this.senha = senha;
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
	
	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
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
