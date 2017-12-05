package br.com.chipstore.test;

import java.sql.SQLException;
import java.util.List;

import br.com.chipstore.dao.CategoriaDao;
import br.com.chipstore.dao.factory.DAOFactory;
import br.com.chipstore.model.Categoria;

public class TestarCategoriaDao {
	private DAOFactory factory;
	private CategoriaDao categoriaDAO;

	public TestarCategoriaDao() {
		factory = DAOFactory.getDAOFactory(1);
		categoriaDAO = factory.getCategoriaDao();
	}

	public long incluir(Categoria novaCategoria) throws SQLException {
		long numero = 0;
		numero = categoriaDAO.incluir(novaCategoria);
		return numero;
	}

	public boolean atualizar(Categoria categoriaAtualizada) throws SQLException {
		return categoriaDAO.atualizar(categoriaAtualizada);
	}

	public Categoria consultarPorCodigo(long codigo) throws SQLException {
		Categoria categoria = null;
		categoria = categoriaDAO.consultarPorCodigo(codigo);
		return categoria;
	}

	public List<Categoria> listar() throws SQLException {
		List<Categoria> categorias = null;
		categorias = categoriaDAO.listar();
		return categorias;
	}

	public static void main(String[] args) throws SQLException {
		TestarCategoriaDao tfd = new TestarCategoriaDao();
		
		Categoria f = new Categoria();
		f.setNome("Placa de vídeo");
		long codigo = tfd.incluir(f);
		
		System.out.println("O codigo foi " + codigo);

	}



}
