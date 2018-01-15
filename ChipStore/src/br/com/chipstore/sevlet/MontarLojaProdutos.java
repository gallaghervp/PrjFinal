package br.com.chipstore.sevlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Categoria;
import br.com.chipstore.model.Fabricante;
import br.com.chipstore.model.Produto;
import br.com.chipstore.service.CategoriaService;
import br.com.chipstore.service.FabricanteService;
import br.com.chipstore.service.ProdutoService;

@WebServlet("/MontarLojaProduto")
public class MontarLojaProdutos extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MontarLojaProdutos() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			List<Produto> produtos = null;
			Categoria categoria = new Categoria();
			
			String reqCodigoCategoria = request.getParameter("codigoCategoria");
			long codigoCategoria = Long.parseLong(reqCodigoCategoria);
			
			try {
				
				ProdutoService ps = new ProdutoService();
				
				produtos = ps.listarProdutoCategoria(codigoCategoria);
				
				request.setAttribute("produtos", produtos);
				
				CategoriaService cs = new CategoriaService();
				
				categoria = cs.consultarPorCodigo(codigoCategoria);
				
				request.setAttribute("categoria", categoria);
				
				RequestDispatcher rd = request.getRequestDispatcher("/lojaProdutos.jsp");
				rd.forward(request, response);
				
			} catch (ChipstoreException e) {
				throw new ServletException(e.getMessage(),e.getCause());
			}

		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
