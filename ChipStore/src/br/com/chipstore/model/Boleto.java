package br.com.chipstore.model;

import java.io.Serializable;
import java.util.Date;

public class Boleto implements Serializable {

	private static final long serialVersionUID = 1L;
	private int id;
	private Date dataEmissao;
	private double valor;
	private String codigoBarras;
	private Pedido pedido;

	public Boleto() {
		super();
	}

	public Boleto(int id, Date dataEmissao, double valor, String codigoBarras, Pedido pedido) {
		super();
		this.id = id;
		this.dataEmissao = dataEmissao;
		this.valor = valor;
		this.codigoBarras = codigoBarras;
		this.pedido = pedido;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getDataEmissao() {
		return dataEmissao;
	}

	public void setDataEmissao(Date dataEmissao) {
		this.dataEmissao = dataEmissao;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public String getCodigoBarras() {
		return codigoBarras;
	}

	public void setCodigoBarras(String codigoBarras) {
		this.codigoBarras = codigoBarras;
	}

	public Pedido getPedido() {
		return pedido;
	}

	public void setPedido(Pedido pedido) {
		this.pedido = pedido;
	}

	@Override
	public String toString() {
		return "Boleto [id=" + id + ", dataEmissao=" + dataEmissao + ", valor=" + valor + ", codigoBarras="
				+ codigoBarras + ", pedido=" + pedido + "]";
	}
	
	

}
