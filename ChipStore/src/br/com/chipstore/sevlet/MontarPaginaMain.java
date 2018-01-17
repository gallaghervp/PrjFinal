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
import javax.websocket.Session;

import org.apache.catalina.connector.Request;

import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Categoria;
import br.com.chipstore.model.Fabricante;
import br.com.chipstore.model.Produto;
import br.com.chipstore.service.CategoriaService;
import br.com.chipstore.service.FabricanteService;
import br.com.chipstore.service.ProdutoService;

@WebServlet("/MontarPaginaMain")
public class MontarPaginaMain extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MontarPaginaMain() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Produto> produtos = null;
		
		String reqCodigoCategoria = request.getParameter("codigoCategoria");
		
		
		try {
			
			ProdutoService ps = new ProdutoService();
			
			CategoriaService cs = new CategoriaService();
			
			
			
			List<Categoria> categorias = cs.listar();
			
			HttpSession session = (HttpSession) request.getSession();
			
			session.setAttribute("categorias", categorias);
			
			request.setAttribute("produtos", produtos);
			
			RequestDispatcher rd = request.getRequestDispatcher("/main.jsp");
			rd.forward(request, response);
			
		} catch (ChipstoreException e) {
			throw new ServletException(e.getMessage(),e.getCause());
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
