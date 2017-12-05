package br.com.chipstore.service;

import java.sql.SQLException;
import java.util.List;

import br.com.chipstore.dao.CategoriaDao;
import br.com.chipstore.dao.factory.DAOFactory;
import br.com.chipstore.dao.factory.MySqlDAOFactory;
import br.com.chipstore.model.Categoria;


public class CategoriaService {
	private DAOFactory factory;
    CategoriaDao categoriaDAO;

    public CategoriaService() {
        factory = DAOFactory.getDAOFactory(1);
        categoriaDAO = factory.getCategoriaDao();
    }

    public long incluir(Categoria novaCategoria) {
        long codigo = 0;
        try {
			codigo = categoriaDAO.incluir(novaCategoria);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return codigo;
    }

    public boolean atualizar(Categoria categoriaAtualizado) {
        try {
			return categoriaDAO.atualizar(categoriaAtualizado);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return false;
    }

    public Categoria consultarPorCodigo(long codigo) {
        Categoria categoria = null;
        try {
			categoria = categoriaDAO.consultarPorCodigo(codigo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return categoria;
    }

    public Categoria consultarPorNome(String nome) {
	    Categoria categoria = null;
	    try {
			categoria = categoriaDAO.consultarPorNome(nome);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return categoria;
    }

    
    public List<Categoria> listar() {
        List<Categoria> categorias = null;
        try {
			categorias = categoriaDAO.listar();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return categorias;
    }

}
