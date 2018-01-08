package br.com.chipstore.sevlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Categoria;
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
    
		
		Categoria categoria;
		Fabricante fabricante;
		
		
		String codigoBarras;
		String nome;
		String modelo;
		String descricao;
		double preco;
		int quantidade;
		String imagem;
		long codigoFabricante;
		long codigoCategoria;
		
		codigoBarras = request.getParameter("codigoprodu");
		nome = request.getParameter("nomeprodu");
		modelo = request.getParameter("modeloprodu");
		descricao = request.getParameter("descricaoprodu");
		preco = Double.parseDouble(request.getParameter("precoprodu"));
		quantidade = Integer.parseInt(request.getParameter("quantidadeprodu"));
		imagem = request.getParameter("imagemprodu");
		
		codigoFabricante =  Long.parseLong(request.getParameter("fabricanteaprodu"));
		
		
		codigoCategoria = Long.parseLong(request.getParameter("categoriaprodu"));
		
		
		try {
			
			CategoriaService cs = new CategoriaService();
			categoria = cs.consultarPorCodigo(codigoCategoria);
			
			FabricanteService fs = new FabricanteService();
			fabricante = fs.consultarPorCodigo(codigoFabricante);
			
			Produto novoProduto;
			
			novoProduto = new Produto();
			novoProduto.setCodigoBarras(codigoBarras);
			novoProduto.setNome(nome);
			novoProduto.setModelo(modelo);
			novoProduto.setDescricao(descricao);
			novoProduto.setPreco(preco);
			novoProduto.setQuantidade(quantidade);
			novoProduto.setImagem(imagem);
			novoProduto.setCategoria(categoria);
			novoProduto.setFabricante(fabricante);
			
			

			ProdutoService ps = new ProdutoService();
			long idProduto = ps.incluir(novoProduto);

			RequestDispatcher rd = null;
		
			if (idProduto > 0) {
				request.setAttribute("produto", novoProduto);
				rd = request.getRequestDispatcher("/registroProduto.jsp");
			}
			rd.forward(request, response);
		
		} catch (ChipstoreException e) {
			throw new ServletException(e.getMessage(), e.getCause());
		}

	}

	

}