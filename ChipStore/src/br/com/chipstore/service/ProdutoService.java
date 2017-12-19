package br.com.chipstore.service;

import java.sql.SQLException;
import java.util.List;


import br.com.chipstore.dao.ProdutoDao;
import br.com.chipstore.dao.factory.DAOFactory;
import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Categoria;
import br.com.chipstore.model.Produto;

public class ProdutoService {
	
	private DAOFactory factory;
	ProdutoDao produtoDAO;

    public ProdutoService() {
        factory = DAOFactory.getDAOFactory(1);
        produtoDAO = factory.getProdutoDao();
    }

    public long incluir(Produto novoProduto) throws ChipstoreException {
        long id = 0;
        try {
			id = produtoDAO.incluir(novoProduto);
			return id;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }

    public boolean atualizar(Produto produtoAtualizado) throws ChipstoreException {
        try {
			return produtoDAO.atualizar(produtoAtualizado);
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }
    
    public Produto consultarPorCodigoBarras(int codigoBarras) throws ChipstoreException {
	    Produto produto = null;
	    try {
			produto = produtoDAO.consultarPorCodigoBarras(codigoBarras);
			return produto;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
	    
    }
    
    public List<Produto> listar() throws ChipstoreException {
        List<Produto> produtos = null;
        try {
			produtos = produtoDAO.listar();
			return produtos;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }
    
    public List<Produto> listarProdutoCategoria(long codigoCategoria) throws ChipstoreException {
        List<Produto> produtos = null;
        try {
			produtos = produtoDAO.listarProdutoCategoria(codigoCategoria);
			return produtos;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }
    
    public List<Produto> listarProdutoCarrinho(long id) throws ChipstoreException {
        List<Produto> produtos = null;
        try {
			produtos = produtoDAO.listarProdutoCategoria(id);
			return produtos;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }
    
    public Produto consultarPorId(long id) throws ChipstoreException {
	    Produto produto = null;
	    try {
			produto = produtoDAO.consultarPorId(id);
			return produto;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
	    
    }
}

