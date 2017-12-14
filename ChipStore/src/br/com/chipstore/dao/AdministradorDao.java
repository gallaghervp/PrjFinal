package br.com.chipstore.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.chipstore.model.Administrador;

public interface AdministradorDao {
	public long incluir(Administrador administrador) throws SQLException;
    public Administrador consultarPorMatricula(long matricula) throws SQLException;
    public Administrador consultarPorNome(String nome) throws SQLException;
    public List<Administrador> listar() throws SQLException;
    public boolean atualizar(Administrador administrador) throws SQLException;
    public boolean remover(long matricula) throws SQLException;

}
