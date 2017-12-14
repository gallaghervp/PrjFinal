package br.com.chipstore.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.chipstore.model.Cliente;

public interface ClienteDao {
	public long incluir(Cliente cliente) throws SQLException;
    public Cliente consultarPorCpf(long cpf) throws SQLException;
    public Cliente consultarPorNome(String nome) throws SQLException;
    public Cliente consultarPorEmail(String email) throws SQLException;
    public List<Cliente> listar() throws SQLException;
    public boolean atualizar(Cliente cliente) throws SQLException;
    public boolean remover(long id) throws SQLException;

}
