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
import br.com.chipstore.model.Fabricante;
import br.com.chipstore.model.Produto;

public class MySQLProdutoDao implements ProdutoDao {

	public MySQLProdutoDao() {

	}

	@Override
	public long incluir(Produto produto) throws SQLException {
		long id = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		String sql = "INSERT INTO Produto (codigobarras,nome,modelo,descricao,preco,quantidade,imagem,categoria,fabricante) VALUES (?,?,?,?,?,?,?,?,?);";
		pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

		pstmt.setString(1, produto.getCodigoBarras());
		pstmt.setString(2, produto.getNome());
		pstmt.setString(3, produto.getModelo());
		pstmt.setString(4, produto.getDescricao());
		pstmt.setDouble(5, produto.getPreco());
		pstmt.setInt(6, produto.getQuantidade());
		pstmt.setString(7, produto.getImagem());
		pstmt.setLong(8, produto.getCategoria().getCodigo());
		pstmt.setLong(9, produto.getFabricante().getId());
		
		

		pstmt.execute();

		ResultSet tableKeys = pstmt.getGeneratedKeys();
		tableKeys.next();
		id = tableKeys.getInt(1);

		produto.setId(id);

		pstmt.close();

		conn.close();

		return id;

	}

	@Override
	public Produto consultarPorCodigoBarras(long codigoBarras) throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Produto produtoConsultado = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// consultar as produtos por c�digo de barras que existem na tabela
		String sql = "SELECT * FROM Produto p INNER JOIN Fabricante f ON p.fabricante_id = f.id "
				+ "INNER JOIN Categoria c ON p.categoria_codigo = c.codigo " 
				+ "WHERE codigoBarras=" + codigoBarras + ";";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		produtoConsultado = new Produto();
		Fabricante fabricante = new Fabricante();
		Categoria categoria = new Categoria();
		
		// Como associar categoria com esse produto?

		if (rs != null) {
			rs.next();
			
			produtoConsultado.setId(rs.getLong("id"));
			produtoConsultado.setCodigoBarras(rs.getString("codigoBarras"));
			produtoConsultado.setNome(rs.getString("nome"));
			produtoConsultado.setModelo(rs.getString("modelo"));
			produtoConsultado.setDescricao(rs.getString("descricao"));
			produtoConsultado.setPreco(rs.getDouble("preco"));
			produtoConsultado.setQuantidade(rs.getInt("quantidade"));
			produtoConsultado.setImagem(rs.getString("imagem"));
			
			fabricante.setId(rs.getLong("id"));
			fabricante.setNome(rs.getString("nome"));
			fabricante.setCnpj(rs.getString("cnpj"));
			fabricante.setEndereco(rs.getString("endereco"));
			fabricante.setComplemento(rs.getString("complemento"));
			fabricante.setBairro(rs.getString("bairro"));
			fabricante.setMunicipio(rs.getString("municipio"));
			fabricante.setUf(rs.getString("uf"));
			fabricante.setContato(rs.getString("contato"));
			fabricante.setEmail(rs.getString("email"));
			fabricante.setTelefone(rs.getString("telefone"));
			
			categoria.setCodigo(rs.getLong("codigo"));
		    categoria.setNome(rs.getString("nome"));
		    
		    produtoConsultado.setFabricante(fabricante);
		    produtoConsultado.setCategoria(categoria);

		}

		rs.close();
		
		stmt.close();
		
		conn.close();

