package br.com.chipstore.service;

import java.sql.SQLException;
import java.util.List;


import br.com.chipstore.dao.PedidoDao;
import br.com.chipstore.dao.factory.DAOFactory;
import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Categoria;
import br.com.chipstore.model.Pedido;

public class PedidoService {
	
	private DAOFactory factory;
	PedidoDao pedidoDAO;

    public PedidoService() {
        factory = DAOFactory.getDAOFactory(1);
        pedidoDAO = factory.getPedidoDao();
    }

    public long incluir(Pedido novoPedido) throws ChipstoreException {
        long id = 0;
        try {
			id = pedidoDAO.incluir(novoPedido);
			return id;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }

    public boolean atualizar(Pedido pedidoAtualizado) throws ChipstoreException {
        try {
			return pedidoDAO.atualizar(pedidoAtualizado);
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }
    

    

}

