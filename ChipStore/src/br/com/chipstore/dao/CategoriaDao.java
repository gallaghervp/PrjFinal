package br.com.chipstore.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.chipstore.model.Categoria;

public interface CategoriaDao {
	public long incluir(Categoria categoria) throws SQLException;
    public Categoria consultarPorCodigo(long codigo) throws SQLException;
    public Categoria consultarPorNome(String nome) throws SQLException;
    public List<Categoria> listar() throws SQLException;
    public boolean atualizar(Categoria categoria) throws SQLException;
    public boolean remover(long codigo) throws SQLException;
    public boolean abc();
}
