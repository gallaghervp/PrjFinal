package br.com.chipstore.sevlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Categoria;
import br.com.chipstore.model.Fabricante;
import br.com.chipstore.service.CategoriaService;
import br.com.chipstore.service.FabricanteService;

@WebServlet("/MontarProduto")
public class MontarProduto extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MontarProduto() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Categoria> categorias = null;
		CategoriaService cs = new CategoriaService();
		
		List<Fabricante> fabricantes = null;
		FabricanteService fs = new FabricanteService();
		
		

		try {
			categorias = cs.listar();
		
			fabricantes = fs.listar();
			
			request.setAttribute("categorias", categorias);
			request.setAttribute("fabricantes", fabricantes);
			
			RequestDispatcher rd = request.getRequestDispatcher("incluirProduto.jsp");
			rd.forward(request, response);
			
		} catch (ChipstoreException e) {
			throw new ServletException(e.getMessage(),e.getCause());
		}

	}

	

}
