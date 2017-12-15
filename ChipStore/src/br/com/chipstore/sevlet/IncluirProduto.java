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
    
		Produto novoProduto;
		Categoria categoria;
		Fabricante fabricante;
		
		
		String reqcodigoBarras = "";
		long codigoBarras = 0;
		String reqnome = "";
		String reqmodelo = "";
		String reqdescricao = "";
		double preco = 0;
		
		int quantidade = 0;
		String reqdisponivel = "";
		String reqimagem = "";
		String reqCodigoFabricante = "";
		long codigoFabricante = 0;
		String reqCodigoCategoria = "";
		long codigoCategoria = 0;
		
		reqcodigoBarras = request.getParameter("codigoBarras");
		codigoBarras = Long.parseLong(reqcodigoBarras);
		
		reqnome = request.getParameter("nome").trim();
		if (reqnome.equalsIgnoreCase("outros")) {
			reqnome = "OU";
		}
		

		reqdescricao = request.getParameter("descricao").trim();
		if (reqdescricao.equalsIgnoreCase("outros")) {
			reqdescricao = "OU";
		}
		
		
		preco = Double.parseDouble(request.getParameter("preco"));
		
		
		quantidade = Integer.parseInt(request.getParameter("quantidade"));
		
		reqdisponivel = request.getParameter("disponivel").trim();
		if (reqdisponivel.equalsIgnoreCase("outros")) {
			reqdisponivel = "OU";
		}
		
		reqimagem = request.getParameter("imagem").trim();
		if (reqimagem.equalsIgnoreCase("outros")) {
			reqimagem = "OU";
		}
		
		reqCodigoFabricante = request.getParameter("fabricante");
		codigoFabricante = Long.parseLong(reqCodigoFabricante);
		
		reqCodigoCategoria = request.getParameter("categoria");
		codigoCategoria = Long.parseLong(reqCodigoCategoria);
		
		try {
			CategoriaService cs = new CategoriaService();
			categoria = cs.consultarPorCodigo(codigoCategoria);
			
			FabricanteService fs = new FabricanteService();
			fabricante = fs.consultarPorCodigo(codigoFabricante);
			
			novoProduto = new Produto();
			novoProduto.setCodigoBarras(codigoBarras);
			novoProduto.setNome(reqnome);
			novoProduto.setModelo(reqmodelo);
			novoProduto.setDescricao(reqdescricao);
			novoProduto.setPreco(preco);
			novoProduto.setQuantidade(quantidade);
			novoProduto.setDisponivel(reqdisponivel);
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	

}