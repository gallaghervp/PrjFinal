package br.com.chipstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.chipstore.dao.factory.MySqlDAOFactory;
import br.com.chipstore.model.Fabricante;

public class MySQLFabricanteDao implements FabricanteDao {

	public MySQLFabricanteDao() {

	}

	@Override
	public long incluir(Fabricante fabricante) throws SQLException {
		long codigo = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();
	
		String sql = "INSERT INTO Fabricante (nome) VALUES (?);";
		pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

		pstmt.setString(1, fabricante.getNome());

		pstmt.execute();

		ResultSet tableKeys = pstmt.getGeneratedKeys();
		tableKeys.next();
		codigo = tableKeys.getInt(1);

		fabricante.setCodigo(codigo);
			
        pstmt.close();

        conn.close();

		return codigo;
	}

	@Override
	public Fabricante consultarPorCodigo(long codigo) throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Fabricante fabricanteConsultado = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// consultar por código os fabricantes que existem na tabela

		String sql = "SELECT * FROM Fabricante  WHERE codigo=" + codigo + ";";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		fabricanteConsultado = new Fabricante();

		if (rs != null) {
			fabricanteConsultado.setCodigo(rs.getLong("codigo"));
			fabricanteConsultado.setNome(rs.getString("nome"));
		}
			
		rs.close();

        stmt.close();

        conn.close();
		
		return fabricanteConsultado;
	}
	
	@Override
	public Fabricante consultarPorNome(String nome) throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Fabricante fabricanteConsultado = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// consultar por nome os fabricantes que existem na tabela

		String sql = "SELECT * FROM Fabricante  WHERE nome=" + nome + ";";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		fabricanteConsultado = new Fabricante();

		if (rs != null) {
			fabricanteConsultado.setCodigo(rs.getLong("codigo"));
			fabricanteConsultado.setNome(rs.getString("nome"));

		}

		rs.close();
			
        stmt.close();

        conn.close();
		
		return fabricanteConsultado;
	}

	@Override
	public List<Fabricante> listar() throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		List<Fabricante> listaFabricantes = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// consultar os alunos que existem na tabela

		String sql = "SELECT * FROM Fabricante;";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		if (rs != null) {
			listaFabricantes = new ArrayList<>();
			while (rs.next()) {
				Fabricante fa = new Fabricante();
				fa.setCodigo(rs.getLong("codigo"));
				fa.setNome(rs.getString("nome"));

				listaFabricantes.add(fa);
			}
		}
		rs.close();
		
		stmt.close();

        conn.close();

		return listaFabricantes;
	}

	@Override
	public boolean atualizar(Fabricante fabricante) throws SQLException {
		return false;
	}

	@Override
	public boolean remover(long codigo) throws SQLException {
		return false;
	}

}
