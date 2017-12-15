package br.com.chipstore.sevlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.service.AdministradorService;
import br.com.chipstore.util.Utilitarios;

/**
 * Servlet implementation class ValidaLoginAdministrador
 */
@WebServlet("/ValidaLoginAdministrador")
public class ValidaLoginAdministrador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ValidaLoginAdministrador() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String cpfLogin = request.getParameter("cpfadmin");
		String senhaLogin = request.getParameter("senhaadmin");

		AdministradorService as = new AdministradorService();
		try {
			String senhaAdmin = as.recuperarSenha(cpfLogin);

			String hashSenhaLogin = Utilitarios.calcularHashSenha(senhaLogin);
			boolean senhaOK = Utilitarios.validarSenha(senhaAdmin, hashSenhaLogin);

			if (senhaOK) {
				RequestDispatcher rd = request.getRequestDispatcher("/registroCategoria.jsp");
				rd.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("/registroCategoria.jsp");
				rd.forward(request, response);
			}

		} catch (ChipstoreException e) {
			throw new ServletException(e.getMessage(), e.getCause());
		}

	}

}
