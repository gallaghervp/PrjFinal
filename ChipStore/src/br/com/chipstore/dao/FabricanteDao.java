package br.com.chipstore.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.chipstore.model.Fabricante;

public interface FabricanteDao {
	public long incluir(Fabricante fabricante) throws SQLException;
    public Fabricante consultarPorId(long id) throws SQLException;
    public Fabricante consultarPorNome(String nome) throws SQLException;
    public List<Fabricante> listar() throws SQLException;
    public boolean atualizar(Fabricante fabricante) throws SQLException;
    public boolean remover(long id) throws SQLException;
}
