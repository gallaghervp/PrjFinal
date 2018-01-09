package br.com.chipstore.model;

import java.io.Serializable;

public class ItemCarrinho implements Serializable {

	private static final long serialVersionUID = 1L;
	private Produto produto;
	private int quantidade;
	private double preco;
	private double valorTotal;
	
	public ItemCarrinho() {
		super();
	}

	public ItemCarrinho(Produto produto) {
		this.produto = produto;
		this.quantidade = 1;
		atualizarPreco();
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
		atualizarPreco();
	}
	
	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public void incrementaQuantidade() {
		this.quantidade++;
		atualizarPreco();
	}

	public void decrementaQuantidade() {
		this.quantidade--;
		atualizarPreco();
	}
	
	public void atualizarPreco() {
		this.preco = this.quantidade * this.produto.getPreco();
	}
	
	public double somarValorTotal() {
		valorTotal = valorTotal + this.preco;
		
		return valorTotal;
	}
	
	public double subtrairValorTotal() {
		valorTotal = valorTotal - this.preco;
		
		return valorTotal;
	}

}