		return produtoConsultado;
	}

	@Override
	public List<Produto> listar() throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		List<Produto> listaProdutos = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// listar as produtos que existem na tabela

		String sql = "SELECT * FROM Produto p INNER JOIN Fabricante f ON p.fabricante_id = f.id"
				+ "INNER JOIN Categoria c ON p.categoria_codigo = c.codigo;";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		if (rs != null) {
			listaProdutos = new ArrayList<>();
			while (rs.next()) {
				Produto pr = new Produto();
				pr.setId(rs.getLong("id"));
				pr.setCodigoBarras(rs.getString("codigoBarras"));
				pr.setNome(rs.getString("nome"));
				pr.setModelo(rs.getString("modelo"));
				pr.setDescricao(rs.getString("descricao"));
				pr.setPreco(rs.getDouble("preco"));
				pr.setQuantidade(rs.getInt("quantidade"));
				pr.setImagem(rs.getString("imagem"));
				
				Fabricante fabricante = new Fabricante();
				
				fabricante.setId(rs.getLong("id"));
				fabricante.setNome(rs.getString("nome"));
				fabricante.setCnpj(rs.getString("cnpj"));
				fabricante.setEndereco(rs.getString("endereco"));
				fabricante.setComplemento(rs.getString("complemento"));
				fabricante.setBairro(rs.getString("bairro"));
				fabricante.setMunicipio(rs.getString("municipio"));
				fabricante.setUf(rs.getString("uf"));
				fabricante.setContato(rs.getString("contato"));
				fabricante.setEmail(rs.getString("email"));
				fabricante.setTelefone(rs.getString("telefone"));
				
				
				Categoria categoria = new Categoria();
				categoria.setCodigo(rs.getLong("codigo"));
			    categoria.setNome(rs.getString("nome"));
			    
			    pr.setFabricante(fabricante);
			    pr.setCategoria(categoria);
				
				
				listaProdutos.add(pr);
				
			}
			
		}
		rs.close();
		
		stmt.close();
		
		conn.close();

		return listaProdutos;
	}

	@Override
	public boolean atualizar(Produto produto) throws SQLException {
		return false;
	}

	@Override
	public boolean remover(long id) throws SQLException {
		return false;
	}

	@Override
	public List<Produto> listarProdutoCategoria(long codigoCategoria) throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		List<Produto> listaProdutos = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// listar as produtos que existem na tabela
		
		String sql = "SELECT * FROM Produto p INNER JOIN Fabricante f ON p.fabricante_id = f.id "
				+ "INNER JOIN Categoria c ON p.categoria_codigo = c.codigo " 
				+ "WHERE categoria_codigo = " + codigoCategoria + " ORDER BY p.id;";
		
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		if (rs != null) {
			listaProdutos = new ArrayList<>();
			while (rs.next()) {
				Produto pr = new Produto();
				pr.setId(rs.getLong("id"));
				pr.setCodigoBarras(rs.getString("codigoBarras"));
				pr.setNome(rs.getString("nome"));
				pr.setModelo(rs.getString("modelo"));
				pr.setDescricao(rs.getString("descricao"));
				pr.setPreco(rs.getDouble("preco"));
				pr.setQuantidade(rs.getInt("quantidade"));
				pr.setImagem(rs.getString("imagem"));
				
				Fabricante fabricante = new Fabricante();
				
				fabricante.setId(rs.getLong("id"));
				fabricante.setNome(rs.getString("nome"));
				fabricante.setCnpj(rs.getString("cnpj"));
				fabricante.setEndereco(rs.getString("endereco"));
				fabricante.setComplemento(rs.getString("complemento"));
				fabricante.setBairro(rs.getString("bairro"));
				fabricante.setMunicipio(rs.getString("municipio"));
				fabricante.setUf(rs.getString("uf"));
				fabricante.setContato(rs.getString("contato"));
				fabricante.setEmail(rs.getString("email"));
				fabricante.setTelefone(rs.getString("telefone"));
				
				
				Categoria categoria = new Categoria();
				categoria.setCodigo(rs.getLong("codigo"));
			    categoria.setNome(rs.getString("nome"));
			    
			    pr.setFabricante(fabricante);
			    pr.setCategoria(categoria);
				
				
				listaProdutos.add(pr);
				
			}
			
		}
		rs.close();
		
		stmt.close();
		
		conn.close();

		return listaProdutos;
	}
	
	@Override
	public List<Produto> listarProdutoCarrinho(long id) throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		List<Produto> listaProdutos = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// listar as produtos que existem na tabela
		
		String sql = "SELECT * FROM Produto p INNER JOIN Fabricante f ON p.fabricante_id = f.id"
				+ "INNER JOIN Categoria c ON p.categoria_codigo = c.codigo;";
		
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		if (rs != null) {
			listaProdutos = new ArrayList<>();
			while (rs.next()) {
				Produto pr = new Produto();
				pr.setId(rs.getLong("id"));
				pr.setCodigoBarras(rs.getString("codigoBarras"));
				pr.setNome(rs.getString("nome"));
				pr.setModelo(rs.getString("modelo"));
				pr.setDescricao(rs.getString("descricao"));
				pr.setPreco(rs.getDouble("preco"));
				pr.setQuantidade(rs.getInt("quantidade"));
				pr.setImagem(rs.getString("imagem"));
				
				Fabricante fabricante = new Fabricante();
				
				fabricante.setId(rs.getLong("id"));
				fabricante.setNome(rs.getString("nome"));
				fabricante.setCnpj(rs.getString("cnpj"));
				fabricante.setEndereco(rs.getString("endereco"));
				fabricante.setComplemento(rs.getString("complemento"));
				fabricante.setBairro(rs.getString("bairro"));
				fabricante.setMunicipio(rs.getString("municipio"));
				fabricante.setUf(rs.getString("uf"));
				fabricante.setContato(rs.getString("contato"));
				fabricante.setEmail(rs.getString("email"));
				fabricante.setTelefone(rs.getString("telefone"));
				
				
				Categoria categoria = new Categoria();
				categoria.setCodigo(rs.getLong("codigo"));
			    categoria.setNome(rs.getString("nome"));
			    
			    pr.setFabricante(fabricante);
			    pr.setCategoria(categoria);
				
				
				listaProdutos.add(pr);
				
			}
			
		}
		rs.close();
		
		stmt.close();
		
		conn.close();

		return listaProdutos;
	}

	@Override
	public Produto consultarPorId(long id) throws SQLException {
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;
		Produto produtoConsultado = null;

		// criar a conexao
		conn = MySqlDAOFactory.createConnection();

		// consultar as produtos por c�digo de barras que existem na tabela
		String sql = "SELECT * FROM Produto p INNER JOIN Fabricante f ON p.fabricante_id = f.id "
				+ "INNER JOIN Categoria c ON p.categoria_codigo = c.codigo " 
				+ "WHERE p.id=" + id + ";";
		
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		produtoConsultado = new Produto();
		Fabricante fabricante = new Fabricante();
		Categoria categoria = new Categoria();
		
		// Como associar categoria com esse produto?

		if (rs != null) {
			rs.next();
			
			produtoConsultado.setId(rs.getLong("id"));
			produtoConsultado.setCodigoBarras(rs.getString("codigoBarras"));
			produtoConsultado.setNome(rs.getString("nome"));
			produtoConsultado.setModelo(rs.getString("modelo"));
			produtoConsultado.setDescricao(rs.getString("descricao"));
			produtoConsultado.setPreco(rs.getDouble("preco"));
			produtoConsultado.setQuantidade(rs.getInt("quantidade"));
			produtoConsultado.setImagem(rs.getString("imagem"));
			
			fabricante.setId(rs.getLong("id"));
			fabricante.setNome(rs.getString("nome"));
			fabricante.setCnpj(rs.getString("cnpj"));
			fabricante.setEndereco(rs.getString("endereco"));
			fabricante.setComplemento(rs.getString("complemento"));
			fabricante.setBairro(rs.getString("bairro"));
			fabricante.setMunicipio(rs.getString("municipio"));
			fabricante.setUf(rs.getString("uf"));
			fabricante.setContato(rs.getString("contato"));
			fabricante.setEmail(rs.getString("email"));
			fabricante.setTelefone(rs.getString("telefone"));
			
			categoria.setCodigo(rs.getLong("codigo"));
		    categoria.setNome(rs.getString("nome"));
		    
		    produtoConsultado.setFabricante(fabricante);
		    produtoConsultado.setCategoria(categoria);

		}

		rs.close();
		
		stmt.close();
		
		conn.close();

		return produtoConsultado;
	}

}