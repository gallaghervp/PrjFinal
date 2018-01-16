package br.com.chipstore.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.chipstore.model.Pedido;

public interface PedidoDao {
	public long incluir(Pedido pedido) throws SQLException;
    public boolean atualizar(Pedido pedido) throws SQLException;
    public boolean remover(long matricula) throws SQLException;

}
