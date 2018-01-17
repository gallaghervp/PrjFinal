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
import br.com.chipstore.model.Cliente;
import br.com.chipstore.service.ClienteService;
import br.com.chipstore.util.Utilitarios;

@WebServlet("/ValidaLoginCliente")
public class ValidaLoginCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ValidaLoginCliente() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String reqEmailCliente;
		String reqSenhaCliente;
		String mensagem;
		boolean isSenhaValida;
		
		isSenhaValida = false;
		mensagem = "Email do cliente ou Senha invalidos";
		
		 reqEmailCliente = request.getParameter("emailcliente");
		 reqSenhaCliente = request.getParameter("senhacliente");

		try {

			ClienteService cs = new ClienteService();
			Cliente cliente = cs.consultarPorEmail(reqEmailCliente);
			
			if (reqEmailCliente != null) {
			
				// email e senha encontrados no SGBD
				if ((null != reqSenhaCliente) && (reqSenhaCliente.equals("") != true)) {
					// calcula hash da senha informada no login
					String hashSenhaInformada = Utilitarios.calcularHashSenha(reqSenhaCliente);
					isSenhaValida = Utilitarios.validarSenha(cliente.getSenha(), hashSenhaInformada);
				}
				
				if (isSenhaValida == true) {
					
					System.out.println("Login realizado para o usuario [" + cliente.getNome() + "]");
					
					HttpSession session = request.getSession();
					session.setAttribute("cliente", cliente);
					
					// configura a sessao para expirar em 30 minutos
					session.setMaxInactiveInterval( 30 * 60 );
					
					// define um cookie para o usuario logado
					Cookie clienteLogado = new Cookie("cliente", cliente.getNome());
					
					// configura o cookie para expirar em 30 minutos
					clienteLogado.setMaxAge( 30 * 60 );
					
					// adiciona cookie a resposta
					response.addCookie(clienteLogado);
					
				} else {
					request.setAttribute("mensagem", mensagem);
				}
				
			} else {
				request.setAttribute("mensagem", mensagem);
			}
					
			
			RequestDispatcher rd = request.getRequestDispatcher("index.html");
			rd.forward(request, response);

		} catch (ChipstoreException e) {
			throw new ServletException(e.getMessage(), e.getCause());
		}

	
	}

}
