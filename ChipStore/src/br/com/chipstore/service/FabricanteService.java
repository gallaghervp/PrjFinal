package br.com.chipstore.service;

import java.sql.SQLException;
import java.util.List;

import br.com.chipstore.dao.FabricanteDao;
import br.com.chipstore.dao.factory.DAOFactory;
import br.com.chipstore.dao.factory.MySqlDAOFactory;
import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Fabricante;


public class FabricanteService {
	private DAOFactory factory;
    FabricanteDao fabricanteDAO;

    public FabricanteService() {
        factory = DAOFactory.getDAOFactory(1);
        fabricanteDAO = factory.getFabricanteDao();
    }

    public long incluir(Fabricante novoFabricante) throws ChipstoreException {
        long id = 0;
        try {
			id = fabricanteDAO.incluir(novoFabricante);
			return id;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }

    public boolean atualizar(Fabricante fabricanteAtualizado) throws ChipstoreException {
        try {
			return fabricanteDAO.atualizar(fabricanteAtualizado);
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }

    public Fabricante consultarPorCodigo(long id) throws ChipstoreException {
        Fabricante fabricante = null;
        try {
			fabricante = fabricanteDAO.consultarPorId(id);
			return fabricante;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }

    public Fabricante consultarPorNome(String nome) throws ChipstoreException {
	    Fabricante fabricante = null;
	    try {
			fabricante = fabricanteDAO.consultarPorNome(nome);
			return fabricante;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
	    
    }

    
    public List<Fabricante> listar() throws ChipstoreException {
        List<Fabricante> fabricantes = null;
        try {
			fabricantes = fabricanteDAO.listar();
			return fabricantes;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }

}
