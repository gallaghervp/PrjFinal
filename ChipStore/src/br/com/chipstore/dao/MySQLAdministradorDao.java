package br.com.chipstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.chipstore.dao.factory.MySqlDAOFactory;
import br.com.chipstore.model.Administrador;

public class MySQLAdministradorDao implements AdministradorDao{
	
	public void MySQLAdministradorDao() {
	}

	@Override
	public long incluir(Administrador administrador) throws SQLException {
		long matricula = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// incluir administrador
		 
		String sql = "INSERT INTO Administrador (nome, cpf, senha, email, telefone) VALUES (?,?,?,?,?);";
		pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

		pstmt.setString(1,  administrador.getNome());
		pstmt.setString(2,  administrador.getCpf());
		pstmt.setString(3, administrador.getSenha());
		pstmt.setString(4, administrador.getEmail());
		pstmt.setString(5, administrador.getTelefone());
		
		
		
		pstmt.execute();

		ResultSet tableKeys = pstmt.getGeneratedKeys();
		tableKeys.next();
		matricula = tableKeys.getInt(1);

		administrador.setMatricula(matricula);

		pstmt.close();

		conn.close();
		
		return matricula;
			
		}
	

	@Override
	public Administrador consultarPorMatricula(long matricula) throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Administrador administradorConsultado = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// consultar os Administradoress que existem na tabela

		String sql = "SELECT * FROM Administrador  WHERE matricula=" + matricula + ";";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		administradorConsultado = new Administrador();
		
		// Como associar administradores com esse administrador?

		if (rs != null) {
			administradorConsultado.setMatricula(rs.getLong("matricula"));
			administradorConsultado.setNome(rs.getString("nome"));
			administradorConsultado.setCpf(rs.getString("cpf"));
			administradorConsultado.setEmail(rs.getString("email"));
			administradorConsultado.setTelefone(rs.getString("telefone"));
			
		}

		rs.close();
		
		stmt.close();
		
		conn.close();

		return administradorConsultado;
		
	}

	@Override
	public Administrador consultarPorNome(String nome) throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Administrador administradorConsultado = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// consultar os Administradoress que existem na tabela

		String sql = "SELECT * FROM Administrador  WHERE nome=" + nome + ";";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		administradorConsultado = new Administrador();
		
		// Como associar administradores com esse administrador?

		if (rs != null) {
			administradorConsultado.setMatricula(rs.getLong("matricula"));
			administradorConsultado.setNome(rs.getString("nome"));
			administradorConsultado.setCpf(rs.getString("cpf"));
			administradorConsultado.setEmail(rs.getString("email"));
			administradorConsultado.setTelefone(rs.getString("telefone"));
			
		}

		rs.close();
		
		stmt.close();
		
		conn.close();

		return administradorConsultado;
	}
	
	public Administrador consultarPorCpf(String cpf) throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Administrador administradorConsultado = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// consultar os Administradoress que existem na tabela

		String sql = "SELECT * FROM Administrador  WHERE cpf=" + cpf + ";";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		administradorConsultado = new Administrador();
		
		// Como associar administradores com esse administrador?

		if (rs != null) {
			administradorConsultado.setMatricula(rs.getLong("matricula"));
			administradorConsultado.setNome(rs.getString("nome"));
			administradorConsultado.setCpf(rs.getString("cpf"));
			administradorConsultado.setEmail(rs.getString("email"));
			administradorConsultado.setTelefone(rs.getString("telefone"));
			
		}

		rs.close();
		
		stmt.close();
		
		conn.close();

		return administradorConsultado;
	}

	@Override
	public List<Administrador> listar() throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		List<Administrador> listaAdministrador = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// listar os Administradores que existem na tabela

		String sql = "SELECT * FROM Administrador;";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		if (rs != null) {
			listaAdministrador = new ArrayList<>();
			while (rs.next()) {
				Administrador ar = new Administrador();
				ar.setMatricula(rs.getLong("matricula"));
				ar.setNome(rs.getString("nome"));
				
				Administrador administrador = new Administrador();
				
				ar.setTelefone(rs.getString("telefone"));
				ar.setEmail(rs.getString("email"));
				
				listaAdministrador.add(ar);
			}
		}
		rs.close();
		
		stmt.close();
		
		conn.close();

		return listaAdministrador;
	}

	@Override
	public boolean atualizar(Administrador administrador) throws SQLException {
		return false;
	}

	@Override
	public boolean remover(long matricula) throws SQLException {
		return false;
	}

}
