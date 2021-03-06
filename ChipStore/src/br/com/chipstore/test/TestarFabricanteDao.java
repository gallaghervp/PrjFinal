package br.com.chipstore.test;

import java.sql.SQLException;
import java.util.List;

import br.com.chipstore.dao.FabricanteDao;
import br.com.chipstore.dao.factory.DAOFactory;
import br.com.chipstore.model.Fabricante;

public class TestarFabricanteDao {
	private DAOFactory factory;
	private FabricanteDao fabricanteDAO;

	public TestarFabricanteDao() {
		factory = DAOFactory.getDAOFactory(1);
		fabricanteDAO = factory.getFabricanteDao();
	}

	public long incluir(Fabricante novaFabricante) throws SQLException {
		long numero = 0;
		numero = fabricanteDAO.incluir(novaFabricante);
		return numero;
	}

	public boolean atualizar(Fabricante fabricanteAtualizada) throws SQLException {
		return fabricanteDAO.atualizar(fabricanteAtualizada);
	}

	public Fabricante consultarPorId(long id) throws SQLException {
		Fabricante fabricante = null;
		fabricante = fabricanteDAO.consultarPorId(id);
		return fabricante;
	}

	public List<Fabricante> listar() throws SQLException {
		List<Fabricante> fabricantes = null;
		fabricantes = fabricanteDAO.listar();
		return fabricantes;
	}

	public static void main(String[] args) throws SQLException {
		TestarFabricanteDao tfd = new TestarFabricanteDao();
		
		Fabricante f = new Fabricante();
		f.setNome("Caio");
		long id = tfd.incluir(f);
		
		System.out.println("O codigo foi " + id);
		
		f = tfd.consultarPorId(id);
		
		
		System.out.println(f.toString());
		
		List<Fabricante> fabricantes = tfd.listar();
		for(Fabricante fab: fabricantes) {
			System.out.println(fab.toString());
		}

	}



}
