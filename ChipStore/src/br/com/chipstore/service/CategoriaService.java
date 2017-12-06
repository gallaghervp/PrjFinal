package br.com.chipstore.service;

import java.sql.SQLException;
import java.util.List;

import br.com.chipstore.dao.CategoriaDao;
import br.com.chipstore.dao.factory.DAOFactory;
import br.com.chipstore.dao.factory.MySqlDAOFactory;
import br.com.chipstore.exception.ChipstoreExpection;
import br.com.chipstore.model.Categoria;


public class CategoriaService {
	private DAOFactory factory;
    CategoriaDao categoriaDAO;

    public CategoriaService() {
        factory = DAOFactory.getDAOFactory(1);
        categoriaDAO = factory.getCategoriaDao();
    }

    public long incluir(Categoria novaCategoria) throws ChipstoreExpection {
    	
        long codigo = 0;
        try {
			codigo = categoriaDAO.incluir(novaCategoria);
		} catch (SQLException e) {
			throw new ChipstoreExpection("Houve erro na inclusão da categoria", e);
		}
        return codigo;
    }

    public boolean atualizar(Categoria categoriaAtualizada) throws ChipstoreExpection {
        try {
			return categoriaDAO.atualizar(categoriaAtualizada);
		} catch (SQLException e) {
			throw new ChipstoreExpection();
		}
    }

    public Categoria consultarPorCodigo(long codigo) throws ChipstoreExpection {
        Categoria categoria = null;
        try {
			categoria = categoriaDAO.consultarPorCodigo(codigo);
		} catch (SQLException e) {
			throw new ChipstoreExpection();
		}
        return categoria;
    }

    public Categoria consultarPorNome(String nome) throws ChipstoreExpection {
	    Categoria categoria = null;
	    try {
			categoria = categoriaDAO.consultarPorNome(nome);
		} catch (SQLException e) {
			throw new ChipstoreExpection();
		}
	    return categoria;
    }

    
    public List<Categoria> listar() throws ChipstoreExpection {
        List<Categoria> categorias = null;
        try {
			categorias = categoriaDAO.listar();
		} catch (SQLException e) {
			throw new ChipstoreExpection();
		}
        return categorias;
    }

}
