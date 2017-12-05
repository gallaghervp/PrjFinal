package br.com.chipstore.model;

public class Produto {
	
	private long id;
	private long codigoBarras;
	private String nome;
	private Categoria categoria;
	private double preco;
	private boolean disponivel;
	private String imagem;
	private long quantidade;
	
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
	
	public Categoria getCategoria() {
		return categoria;
	}
	public void setCategoria(Categoria categoria) {
		this.categoria = categoria;
	}
	public double getPreco() {
		return preco;
	}
	public void setPreco(double preco) {
		this.preco = preco;
	}
	public boolean isDisponivel() {
		return disponivel;
	}
	public void setDisponivel(boolean disponivel) {
		this.disponivel = disponivel;
	}
	public String getImagem() {
		return imagem;
	}
	public void setImagem(String imagem) {
		this.imagem = imagem;
	}
	public long getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(long quantidade) {
		this.quantidade = quantidade;
	}
	
	@Override
	public String toString() {
		return "Produto [id=" + id + ",codigoBarras=" + codigoBarras + ", nome=" + nome + ", categoria=" + categoria + ", "
				+ "preco=" + preco + ", disponivel=" + disponivel + ", imagem=" + imagem + ", quantidade=" + quantidade + "]";
	}
	
	
	


}
