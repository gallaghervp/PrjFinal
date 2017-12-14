package br.com.chipstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.chipstore.dao.factory.MySqlDAOFactory;

import br.com.chipstore.model.Cliente;

public class MySQLClienteDao implements ClienteDao {
	
	public MySQLClienteDao() {
	}

	@Override
	public long incluir(Cliente cliente) throws SQLException {
		long id = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// incluir cliente
		 
		String sql = "INSERT INTO Cliente (nome,datanascimento,cpf,rg,telefone,email,uf,endereco,complemento,bairro,municipio,senha) VALUES (?,?,?,?,?,?,?,?,?,?,?,?);";
		pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

		pstmt.setString(1, cliente.getNome());
		pstmt.setDate(2, new java.sql.Date(cliente.getDataNascimento().getTime()));
		pstmt.setString(3, cliente.getCpf());
		pstmt.setString(4, cliente.getRg());
		pstmt.setString(5, cliente.getTelefone());
		pstmt.setString(6, cliente.getEmail());
		pstmt.setString(7, cliente.getUf());
		pstmt.setString(8, cliente.getEndereco());
		pstmt.setString(9, cliente.getComplemento());
		pstmt.setString(10, cliente.getBairro());
		pstmt.setString(11, cliente.getMunicipio());
		pstmt.setString(12, cliente.getSenha());
		
		pstmt.execute();

		ResultSet tableKeys = pstmt.getGeneratedKeys();
		tableKeys.next();
		id = tableKeys.getInt(1);

		cliente.setId(id);

		pstmt.close();

		conn.close();
		
		return id;
			
	}

	@Override
	public Cliente consultarPorCpf(long cpf) throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Cliente clienteConsultado = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// consultar os Clientes que existem na tabela

		String sql = "SELECT * FROM Cliente  WHERE cpf=" + cpf + ";";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		clienteConsultado = new Cliente();
		
		// Como associar clientes com esse cliente?

		if (rs != null) {
			clienteConsultado.setId(rs.getLong("id"));
			clienteConsultado.setCpf(rs.getString("cpf"));
			clienteConsultado.setNome(rs.getString("nome"));
			clienteConsultado.setRg(rs.getString("rg"));
			clienteConsultado.setDataNascimento(rs.getDate("dataNascimento"));
			clienteConsultado.setEndereco(rs.getString("endereco"));
			clienteConsultado.setMunicipio(rs.getString("municipio"));
			clienteConsultado.setUf(rs.getString("uf"));
			clienteConsultado.setComplemento(rs.getString("complemento"));
			clienteConsultado.setEmail(rs.getString("email"));
			clienteConsultado.setTelefone(rs.getString("telefone"));
			
		}

		rs.close();
		
		stmt.close();
		
		conn.close();

		return clienteConsultado;
	
	}
	
	@Override
	public List<Cliente> listar() throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		List<Cliente> listaClientes = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// listar as clientes que existem na tabela

		String sql = "SELECT * FROM Clientes;";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		if (rs != null) {
			listaClientes = new ArrayList<>();
			while (rs.next()) {
				Cliente cr = new Cliente();
				cr.setId(rs.getLong("id"));
				cr.setNome(rs.getString("nome"));
				
				Cliente cliente = new Cliente();
				
				cr.setDataNascimento(rs.getDate("dataNascimento"));
				cr.setCpf(rs.getString("cpf"));
				cr.setRg(rs.getString("rg"));
				cr.setUf(rs.getString("uf"));
				cr.setEndereco(rs.getString("endereco"));
				cr.setComplemento(rs.getString("complemento"));
				cr.setBairro(rs.getString("bairro"));
				cr.setNome(rs.getString("Municipio"));
				cr.setTelefone(rs.getString("telefone"));
				cr.setEmail(rs.getString("email"));
				
				listaClientes.add(cr);
				
			}
			
		}
		rs.close();
		
		stmt.close();
		
		conn.close();

		return listaClientes;
	}

	@Override
	public boolean atualizar(Cliente cliente) throws SQLException {
		return false;
	}

	@Override
	public boolean remover(long id) throws SQLException {
		return false;
	}

	@Override
	public Cliente consultarPorNome(String nome) throws SQLException {
		return null;
	}

}
