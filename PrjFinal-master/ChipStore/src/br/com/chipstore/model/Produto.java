package br.com.chipstore.model;

public class Produto {
	
	public long id;
	public long codigoBarras;
	public String nome;
	public String modelo;
	public String descricao;
	public double preco;
	public int quantidade;
	public String disponivel;
	public String imagem;
	public Fabricante fabricante;
	public Categoria categoria;
	
	
	public Produto() {
		
		super();
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getCodigoBarras() {
		return codigoBarras;
	}
	public void setCodigoBarras(long codigoBarras) {
		this.codigoBarras = codigoBarras;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public double getPreco() {
		return preco;
	}
	public void setPreco(double preco) {
		this.preco = preco;
	}
	public int getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	public String getDisponivel() {
		return disponivel;
	}
	public void setDisponivel(String disponivel) {
		this.disponivel = disponivel;
	}
	public String getImagem() {
		return imagem;
	}
	public void setImagem(String imagem) {
		this.imagem = imagem;
	}
	public Fabricante getFabricante() {
		return fabricante;
	}
	public void setFabricante(Fabricante fabricante) {
		this.fabricante = fabricante;
	}
	public Categoria getCategoria() {
		return categoria;
	}
	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	@Override
	public String toString() {
		return "Produto [id=" + id + ", codigoBarras=" + codigoBarras + ", nome=" + nome + ", modelo=" + modelo
				+ ", descricao=" + descricao + ", preco=" + preco + ", quantidade=" + quantidade + ", disponivel="
				+ disponivel + ", imagem=" + imagem + ", fabricante=" + fabricante + ", categoria=" + categoria + "]";
	}
	
	
	
	
	
	

	

}
	