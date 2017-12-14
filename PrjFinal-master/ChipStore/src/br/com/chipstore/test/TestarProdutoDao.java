package br.com.chipstore.test;

import java.sql.SQLException;
import java.util.List;

import br.com.chipstore.dao.ProdutoDao;
import br.com.chipstore.dao.factory.DAOFactory;
import br.com.chipstore.model.Produto;

public class TestarProdutoDao {
	private DAOFactory factory;
	private ProdutoDao produtoDAO;

	public TestarProdutoDao() {
		factory = DAOFactory.getDAOFactory(1);
		produtoDAO = factory.getProdutoDao();
	}

	public long incluir(Produto novaProduto) throws SQLException {
		long numero = 0;
		numero = produtoDAO.incluir(novaProduto);
		return numero;
	}

	public boolean atualizar(Produto produtoAtualizada) throws SQLException {
		return produtoDAO.atualizar(produtoAtualizada);
	}

	public Produto consultarPorCodigoBarras(long codigoBarras) throws SQLException {
		Produto produto = null;
		produto = produtoDAO.consultarPorCodigoBarras(codigoBarras);
		return produto;
	}

	public List<Produto> listar() throws SQLException {
		List<Produto> produtos = null;
		produtos = produtoDAO.listar();
		return produtos;
	}

	public static void main(String[] args) throws SQLException {
		TestarProdutoDao tfd = new TestarProdutoDao();
		
		Produto f = new Produto();
		f.setNome("Placa de som");
		long codigoBarras = tfd.incluir(f);
		
		System.out.println("O codigoBarras foi " + codigoBarras);

	}



}
