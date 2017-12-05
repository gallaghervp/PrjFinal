package br.com.chipstore.service;

import java.sql.SQLException;
import java.util.List;

import br.com.chipstore.dao.FabricanteDao;
import br.com.chipstore.dao.factory.DAOFactory;
import br.com.chipstore.dao.factory.MySqlDAOFactory;
import br.com.chipstore.model.Fabricante;


public class FabricanteService {
	private DAOFactory factory;
    FabricanteDao fabricanteDAO;

    public FabricanteService() {
        factory = DAOFactory.getDAOFactory(1);
        fabricanteDAO = factory.getFabricanteDao();
    }

    public long incluir(Fabricante novoFabricante) {
        long codigo = 0;
        try {
			codigo = fabricanteDAO.incluir(novoFabricante);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return codigo;
    }

    public boolean atualizar(Fabricante fabricanteAtualizado) {
        try {
			return fabricanteDAO.atualizar(fabricanteAtualizado);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return false;
    }

    public Fabricante consultarPorCodigo(long codigo) {
        Fabricante fabricante = null;
        try {
			fabricante = fabricanteDAO.consultarPorCodigo(codigo);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return fabricante;
    }

    public Fabricante consultarPorNome(String nome) {
	    Fabricante fabricante = null;
	    try {
			fabricante = fabricanteDAO.consultarPorNome(nome);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	    return fabricante;
    }

    
    public List<Fabricante> listar() {
        List<Fabricante> fabricantes = null;
        try {
			fabricantes = fabricanteDAO.listar();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return fabricantes;
    }

}
