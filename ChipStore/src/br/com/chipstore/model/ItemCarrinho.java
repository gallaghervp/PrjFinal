package br.com.chipstore.model;

public class ItemCarrinho {
	
	private int id;
	private Produto produto;
	private int quantidade;
	
	public ItemCarrinho(Produto produto2) {
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public Produto getProduto() {
		return produto;
	}
	
	public void setProduto(Produto produto) {
		this.produto = produto;
	}
	
	public int getQuantidade() {
		return quantidade;
	}
	
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
	
	public void aumentarQuantidade() {
		quantidade++;
	}
	
	public void diminuirQuantidade() {
		quantidade--;
	}

	@Override
	public String toString() {
		return "ItemCarrinho [id=" + id + ", produto=" + produto + ", quantidade=" + quantidade + "]";
	}
	
	
}
