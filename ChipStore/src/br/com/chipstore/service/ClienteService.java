package br.com.chipstore.service;

import java.sql.SQLException;
import java.util.List;


import br.com.chipstore.dao.ClienteDao;
import br.com.chipstore.dao.factory.DAOFactory;
import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Cliente;

public class ClienteService {
	
	private DAOFactory factory;
	ClienteDao clienteDAO;

    public ClienteService() {
        factory = DAOFactory.getDAOFactory(1);
        clienteDAO = factory.getClienteDao();
    }

    public long incluir(Cliente novoCliente) throws ChipstoreException {
        long id = 0;
        try {
			id = clienteDAO.incluir(novoCliente);
			return id;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }

    public boolean atualizar(Cliente clienteAtualizado) throws ChipstoreException {
        try {
			return clienteDAO.atualizar(clienteAtualizado);
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }
    
    public Cliente consultarPorCpf(long cpf) throws ChipstoreException {
	    Cliente cliente = null;
	    try {
			cliente = clienteDAO.consultarPorCpf(cpf);
			return cliente;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
	    
    }
    
    public Cliente consultarPorNome(String nome) throws ChipstoreException {
	    Cliente cliente = null;
	    try {
			cliente = clienteDAO.consultarPorNome(nome);
			return cliente;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
	    
    }
    
    public Cliente consultarPorEmail(String email) throws ChipstoreException {
	    Cliente cliente = null;
	    try {
			cliente = clienteDAO.consultarPorEmail(email);
			return cliente;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
	    
    }
    
    public List<Cliente> listar() throws ChipstoreException {
        List<Cliente> clientes = null;
        try {
			clientes = clienteDAO.listar();
			return clientes;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }
    
    public String recuperarSenha(String email)  throws ChipstoreException {
	    String  senha = null;
	    try {
			senha = clienteDAO.recuperarSenha(email);
			return senha;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
	    
    }

}
