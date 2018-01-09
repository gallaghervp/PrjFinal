package br.com.chipstore.model;

import java.io.Serializable;

public class ItemPedido implements Serializable {

	private static final long serialVersionUID = 1L;
	private int id;
	private Produto produto;
	private double valor;
	
	public ItemPedido() {
		super();
	}
		
	public ItemPedido(int id, Produto produto, double valor) {
		super();
		this.id = id;
		this.produto = produto;
		this.valor = valor;
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

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	@Override
	public String toString() {
		return "ItemPedido [id=" + id + ", produto=" + produto + ", valor=" + valor + "]";
	}
	
	

}
