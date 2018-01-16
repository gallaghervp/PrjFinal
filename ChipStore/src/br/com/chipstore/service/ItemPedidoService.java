package br.com.chipstore.service;

import java.sql.SQLException;
import java.util.List;


import br.com.chipstore.dao.ItemPedidoDao;
import br.com.chipstore.dao.factory.DAOFactory;
import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Categoria;
import br.com.chipstore.model.ItemCarrinho;
import br.com.chipstore.model.ItemPedido;

public class ItemPedidoService {
	
	private DAOFactory factory;
	ItemPedidoDao itemPedidoDAO;

    public ItemPedidoService() {
        factory = DAOFactory.getDAOFactory(1);
        itemPedidoDAO = factory.getItemPedidoDao();
    }

    public long incluir(long idGerado, ItemCarrinho itemPedido) throws ChipstoreException {
        long id = 0;
        try {
			id = itemPedidoDAO.incluir(idGerado, itemPedido);
			return id;
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }

    public boolean atualizar(ItemPedido itemPedidoAtualizado) throws ChipstoreException {
        try {
			return itemPedidoDAO.atualizar(itemPedidoAtualizado);
		} catch (SQLException e) {
			throw new ChipstoreException();
		}
        
    }
    

    

}

