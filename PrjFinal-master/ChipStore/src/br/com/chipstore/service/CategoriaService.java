package br.com.chipstore.service;

import java.sql.SQLException;
import java.util.List;

import br.com.chipstore.dao.CategoriaDao;
import br.com.chipstore.dao.factory.DAOFactory;
import br.com.chipstore.dao.factory.MySqlDAOFactory;
import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Categoria;


public class CategoriaService {
	private DAOFactory factory;
    CategoriaDao categoriaDAO;

    public CategoriaService() {
        factory = DAOFactory.getDAOFactory(1);
        categoriaDAO = factory.getCategoriaDao();
    }

    public long incluir(Categoria novaCategoria) throws ChipstoreException {
    	long codigo = 0;
    	try {
    		codigo = categoriaDAO.incluir(novaCategoria);
    		return codigo;
    	} catch (SQLException e) {
    		throw new ChipstoreException("Houve erro na inclusão da categoria", e);
    	}
	      
    }

  //    public long incluir(Categoria novaCategoria) throws ChipStoreException {
//        long codigo = 0;
//        try {
//			codigo = categoriaDAO.incluir(novaCategoria);
//	  		return codigo;
//		} catch (SQLException e) {
//			throw new ChipStoreException("Erro na inclusão de Categoria", e);
//		}
//        
//    }

    public boolean atualizar(Categoria categoriaAtualizada) throws ChipstoreException {
    	try {
    		return categoriaDAO.atualizar(categoriaAtualizada);
    	} catch (SQLException e) {
    		throw new ChipstoreException("Houve erro na atualização da categoria", e);
    	}
    	
    	
    }

    public Categoria consultarPorCodigo(long codigo) throws ChipstoreException {
        Categoria categoria = null;
        try {
			categoria = categoriaDAO.consultarPorCodigo(codigo);
			return categoria;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }

    public Categoria consultarPorNome(String nome) throws ChipstoreException {
	    Categoria categoria = null;
	    try {
			categoria = categoriaDAO.consultarPorNome(nome);
			return categoria;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
	    
    }

    
    public List<Categoria> listar() throws ChipstoreException {
        List<Categoria> categorias = null;
        try {
			categorias = categoriaDAO.listar();
			return categorias;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }

}
