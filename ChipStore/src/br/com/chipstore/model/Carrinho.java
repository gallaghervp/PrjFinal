package br.com.chipstore.model;

public class Carrinho {
	
	private int id;
	private ItemPedido itemPedido;
	private double valorTotal;
	private int quantidade;

	public Carrinho() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public ItemPedido getItemPedido() {
		return itemPedido;
	}

	public void setItemPedido(ItemPedido itemPedido) {
		this.itemPedido = itemPedido;
	}

	public double getValorTotal() {
		return valorTotal;
	}

	public void setValorTotal(double valorTotal) {
		this.valorTotal = valorTotal;
	}

	public int getQuantidade() {
		return quantidade;
	}

	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}

	@Override
	public String toString() {
		return "Carrinho [id=" + id + ", itemPedido=" + itemPedido + ", valorTotal=" + valorTotal + ", quantidade="
				+ quantidade + "]";
	}
	
}
