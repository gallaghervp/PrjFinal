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
import br.com.chipstore.service.CategoriaService;

/**
 * Servlet implementation class ControleCategoria
 */
@WebServlet("/ControleCategoria")
public class ControleCategoria extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControleCategoria() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Categoria categoria = new Categoria();
		String acao = request.getParameter("acao");
		CategoriaService service = new CategoriaService();
		if(acao != null && acao.equals("ex")){
			String codigo= request.getParameter("codigo");
			categoria.setCodigo(Long.parseLong(codigo));
			try {
				service.remover(categoria);
				
				RequestDispatcher rd = request.getRequestDispatcher("registroCategoria.jsp");
				rd.forward(request, response);
				
			} catch (ChipstoreException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
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
