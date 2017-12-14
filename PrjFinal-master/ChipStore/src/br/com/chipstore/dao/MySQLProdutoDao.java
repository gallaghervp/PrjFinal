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

		String sql = "INSERT INTO Produto (codigobarra,nome,modelo,descricao,preco,quantidade,disponivel,imagem,) VALUES (?,?,?,?,?,?,?,?,?,?);";
		pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

		pstmt.setLong(1, produto.getCodigoBarras());
		pstmt.setString(2, produto.getNome());
		pstmt.setString(3, produto.getModelo());
		pstmt.setString(4, produto.getDescricao());
		pstmt.setDouble(5, produto.getPreco());
		pstmt.setInt(6, produto.getQuantidade());
		pstmt.setString(7, produto.getDisponivel());
		pstmt.setString(8, produto.getImagem());
		pstmt.setLong(9, produto.getCategoria().getCodigo());
		pstmt.setLong(10, produto.getFabricante().getCodigo());
		
		

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

		// consultar as produtos por código de barras que existem na tabela

		String sql = "SELECT * FROM Produto  WHERE codigoBarras=" + codigoBarras + ";";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		produtoConsultado = new Produto();
		Fabricante fabricante = new Fabricante();
		Categoria categoria = new Categoria();
		
		// Como associar categoria com esse produto?

		if (rs != null) {
			produtoConsultado.setId(rs.getLong("id"));
			produtoConsultado.setCodigoBarras(rs.getLong("codigoBarras"));
			produtoConsultado.setNome(rs.getString("nome"));
			produtoConsultado.setModelo(rs.getString("modelo"));
			produtoConsultado.setDescricao(rs.getString("descricao"));
			produtoConsultado.setPreco(rs.getDouble("preco"));
			produtoConsultado.setQuantidade(rs.getInt("quantidade"));
			produtoConsultado.setDisponivel(rs.getString("disponivel"));
			produtoConsultado.setImagem(rs.getString("imagem"));
			
			fabricante.setCodigo(rs.getLong("codigo"));
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

		String sql = "SELECT * FROM Produto;";
		stmt = conn.createStatement();

		rs = stmt.executeQuery(sql);

		if (rs != null) {
			listaProdutos = new ArrayList<>();
			while (rs.next()) {
				Produto pr = new Produto();
				pr.setId(rs.getLong("id"));
				pr.setCodigoBarras(rs.getLong("codigoBarras"));
				pr.setNome(rs.getString("nome"));
				pr.setModelo(rs.getString("modelo"));
				pr.setDescricao(rs.getString("descricao"));
				pr.setPreco(rs.getDouble("preco"));
				pr.setQuantidade(rs.getInt("quantidade"));
				pr.setDisponivel(rs.getString("disponivel"));
				pr.setImagem(rs.getString("imagem"));
				
				Fabricante fabricante = new Fabricante();
				
				fabricante.setCodigo(rs.getLong("codigo"));
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

}
