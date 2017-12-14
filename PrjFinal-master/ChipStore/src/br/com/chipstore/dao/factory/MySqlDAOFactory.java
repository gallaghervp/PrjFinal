package br.com.chipstore.dao.factory;

import java.io.FileNotFoundException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import br.com.chipstore.dao.AdministradorDao;
import br.com.chipstore.dao.CategoriaDao;
import br.com.chipstore.dao.ClienteDao;
import br.com.chipstore.dao.FabricanteDao;
import br.com.chipstore.dao.MySQLAdministradorDao;
import br.com.chipstore.dao.MySQLCategoriaDao;
import br.com.chipstore.dao.MySQLClienteDao;
import br.com.chipstore.dao.MySQLFabricanteDao;
import br.com.chipstore.dao.MySQLProdutoDao;
import br.com.chipstore.dao.ProdutoDao;

public class MySqlDAOFactory extends DAOFactory {
    public static final String DBDRIVER = "com.mysql.jdbc.Driver";
    public static final String DBURL = "jdbc:mysql://localhost:3306/projetofinal";

    public static Connection createConnection() {
        Connection conn = null;
        // carregar o Driver para conexao com o banco de dados
        try {
            Class.forName(DBDRIVER);
            System.out.println("\nDriver carregado");

            // criar conexao com o banco de dados
            conn = DriverManager.getConnection(DBURL, "root", "");
            conn.setAutoCommit(true);
            
            System.out.println("Conexao criada");

        } catch (ClassNotFoundException e) {
            System.out.println("Erro ao carregar driver: " + e);
        } catch (SQLException e) {
            System.out.println("Erro ao conectar o SGBD MySQL: " + e);
        }

        return conn;
    }

	@Override
	public FabricanteDao getFabricanteDao() {
		return new MySQLFabricanteDao();
	}
	
	@Override
	public CategoriaDao getCategoriaDao() {
		return new MySQLCategoriaDao();
	}
	
	@Override
	public ProdutoDao getProdutoDao() {
		return new MySQLProdutoDao();
	}
	
	@Override
	public AdministradorDao getAdministradorDao() {
		return new MySQLAdministradorDao();
	}
	
	@Override
	public ClienteDao getClienteDao() {
		return new MySQLClienteDao();
	}


}