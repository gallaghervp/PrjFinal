package br.com.chipstore.model;

import java.util.Date;

public class Pedido {
	
	private int id;
	private Date dataPedido;
	private Cliente cliente;

	public Pedido() {
		super();
	}
	
	public Pedido(int id, Date dataPedido, Cliente cliente) {
		super();
		this.id = id;
		this.dataPedido = dataPedido;
		this.cliente = cliente;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDataPedido() {
		return dataPedido;
	}

	public void setDataPedido(Date dataPedido) {
		this.dataPedido = dataPedido;
	}

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	@Override
	public String toString() {
		return "Pedido [id=" + id + ", dataPedido=" + dataPedido + ", cliente=" + cliente + "]";
	}

}
