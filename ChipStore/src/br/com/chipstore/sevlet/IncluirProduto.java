package br.com.chipstore.sevlet;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Categoria;
import br.com.chipstore.model.Cliente;
import br.com.chipstore.model.Fabricante;
import br.com.chipstore.model.Produto;
import br.com.chipstore.service.CategoriaService;
import br.com.chipstore.service.FabricanteService;
import br.com.chipstore.service.ProdutoService;

@WebServlet("/IncluirProduto")
public class IncluirProduto extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public IncluirProduto() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int codigoBarras;
		String nome;
		String modelo;
		String descricao;
		double preco;
		int quantidade;
		String disponivel;
		String imagem;
		

		
		codigoBarras = Integer.parseInt(request.getParameter("codigoprodu"));
		nome = request.getParameter("nomeprodu");
		modelo = request.getParameter("modeloprodu");
		descricao = request.getParameter("descricaoprodu");
		preco = Double.parseDouble(request.getParameter("precoprodu"));
		quantidade = Integer.parseInt(request.getParameter("quantidadeprodu"));
		disponivel = request.getParameter("disponivel");
		imagem = request.getParameter("imagemprodu");
		
		
		
		

		
        Produto novoProduto = new Produto();
        
        
        novoProduto.setCodigoBarras(codigoBarras);
        novoProduto.setNome(nome);
        novoProduto.setModelo(modelo);
        novoProduto.setDescricao(descricao);
        novoProduto.setPreco(preco);
        novoProduto.setQuantidade(quantidade);
        novoProduto.setDisponivel(disponivel);
        novoProduto.setImagem(imagem);
        
        
        
        
		
		
		ProdutoService ps = new ProdutoService();
		
		long idGerado = 0;
		try {
			idGerado = ps.incluir(novoProduto);
		} catch (ChipstoreException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(idGerado > 0){
			
		} else{
			
		}
		List<Produto> produtos = null;
		try {
			produtos = ps.listar();
		} catch (ChipstoreException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.setAttribute("listaProduto", produtos);
		
		RequestDispatcher rd = request.getRequestDispatcher("/registroProduto.jsp");
		rd.forward(request, response);
		
	}
		

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}