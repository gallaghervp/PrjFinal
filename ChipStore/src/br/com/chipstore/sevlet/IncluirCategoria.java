package br.com.chipstore.sevlet;

import java.io.IOException;
import java.io.PrintWriter;
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

@WebServlet("/IncluirCategoria")
public class IncluirCategoria extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public IncluirCategoria() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String nome;

		nome = request.getParameter("nomecate");

		Categoria novaCategoria = new Categoria();

		novaCategoria.setNome(nome);

		CategoriaService cs = new CategoriaService();

		try {
			long codigoGerado = cs.incluir(novaCategoria);

			List<Categoria> categorias = cs.listar();
			request.setAttribute("listaCategoria", categorias);

			RequestDispatcher rd = request.getRequestDispatcher("/registroCategoria.jsp");
			rd.forward(request, response);

		} catch (ChipstoreException e) {
			throw new ServletException(e.getMessage(), e.getCause());
		}

	}

	
}
