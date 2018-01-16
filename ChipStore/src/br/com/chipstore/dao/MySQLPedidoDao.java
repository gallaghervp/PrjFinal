package br.com.chipstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.chipstore.dao.factory.MySqlDAOFactory;
import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Administrador;
import br.com.chipstore.model.Pedido;
import br.com.chipstore.model.Produto;

public class MySQLPedidoDao implements PedidoDao{
	
	public void MySQLPedidoDao() {
	}

	@Override
	public long incluir(Pedido pedido) throws SQLException {
		long id = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// incluir pedido
		 
		String sql = "INSERT INTO Pedido (cliente_id, datapedido) VALUES (?,?);";
		pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

		pstmt.setLong(1,  pedido.getCliente().getId());
		pstmt.setDate(2, new java.sql.Date(pedido.getDataPedido().getTime()));
		
		pstmt.execute();

		ResultSet tableKeys = pstmt.getGeneratedKeys();
		tableKeys.next();
		id = tableKeys.getInt(1);

		pedido.setId(id);

		pstmt.close();

		conn.close();
		
		return id;
			
		}
	
	@Override
	public boolean atualizar(Pedido pedido) throws SQLException {
		return false;
	}

	@Override
	public boolean remover(long id) throws SQLException {
		return false;
	}

}
