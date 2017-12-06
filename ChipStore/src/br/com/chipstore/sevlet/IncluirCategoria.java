package br.com.chipstore.sevlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.chipstore.exception.ChipstoreExpection;
import br.com.chipstore.model.Categoria;
import br.com.chipstore.model.Fabricante;
import br.com.chipstore.service.CategoriaService;
import br.com.chipstore.service.FabricanteService;

/**
 * Servlet implementation class IncluirCategoria
 */
@WebServlet("/IncluirCategoria")
public class IncluirCategoria extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IncluirCategoria() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter saida;
		String nome;
		
		try {
			nome = request.getParameter("nome");
			
			Categoria novaCategoria = new Categoria();
			
			novaCategoria.setNome(nome);
			
			
			CategoriaService cs = new CategoriaService();
			
			long codigoGerado = cs.incluir(novaCategoria);
			
			if(codigoGerado > 0){
				
			} else {
				
			}
			//request.setAttribute("mensagem", mensagem);
			
			//RequestDispatcher rd = request.getRequestDispatcher();
			//rd.forward(request, response);
		
		} catch (ChipstoreExpection e) {
			throw new ServletException(e.getMessage(), e.getCause());
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
