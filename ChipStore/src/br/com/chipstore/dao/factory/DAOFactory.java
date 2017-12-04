package br.com.chipstore.dao.factory;


public abstract class DAOFactory {
    // lista de tipos de DAO por SGBD
    public static final int MYSQL = 1;
    

    // metodo para criar a fabrica correspondente
    //public abstract ApoliceDAO getApoliceDAO();
    //public abstract SeguradoDAO getSeguradoDAO();

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
