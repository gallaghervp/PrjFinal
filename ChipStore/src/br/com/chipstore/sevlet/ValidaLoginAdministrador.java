package br.com.chipstore.sevlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.chipstore.exception.ChipstoreException;
import br.com.chipstore.model.Administrador;
import br.com.chipstore.model.Cliente;
import br.com.chipstore.service.AdministradorService;
import br.com.chipstore.service.ClienteService;
import br.com.chipstore.util.Utilitarios;

@WebServlet("/ValidaLoginAdministrador")
public class ValidaLoginAdministrador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ValidaLoginAdministrador() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String reqCpdAdmin;
		String reqSenhaAdmin;
		String mensagem;
		boolean isSenhaValida;
		
		isSenhaValida = false;
		mensagem = "Email do cliente ou Senha invalidos";
		
		reqCpdAdmin = request.getParameter("cpfadmin");
		reqSenhaAdmin = request.getParameter("senhaadmin");

		try {

			AdministradorService cs = new AdministradorService();
			Administrador administrador = cs.consultarPorCpf(reqCpdAdmin);
			
			if (reqCpdAdmin != null) {
			
				// email e senha encontrados no SGBD
				if ((null != reqSenhaAdmin) && (reqSenhaAdmin.equals("") != true)) {
					// calcula hash da senha informada no login
					String hashSenhaInformada = Utilitarios.calcularHashSenha(reqSenhaAdmin);
					isSenhaValida = Utilitarios.validarSenha(administrador.getSenha(), hashSenhaInformada);
				}
				
				if (isSenhaValida == true) {
					
					System.out.println("Login realizado para o usuario [" + administrador.getNome() + "]");
					
					HttpSession session = request.getSession();
					session.setAttribute("administrador", administrador);
					
					// configura a sessao para expirar em 30 minutos
					session.setMaxInactiveInterval( 30 * 60 );
					
					// define um cookie para o usuario logado
					Cookie administradorLogado = new Cookie("administrador", administrador.getNome());
					
					// configura o cookie para expirar em 30 minutos
					administradorLogado.setMaxAge( 30 * 60 );
					
					// adiciona cookie a resposta
					response.addCookie(administradorLogado);
					
				} else {
					request.setAttribute("mensagem", mensagem);
				}
				
			} else {
				request.setAttribute("mensagem", mensagem);
			}
					
			
			RequestDispatcher rd = request.getRequestDispatcher("MontarFabricante");
			rd.forward(request, response);

		} catch (ChipstoreException e) {
			throw new ServletException(e.getMessage(), e.getCause());
		}

	
	}

}