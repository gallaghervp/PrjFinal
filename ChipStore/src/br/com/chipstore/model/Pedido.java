package br.com.chipstore.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class Pedido implements Serializable {

	private static final long serialVersionUID = 1L;
	private long id;
	private Date dataPedido;
	private Cliente cliente;
	private List<ItemPedido> listaItens;

	public Pedido() {
		super();
	}
	
	public Pedido(int id, Date dataPedido, Cliente cliente) {
		super();
		this.id = id;
		this.dataPedido = dataPedido;
		this.cliente = cliente;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
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
	

	public List<ItemPedido> getListaItens() {
		return listaItens;
	}

	public void setListaItens(List<ItemPedido> listaItens) {
		this.listaItens = listaItens;
	}

	@Override
	public String toString() {
		return "Pedido [id=" + id + ", dataPedido=" + dataPedido + ", cliente=" + cliente + ", listaItens=" + listaItens
				+ "]";
	}



}
