package br.com.chipstore.dao;

import java.sql.SQLException;

import br.com.chipstore.model.ItemCarrinho;
import br.com.chipstore.model.ItemPedido;

public interface ItemPedidoDao {
	public long incluir(long idGerado, ItemCarrinho itemPedido) throws SQLException;
    public boolean atualizar(ItemPedido itemPedido) throws SQLException;
    public boolean remover(long matricula) throws SQLException;

}
