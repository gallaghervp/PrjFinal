package br.com.chipstore.service;

import java.sql.SQLException;
import java.util.List;

import br.com.chipstore.dao.FabricanteDao;
import br.com.chipstore.dao.factory.DAOFactory;
import br.com.chipstore.dao.factory.MySqlDAOFactory;
import br.com.chipstore.exception.ChipstoreExpection;
import br.com.chipstore.model.Fabricante;


public class FabricanteService {
	private DAOFactory factory;
    FabricanteDao fabricanteDAO;

    public FabricanteService() {
        factory = DAOFactory.getDAOFactory(1);
        fabricanteDAO = factory.getFabricanteDao();
    }

    public long incluir(Fabricante novoFabricante) throws ChipstoreExpection {
        long codigo = 0;
        try {
			codigo = fabricanteDAO.incluir(novoFabricante);
		} catch (SQLException e) {
			throw new ChipstoreExpection();
		}
        return codigo;
    }

    public boolean atualizar(Fabricante fabricanteAtualizado) throws ChipstoreExpection {
        try {
			return fabricanteDAO.atualizar(fabricanteAtualizado);
		} catch (SQLException e) {
			throw new ChipstoreExpection();
		}
    }

    public Fabricante consultarPorCodigo(long codigo) throws ChipstoreExpection {
        Fabricante fabricante = null;
        try {
			fabricante = fabricanteDAO.consultarPorCodigo(codigo);
		} catch (SQLException e) {
			throw new ChipstoreExpection();
		}
        return fabricante;
    }

    public Fabricante consultarPorNome(String nome) throws ChipstoreExpection {
	    Fabricante fabricante = null;
	    try {
			fabricante = fabricanteDAO.consultarPorNome(nome);
		} catch (SQLException e) {
			throw new ChipstoreExpection();
		}
	    return fabricante;
    }

    
    public List<Fabricante> listar() throws ChipstoreExpection {
        List<Fabricante> fabricantes = null;
        try {
			fabricantes = fabricanteDAO.listar();
		} catch (SQLException e) {
			throw new ChipstoreExpection();
		}
        return fabricantes;
    }

}
