package br.com.chipstore.sevlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.service.ClienteService;
import br.com.chipstore.util.Utilitarios;

/**
 * Servlet implementation class ValidaLoginCliente
 */
@WebServlet("/ValidaLoginCliente")
public class ValidaLoginCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValidaLoginCliente() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String emailLogin = request.getParameter("emailcliente");
		String senhaLogin = request.getParameter("senhacliente");

		ClienteService cs = new ClienteService();
		try {
			String senhaCliente = cs.recuperarSenha(emailLogin);

			String hashSenhaLogin = Utilitarios.calcularHashSenha(senhaLogin);
			boolean senhaOK = Utilitarios.validarSenha(senhaCliente, hashSenhaLogin);

			if (senhaOK) {
				RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
				rd.forward(request, response);
			}

		} catch (ChipstoreException e) {
			throw new ServletException(e.getMessage(), e.getCause());
		}

	
	}

}
