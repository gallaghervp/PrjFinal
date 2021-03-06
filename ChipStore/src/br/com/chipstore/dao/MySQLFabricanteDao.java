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
		long id = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();
	
		String sql = "INSERT INTO Fabricante (nome,cnpj, endereco, complemento, bairro, municipio, uf, contato, email, telefone) VALUES (?,?,?,?,?,?,?,?,?,?);";
		pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

		pstmt.setString(1, fabricante.getNome());
		pstmt.setString(2, fabricante.getCnpj());
		pstmt.setString(3, fabricante.getEndereco());
		pstmt.setString(4, fabricante.getComplemento());
		pstmt.setString(5, fabricante.getBairro());
		pstmt.setString(6, fabricante.getMunicipio());
		pstmt.setString(7, fabricante.getUf());
		pstmt.setString(8, fabricante.getContato());
		pstmt.setString(9, fabricante.getEmail());
		pstmt.setString(10, fabricante.getTelefone());

			pstmt.execute();

		ResultSet tableKeys = pstmt.getGeneratedKeys();
		tableKeys.next();
		id = tableKeys.getInt(1);

		fabricante.setId(id);
			
        pstmt.close();

        conn.close();

		return id;
	}

	@Override
	public Fabricante consultarPorId(long id) throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Fabricante fabricanteConsultado = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// consultar por c�digo os fabricantes que existem na tabela

		String sql = "SELECT * FROM Fabricante  WHERE id=" + id + ";";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		fabricanteConsultado = new Fabricante();

		if (rs != null) {
			fabricanteConsultado.setId(rs.getLong("id"));
			fabricanteConsultado.setNome(rs.getString("nome"));
			fabricanteConsultado.setCnpj(rs.getString("cnpj"));
			fabricanteConsultado.setEndereco(rs.getString("endereco"));
			fabricanteConsultado.setComplemento(rs.getString("complemento"));
			fabricanteConsultado.setBairro(rs.getString("bairro"));
			fabricanteConsultado.setMunicipio(rs.getString("municipio"));
			fabricanteConsultado.setUf(rs.getString("uf"));
			fabricanteConsultado.setContato(rs.getString("contato"));
			fabricanteConsultado.setEmail(rs.getString("email"));
			fabricanteConsultado.setTelefone(rs.getString("telefone"));
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
			fabricanteConsultado.setId(rs.getLong("id"));
			fabricanteConsultado.setNome(rs.getString("nome"));
			fabricanteConsultado.setCnpj(rs.getString("cnpj"));
			fabricanteConsultado.setEndereco(rs.getString("endereco"));
			fabricanteConsultado.setComplemento(rs.getString("complemento"));
			fabricanteConsultado.setBairro(rs.getString("bairro"));
			fabricanteConsultado.setMunicipio(rs.getString("municipio"));
			fabricanteConsultado.setUf(rs.getString("uf"));
			fabricanteConsultado.setContato(rs.getString("contato"));
			fabricanteConsultado.setEmail(rs.getString("email"));
			fabricanteConsultado.setTelefone(rs.getString("telefone"));

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
				fa.setId(rs.getLong("id"));
				fa.setNome(rs.getString("nome"));
				fa.setCnpj(rs.getString("cnpj"));
				fa.setEndereco(rs.getString("endereco"));
				fa.setComplemento(rs.getString("complemento"));
				fa.setBairro(rs.getString("bairro"));
				fa.setMunicipio(rs.getString("municipio"));
				fa.setUf(rs.getString("uf"));
				fa.setContato(rs.getString("contato"));
				fa.setEmail(rs.getString("email"));
				fa.setTelefone(rs.getString("telefone"));

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
	public boolean remover(long id) throws SQLException {
		return false;
	}

}
