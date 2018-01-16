package br.com.chipstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import br.com.chipstore.dao.factory.MySqlDAOFactory;
import br.com.chipstore.model.ItemCarrinho;
import br.com.chipstore.model.ItemPedido;

public class MySQLItemPedidoDao implements ItemPedidoDao{
	
	public void MySQLItemItemPedidoDao() {
	}

	@Override
	public long incluir(long idGerado, ItemCarrinho itemPedido) throws SQLException {
		long id = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// incluir itemPedido
		 
		String sql = "INSERT INTO ItemPedido (pedido_id, produto_codigo, quantidade) VALUES (?,?,?);";
		pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

		pstmt.setLong(1,  idGerado);
		pstmt.setLong(2, itemPedido.getProduto().getId());
		pstmt.setInt(3, itemPedido.getProduto().getQuantidade());
		
		pstmt.execute();

		pstmt.close();

		conn.close();
		
		return id;
			
		}


	@Override
	public boolean atualizar(ItemPedido itemPedido) throws SQLException {
		return false;
	}

	@Override
	public boolean remover(long id) throws SQLException {
		return false;
	}

}
