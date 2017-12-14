package br.com.chipstore.service;

import java.sql.SQLException;
import java.util.List;


import br.com.chipstore.dao.AdministradorDao;
import br.com.chipstore.dao.factory.DAOFactory;
import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Administrador;

public class AdministradorService {
	
	private DAOFactory factory;
	AdministradorDao administradorDAO;

    public AdministradorService() {
        factory = DAOFactory.getDAOFactory(1);
        administradorDAO = factory.getAdministradorDao();
    }

    public long incluir(Administrador novoAdministrador) throws ChipstoreException {
        long id = 0;
        try {
			id = administradorDAO.incluir(novoAdministrador);
			return id;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }

    public boolean atualizar(Administrador administradorAtualizado) throws ChipstoreException {
        try {
			return administradorDAO.atualizar(administradorAtualizado);
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }
    
    public Administrador consultarPorNome(String nome) throws ChipstoreException {
	    Administrador administrador = null;
	    try {
			administrador = administradorDAO.consultarPorNome(nome);
			return administrador;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
	    
    }
    
    public Administrador consultarPorMatricula(long matricula) throws ChipstoreException {
	    Administrador administrador = null;
	    try {
			administrador = administradorDAO.consultarPorMatricula(matricula);
			return administrador;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
	    
    }
    
    public List<Administrador> listar() throws ChipstoreException {
        List<Administrador> administradores = null;
        try {
			administradores = administradorDAO.listar();
			return administradores;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }

}
