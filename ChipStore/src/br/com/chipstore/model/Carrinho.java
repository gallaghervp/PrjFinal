package br.com.chipstore.model;


public class Carrinho {
	
	private int id;
	private ItemCarrinho itemCarrinho;
	private double valorTotal;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public ItemCarrinho getItemCarrinho() {
		return itemCarrinho;
	}
	
	public void setItemCarrinho(ItemCarrinho itemCarrinho) {
		this.itemCarrinho = itemCarrinho;
	}
	
	public double getValorTotal() {
		return valorTotal;
	}
	
	public void setValorTotal(double valorTotal) {
		this.valorTotal = valorTotal;
	}

	@Override
	public String toString() {
		return "Carrinho [id=" + id + ", itemCarrinho=" + itemCarrinho + ", valorTotal=" + valorTotal + "]";
	}

	
}
