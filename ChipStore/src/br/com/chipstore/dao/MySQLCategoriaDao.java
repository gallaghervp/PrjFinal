package br.com.chipstore.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import br.com.chipstore.dao.factory.MySqlDAOFactory;
import br.com.chipstore.model.Categoria;

public class MySQLCategoriaDao implements CategoriaDao {

	public MySQLCategoriaDao() {
	}

	@Override
	public long incluir(Categoria categoria) throws SQLException {
		long codigo = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// incluir categoria
		try {
			String sql = "INSERT INTO Categoria (nome) VALUES (?);";
			pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
	
			pstmt.setString(1, categoria.getNome());
	
			pstmt.execute();
	
			ResultSet tableKeys = pstmt.getGeneratedKeys();
			tableKeys.next();
			codigo = tableKeys.getInt(1);
	
			categoria.setCodigo(codigo);
	
			} catch (SQLException e) {
		        System.out.println("Erro ao conectar o SGBD MySQL: " + e);
		
		    } finally {
		        // fechar a conexao com o banco de dados
		        if (pstmt != null) {
		            try {
		                pstmt.close();
		            } catch (SQLException e) {
		                System.out.println("Erro ao fechar o statement: " + e);
		            }
		        }
		        if (conn != null) {
		            try {
		                conn.close();
		            } catch (SQLException e) {
		                System.out.println("Erro a conexao com o SGBD: " + e);
		            }
		        }
		    }

		return codigo;

	}

	@Override
	public Categoria consultarPorCodigo(long codigo) throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Categoria categoriaConsultada = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// consultar as categorias por código que existem na tabela
		try {
			String sql = "SELECT * FROM Categoria  WHERE codigo=" + codigo + ";";
			stmt = conn.createStatement();

			rs = stmt.executeQuery(sql);

			categoriaConsultada = new Categoria();

			if (rs != null) {
				categoriaConsultada.setCodigo(rs.getLong("codigo"));
				categoriaConsultada.setNome(rs.getString("nome"));

			}
			
			rs.close();
			
			} catch (SQLException e) {
		        System.out.println("Erro ao conectar o SGBD MySQL: " + e);
				
		    } finally {
		        // fechar a conexao com o banco de dados
		        if (stmt != null) {
		            try {
		                stmt.close();
		            } catch (SQLException e) {
		                System.out.println("Erro ao fechar o statement: " + e);
		            }
		        }
		        if (conn != null) {
		            try {
		                conn.close();
		            } catch (SQLException e) {
		                System.out.println("Erro a conexao com o SGBD: " + e);
		            }
		        }
		    }

		return categoriaConsultada;
	}
	
	@Override
	public Categoria consultarPorNome(String nome) throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Categoria categoriaConsultada = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// consultar as categorias por código que existem na tabela
		try {
			String sql = "SELECT * FROM Categoria  WHERE nome=" + nome + ";";
			stmt = conn.createStatement();

			rs = stmt.executeQuery(sql);

			categoriaConsultada = new Categoria();

			if (rs != null) {
				categoriaConsultada.setCodigo(rs.getLong("codigo"));
				categoriaConsultada.setNome(rs.getString("nome"));

			}
			
			rs.close();
			
			} catch (SQLException e) {
		        System.out.println("Erro ao conectar o SGBD MySQL: " + e);
				
		    } finally {
		        // fechar a conexao com o banco de dados
		        if (stmt != null) {
		            try {
		                stmt.close();
		            } catch (SQLException e) {
		                System.out.println("Erro ao fechar o statement: " + e);
		            }
		        }
		        if (conn != null) {
		            try {
		                conn.close();
		            } catch (SQLException e) {
		                System.out.println("Erro a conexao com o SGBD: " + e);
		            }
		        }
		    }

		return categoriaConsultada;
	}

	@Override
	public List<Categoria> listar() throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		List<Categoria> listaCategorias = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// listar as categorias que existem na tabela
		try {
			
		String sql = "SELECT * FROM Categoria;";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		if (rs != null) {
			listaCategorias = new ArrayList<>();
			while (rs.next()) {
				Categoria fa = new Categoria();
				fa.setCodigo(rs.getLong("codigo"));
				fa.setNome(rs.getString("nome"));

				listaCategorias.add(fa);
			}
		}
		rs.close();
		
		} catch (SQLException e) {
	        System.out.println("Erro ao conectar o SGBD MySQL: " + e);
			
	    } finally {
	        // fechar a conexao com o banco de dados
	        if (stmt != null) {
	            try {
	                stmt.close();
	            } catch (SQLException e) {
	                System.out.println("Erro ao fechar o statement: " + e);
	            }
	        }
	        if (conn != null) {
	            try {
	                conn.close();
	            } catch (SQLException e) {
	                System.out.println("Erro a conexao com o SGBD: " + e);
	            }
	        }
	    }

		return listaCategorias;
	}

	@Override
	public boolean atualizar(Categoria categoria) throws SQLException {
		return false;
	}

	@Override
	public boolean remover(long codigo) throws SQLException {
		return false;
	}

}
