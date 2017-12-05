package br.com.chipstore.dao.factory;

import br.com.chipstore.dao.CategoriaDao;
import br.com.chipstore.dao.FabricanteDao;
import br.com.chipstore.dao.ProdutoDao;

public abstract class DAOFactory {
    // lista de tipos de DAO por SGBD
    public static final int MYSQL = 1;
    

    // metodo para criar a fabrica correspondente
    public abstract FabricanteDao getFabricanteDao();
    
    public abstract CategoriaDao getCategoriaDao();

    public abstract ProdutoDao getProdutoDao();

    // metodo que retorna a fabrica correspondente
    public static DAOFactory getDAOFactory(int fabrica) {

        switch (fabrica) {
            case MYSQL:
                return new MySqlDAOFactory();
            
            default:
                return null;
        }
    }
}
