package br.com.chipstore.dao;

import java.sql.SQLException;
import java.util.List;

import br.com.chipstore.model.Produto;

public interface ProdutoDao {
	public long incluir(Produto produto) throws SQLException;
    public Produto consultarPorCodigoBarras(long codigoBarras) throws SQLException;
    public Produto consultarPorId(long id) throws SQLException;
    public List<Produto> listar() throws SQLException;
    public boolean atualizar(Produto produto) throws SQLException;
    public boolean remover(long codigoBarras) throws SQLException;
    public List<Produto> listarProdutoCategoria(long codigoCategoria) throws SQLException;
    
}
