package br.com.chipstore.model;

import java.io.Serializable;

public class ItemPedido implements Serializable {

	private static final long serialVersionUID = 1L;
	private long id;
	private Produto produto;
	private int quantidade;
	private Pedido pedido;

	public ItemPedido() {
		super();

	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
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

	@Override
	public String toString() {
		return "ItemPedido [id=" + id + ", produto=" + produto + ", quantidade=" + quantidade + "]";
	}
	
	
	
	

}
